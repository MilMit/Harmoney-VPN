package io.harmoney.client.firefox.data

import okhttp3.Cookie
import okhttp3.CookieJar
import okhttp3.HttpUrl
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.FilterOutputStream
import java.io.OutputStream
import java.net.InetAddress
import java.net.InetSocketAddress
import java.net.Socket
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.TimeUnit
import javax.net.SocketFactory

// Match FoxyVPN's native Android client identity. `sys:linux` is not the
// platform token Mozilla's Firefox VPN control plane expects from Android.
const val MOZILLA_VPN_USER_AGENT = "MozillaVPN/2.35.0 (sys:android 14; iap:true)"

fun Request.Builder.applyMozillaVpnHeaders(): Request.Builder {
    header("User-Agent", MOZILLA_VPN_USER_AGENT)
    header("Accept", "application/json")
    return this
}

class SimpleCookieJar : CookieJar {
    private val byDomain = ConcurrentHashMap<String, MutableList<Cookie>>()

    override fun saveFromResponse(url: HttpUrl, cookies: List<Cookie>) {
        for (cookie in cookies) {
            val bucket = byDomain.getOrPut(cookie.domain) { mutableListOf() }
            synchronized(bucket) {
                bucket.removeAll { it.name == cookie.name }
                bucket.add(cookie)
            }
        }
    }

    override fun loadForRequest(url: HttpUrl): List<Cookie> {
        val now = System.currentTimeMillis()
        val result = mutableListOf<Cookie>()
        for ((domain, cookies) in byDomain) {
            if (url.host == domain || url.host.endsWith(".$domain")) {
                synchronized(cookies) {
                    result.addAll(cookies.filter { it.expiresAt > now })
                }
            }
        }
        return result
    }

    fun set(name: String, value: String, domain: String) {
        val bucket = byDomain.getOrPut(domain) { mutableListOf() }
        synchronized(bucket) {
            bucket.removeAll { it.name == name }
            bucket.add(
                Cookie.Builder()
                    .name(name)
                    .value(value)
                    .domain(domain)
                    .path("/")
                    .expiresAt(Long.MAX_VALUE)
                    .build(),
            )
        }
    }

    fun snapshotAll(): List<Cookie> = byDomain.values.flatten()
}

/**
 * Mirrors FoxyVPN's FIRST_BYTE TLS fragmentation for Firefox control-plane
 * requests. Some networks reject the FxA API ClientHello while serving the
 * ordinary accounts web page, which otherwise leaves the login flow with an
 * empty HTTP 406 and no challenge body to solve.
 */
private class SplitClientHelloSocket : Socket() {
    private var splitDone = false

    override fun getOutputStream(): OutputStream {
        val socketOutput = super.getOutputStream()
        return object : FilterOutputStream(socketOutput) {
            override fun write(bytes: ByteArray, offset: Int, length: Int) {
                if (splitDone || !looksLikeClientHello(bytes, offset, length)) {
                    socketOutput.write(bytes, offset, length)
                    return
                }

                splitDone = true
                tcpNoDelay = true
                socketOutput.write(bytes, offset, 1)
                socketOutput.flush()
                socketOutput.write(bytes, offset + 1, length - 1)
                socketOutput.flush()
            }
        }
    }

    private fun looksLikeClientHello(bytes: ByteArray, offset: Int, length: Int): Boolean =
        length >= 6 && offset + length <= bytes.size &&
            bytes[offset] == 0x16.toByte() &&
            bytes[offset + 1] == 0x03.toByte() &&
            bytes[offset + 5] == 0x01.toByte()
}

private class ProtectingSocketFactory : SocketFactory() {
    private fun protect(socket: Socket): Socket {
        if (ControlPlaneHttp.socketProtector?.invoke(socket) == false) {
            socket.close()
            throw java.io.IOException("Could not bind a protected physical-network socket")
        }
        return socket
    }

    override fun createSocket(): Socket = protect(SplitClientHelloSocket())

    override fun createSocket(host: String, port: Int): Socket =
        protect(SplitClientHelloSocket()).apply { connect(InetSocketAddress(host, port)) }

    override fun createSocket(host: String, port: Int, localAddr: InetAddress, localPort: Int): Socket =
        protect(SplitClientHelloSocket()).apply {
            bind(InetSocketAddress(localAddr, localPort))
            connect(InetSocketAddress(host, port))
        }

    override fun createSocket(host: InetAddress, port: Int): Socket =
        protect(SplitClientHelloSocket()).apply { connect(InetSocketAddress(host, port)) }

    override fun createSocket(host: InetAddress, port: Int, localAddr: InetAddress, localPort: Int): Socket =
        protect(SplitClientHelloSocket()).apply {
            bind(InetSocketAddress(localAddr, localPort))
            connect(InetSocketAddress(host, port))
        }
}

object ControlPlaneHttp {
    val cookieJar = SimpleCookieJar()

    @Volatile
    var socketProtector: ((Socket) -> Boolean)? = null

    val client: OkHttpClient by lazy {
        OkHttpClient.Builder()
            .cookieJar(cookieJar)
            .socketFactory(ProtectingSocketFactory())
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .callTimeout(30, TimeUnit.SECONDS)
            .build()
    }
}
