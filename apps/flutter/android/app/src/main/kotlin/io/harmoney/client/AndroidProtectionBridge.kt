package io.harmoney.client

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.provider.Settings
import java.net.Inet4Address
import java.net.InetAddress
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.harmoney.client.firefox.data.SettingsStore

class AndroidProtectionBridge(private val context: Context) {
    private val prefs = context.getSharedPreferences("android_protection", Context.MODE_PRIVATE)

    fun handle(call: MethodCall, result: MethodChannel.Result): Boolean {
        when (call.method) {
            "protectionState" -> result.success(state())
            "setDnsProtection" -> {
                val enabled = call.argument<Boolean>("enabled") == true
                prefs.edit().putBoolean("dns_protection", enabled).apply()
                SettingsStore(context).customDnsEnabled = enabled
                result.success(state())
            }
            "setIpv6Protection" -> {
                prefs.edit().putBoolean("ipv6_protection", call.argument<Boolean>("enabled") == true).apply()
                result.success(state())
            }
            "getSplitCidrBypass" -> result.success(splitCidrState())
            "setSplitCidrBypass" -> {
                try {
                    val enabled = call.argument<Boolean>("enabled") == true
                    val cidrs = call.argument<List<String>>("cidrs") ?: emptyList()
                    val normalized = cidrs.map(::normalizeCidr).toSet()
                    prefs.edit()
                        .putBoolean("split_cidr_enabled", enabled)
                        .putStringSet("split_bypass_cidrs", normalized)
                        .apply()
                    result.success(splitCidrState())
                } catch (e: Exception) {
                    result.error("SPLIT_CIDR_INVALID", e.message, null)
                }
            }
            "openVpnSettings" -> {
                context.startActivity(Intent(Settings.ACTION_VPN_SETTINGS).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                result.success(null)
            }
            "listInstalledApps" -> {
                try {
                    val pm = context.packageManager
                    val intent = Intent(Intent.ACTION_MAIN, null).apply {
                        addCategory(Intent.CATEGORY_LAUNCHER)
                    }
                    val resolveInfos = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                        pm.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(0))
                    } else {
                        @Suppress("DEPRECATION")
                        pm.queryIntentActivities(intent, 0)
                    }
                    val packages = resolveInfos
                        .map { it.activityInfo.packageName }
                        .filter { it != context.packageName }
                        .distinct()
                        .sorted()
                    result.success(packages)
                } catch (e: Exception) {
                    result.error("APP_LIST_FAILED", e.message, null)
                }
            }
            "setAppSplitTunneling" -> {
                try {
                    val disallowed = call.argument<List<String>>("disallowedPackages") ?: emptyList()
                    val allowed = call.argument<List<String>>("allowedPackages") ?: emptyList()
                    SettingsStore(context).excludedApps = disallowed.toSet()
                    prefs.edit()
                        .putStringSet("disallowed_packages", disallowed.toSet())
                        .putBoolean("split_tunneling", disallowed.isNotEmpty())
                        .apply()
                    result.success(null)
                } catch (e: Exception) {
                    result.error("SPLIT_FAILED", e.message, null)
                }
            }
            else -> return false
        }
        return true
    }

    private fun state(): Map<String, Any?> {
        val alwaysOnPackage = runCatching {
            Settings.Secure.getString(context.contentResolver, "always_on_vpn_app")
        }.getOrNull()
        val lockdown = runCatching {
            Settings.Secure.getInt(context.contentResolver, "always_on_vpn_lockdown", 0) == 1
        }.getOrDefault(false)
        val excluded = SettingsStore(context).excludedApps
        val cidrBypassEnabled = prefs.getBoolean("split_cidr_enabled", false)
        return mapOf(
            "dns_protection" to prefs.getBoolean("dns_protection", true),
            "ipv6_protection" to prefs.getBoolean("ipv6_protection", true),
            "always_on" to (alwaysOnPackage == context.packageName),
            "lockdown" to (alwaysOnPackage == context.packageName && lockdown),
            "vpn_package" to alwaysOnPackage,
            "firefox_dns" to SettingsStore(context).effectiveCustomDnsServer,
            "requires_reconnect" to true,
            "split_tunneling" to excluded.isNotEmpty(),
            "split_enabled" to (excluded.isNotEmpty() || cidrBypassEnabled),
            "disallowed_packages" to excluded.toList(),
            "split_cidr_enabled" to prefs.getBoolean("split_cidr_enabled", false),
            "split_cidrs" to prefs.getStringSet("split_bypass_cidrs", emptySet())?.toList().orEmpty(),
        )
    }

    private fun splitCidrState(): Map<String, Any?> = mapOf(
        "enabled" to prefs.getBoolean("split_cidr_enabled", false),
        "cidrs" to prefs.getStringSet("split_bypass_cidrs", emptySet())?.toList().orEmpty().sorted(),
        "requires_reconnect" to true,
    )

    private fun normalizeCidr(value: String): String {
        val parts = value.trim().split('/')
        require(parts.size == 2) { "Enter a network in CIDR notation, such as 192.168.1.0/24." }
        val rawAddress = parts[0]
        require(!rawAddress.contains('%')) { "Scoped IPv6 addresses are not supported." }
        require(rawAddress.contains(':') || rawAddress.matches(Regex("[0-9.]+"))) {
            "Only IPv4 and IPv6 addresses are accepted."
        }
        val address = InetAddress.getByName(rawAddress)
        val prefix = parts[1].toIntOrNull()
            ?: throw IllegalArgumentException("CIDR prefix must be a number.")
        val maxPrefix = if (address is Inet4Address) 32 else 128
        require(prefix in 1..maxPrefix) { "CIDR prefix must be between 1 and $maxPrefix." }
        return "${address.hostAddress}/$prefix"
    }
}
