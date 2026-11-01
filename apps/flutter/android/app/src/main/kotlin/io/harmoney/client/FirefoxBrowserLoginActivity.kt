package io.harmoney.client

import android.annotation.SuppressLint
import android.app.Activity
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import io.harmoney.client.firefox.data.AppLogger
import io.harmoney.client.firefox.data.FxaAuthRepository
import io.harmoney.client.firefox.data.TokenStore
import androidx.core.view.ViewCompat
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.lang.ref.WeakReference

private const val LOGIN_URL =
    "https://accounts.firefox.com/?context=fx_desktop_v3&service=sync&action=email"
private const val LOGIN_TAG = "FirefoxBrowserLogin"
private val SESSION_TOKEN_HEX = Regex("^[0-9a-f]{64}$")
private const val FIREFOX_ANDROID_UA =
    "Mozilla/5.0 (Android 14; Mobile; rv:132.0) Gecko/132.0 Firefox/132.0"

private val WEBCHANNEL_HOOK_JS = """
(function() {
  if (window.__milmitFxaHooked) return;
  window.__milmitFxaHooked = true;
  var forward = function (detail) {
    try {
      var host = window.location.hostname.toLowerCase();
      if (host !== 'accounts.firefox.com' && !host.endsWith('.firefox.com')) return;
      var payload = typeof detail === 'string' ? detail : JSON.stringify(detail);
      milmitFxa.onMessage(payload, window.location.href);
    } catch (e) {}
  };
  window.addEventListener('WebChannelMessageToChrome', function(e) { forward(e.detail); });
  document.addEventListener('WebChannelMessageToChrome', function(e) { forward(e.detail); });
  window.__milmitFxaReply = function(channelId, messageId, command, dataJson) {
    try {
      var data = typeof dataJson === 'string' ? JSON.parse(dataJson) : dataJson;
      var envelope = {id: channelId, message: {messageId: messageId, command: command, data: data}};
      var event = new CustomEvent('WebChannelMessageToContent', {detail: envelope});
      window.dispatchEvent(event); document.dispatchEvent(event);
      var textEvent = new CustomEvent('WebChannelMessageToContent', {detail: JSON.stringify(envelope)});
      window.dispatchEvent(textEvent); document.dispatchEvent(textEvent);
    } catch (e) {}
  };
  var verifyUrl = function(value) {
    var u = String(value || '').toLowerCase();
    return u.indexOf('/verify') >= 0 || u.indexOf('/totp') >= 0 || u.indexOf('/session/verify') >= 0;
  };
  var successUrl = function(value) {
    var u = String(value || '').toLowerCase();
    return u.indexOf('/signin/confirmed') >= 0 || u.indexOf('connect_another_device') >= 0 ||
      u.indexOf('/pair') >= 0 || u.indexOf('/settings') >= 0 || u.indexOf('/complete') >= 0 ||
      u.indexOf('success') >= 0;
  };
  var verified = function() { try { milmitFxa.onSessionVerified(); } catch (e) {} };
  if (window.fetch) {
    var originalFetch = window.fetch;
    window.fetch = function() {
      var url = (arguments[0] && arguments[0].url) || arguments[0] || '';
      return originalFetch.apply(this, arguments).then(function(response) {
        if (response && response.ok && verifyUrl(url)) verified();
        return response;
      });
    };
  }
  if (window.XMLHttpRequest) {
    var originalOpen = XMLHttpRequest.prototype.open;
    var originalSend = XMLHttpRequest.prototype.send;
    XMLHttpRequest.prototype.open = function(method, url) {
      this.__milmitUrl = url; return originalOpen.apply(this, arguments);
    };
    XMLHttpRequest.prototype.send = function() {
      this.addEventListener('load', function() {
        if (this.status >= 200 && this.status < 300 && verifyUrl(this.__milmitUrl)) verified();
      });
      return originalSend.apply(this, arguments);
    };
  }
  var checkNavigation = function() { if (successUrl(window.location.href)) verified(); };
  var push = history.pushState;
  if (push) history.pushState = function() { var r = push.apply(this, arguments); checkNavigation(); return r; };
  var replace = history.replaceState;
  if (replace) history.replaceState = function() { var r = replace.apply(this, arguments); checkNavigation(); return r; };
  window.addEventListener('popstate', checkNavigation);
  window.addEventListener('hashchange', checkNavigation);

  // Android/WebView autofill can populate the visible email after page load
  // without firing the input event that Firefox Accounts needs. Keep syncing
  // after focus/autofill events as well as during the initial hydration window.
  var emailSyncAttempts = 0;
  var lastReportedState = '';
  var emailSyncTimer = null;
  var syncEmailState = function() {
    var field = document.querySelector(
      'input[type="email"], input[name="email"], input[autocomplete="email"], input[autocomplete="username"]'
    );
    var button = document.querySelector('button[type="submit"]') ||
      Array.prototype.find.call(document.querySelectorAll('button'), function(b) {
        return /sign up or sign in/i.test(b.innerText || b.textContent || '');
      });
    if (field && field.value && field.value.indexOf('@') > 0 && button && button.disabled &&
        field.__milmitSyncedValue !== field.value) {
      field.__milmitSyncedValue = field.value;
      var valueSetter = Object.getOwnPropertyDescriptor(HTMLInputElement.prototype, 'value').set;
      var currentValue = field.value;
      valueSetter.call(field, '');
      field.dispatchEvent(new Event('input', {bubbles: true}));
      valueSetter.call(field, currentValue);
      field.dispatchEvent(new Event('input', {bubbles: true}));
      field.dispatchEvent(new Event('change', {bubbles: true}));
    }
    var state = [!!field, !!(field && field.validity && field.validity.valid), !!button,
      !!(button && button.disabled), field && field.validationMessage || ''].join('|');
    if (state !== lastReportedState) {
      lastReportedState = state;
      try { milmitFxa.onEmailFormState(state); } catch (e) {}
    }
    if (button && !button.disabled && emailSyncTimer) {
      clearInterval(emailSyncTimer);
      emailSyncTimer = null;
    }
  };
  var startEmailSync = function() {
    syncEmailState();
    emailSyncAttempts = 0;
    if (emailSyncTimer) clearInterval(emailSyncTimer);
    emailSyncTimer = setInterval(function() {
      emailSyncAttempts++;
      syncEmailState();
      if (emailSyncAttempts >= 120 || (document.hidden && emailSyncAttempts >= 12)) {
        clearInterval(emailSyncTimer);
        emailSyncTimer = null;
      }
    }, 500);
  };
  document.addEventListener('focusin', startEmailSync, true);
  document.addEventListener('input', startEmailSync, true);
  document.addEventListener('change', startEmailSync, true);
  document.addEventListener('visibilitychange', function() {
    if (!document.hidden) startEmailSync();
  });
  startEmailSync();
})();
""".trimIndent()

class FirefoxBrowserLoginActivity : Activity() {
    private val activityScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private lateinit var webView: WebView
    private lateinit var progress: ProgressBar
    private lateinit var status: TextView
    private lateinit var bridge: FirefoxWebChannelBridge
    private var completing = false

    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        WindowCompat.setDecorFitsSystemWindows(window, false)
        window.statusBarColor = Color.rgb(11, 33, 42)
        window.navigationBarColor = Color.rgb(11, 33, 42)

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.rgb(11, 33, 42))
        }
        ViewCompat.setOnApplyWindowInsetsListener(root) { view, windowInsets ->
            val safeArea = windowInsets.getInsets(
                WindowInsetsCompat.Type.systemBars() or WindowInsetsCompat.Type.displayCutout(),
            )
            view.setPadding(safeArea.left, safeArea.top, safeArea.right, safeArea.bottom)
            windowInsets
        }
        val toolbar = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(12), dp(8), dp(12), dp(8))
        }
        val title = TextView(this).apply {
            text = "Sign in with Firefox"
            textSize = 18f
            setTextColor(Color.WHITE)
            layoutParams = LinearLayout.LayoutParams(0, dp(48), 1f)
            gravity = Gravity.CENTER_VERTICAL
        }
        val close = Button(this).apply {
            text = "Cancel"
            setOnClickListener { cancelLogin() }
        }
        toolbar.addView(title)
        toolbar.addView(close)
        root.addView(toolbar)

        progress = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            visibility = ProgressBar.VISIBLE
        }
        root.addView(progress, LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(3)))

        status = TextView(this).apply {
            text = "Sign in with your Firefox email and password. Type the email into the Firefox page; autofill may leave Continue disabled. Google/Apple sign-in is not supported here."
            textSize = 13f
            setTextColor(Color.LTGRAY)
            setPadding(dp(16), dp(10), dp(16), dp(10))
        }
        root.addView(status)

        webView = WebView(this).apply {
            // FxA's React form can display an Android-autofilled email without
            // receiving the trusted input events it requires to enable Continue.
            importantForAutofill = View.IMPORTANT_FOR_AUTOFILL_NO_EXCLUDE_DESCENDANTS
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.loadWithOverviewMode = true
            settings.useWideViewPort = true
            settings.allowFileAccess = false
            settings.allowContentAccess = false
            settings.userAgentString = FIREFOX_ANDROID_UA
            CookieManager.getInstance().setAcceptCookie(true)
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true)
            bridge = FirefoxWebChannelBridge(this, ::onSessionToken, ::onEmailFormState)
            addJavascriptInterface(bridge, "milmitFxa")
            webChromeClient = object : WebChromeClient() {
                override fun onProgressChanged(view: WebView?, newProgress: Int) {
                    this@FirefoxBrowserLoginActivity.progress.progress = newProgress
                    this@FirefoxBrowserLoginActivity.progress.visibility =
                        if (newProgress >= 100) ProgressBar.GONE else ProgressBar.VISIBLE
                }
            }
            webViewClient = object : WebViewClient() {
                override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                    val uri = request.url
                    if (uri.scheme == "https" && uri.host.orEmpty().isFirefoxAccountHost()) return false
                    if (uri.scheme == "https" || uri.scheme == "http") {
                        runCatching { startActivity(android.content.Intent(android.content.Intent.ACTION_VIEW, uri)) }
                    }
                    return true
                }

                override fun onPageStarted(view: WebView, url: String?, favicon: android.graphics.Bitmap?) {
                    super.onPageStarted(view, url, favicon)
                    if (isSuccessUrl(url)) bridge.onSessionVerified()
                    view.evaluateJavascript(WEBCHANNEL_HOOK_JS, null)
                }

                override fun onPageFinished(view: WebView, url: String?) {
                    super.onPageFinished(view, url)
                    view.evaluateJavascript(WEBCHANNEL_HOOK_JS, null)
                    if (isSuccessUrl(url)) bridge.onSessionVerified()
                }
            }
        }
        root.addView(webView, LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f))
        setContentView(root)
        ViewCompat.requestApplyInsets(root)
        webView.loadUrl(LOGIN_URL)
    }

    private fun onSessionToken(token: String) {
        if (completing || isFinishing) return
        completing = true
        status.text = "Finishing Firefox sign-in…"
        progress.visibility = ProgressBar.VISIBLE
        activityScope.launch {
            runCatching {
                withContext(Dispatchers.IO) {
                    FxaAuthRepository(TokenStore(applicationContext)).completeBrowserLogin(token)
                }
            }.onSuccess {
                setResult(RESULT_OK)
                finish()
            }.onFailure { error ->
                completing = false
                status.text = error.message ?: "Firefox sign-in could not be completed."
                AppLogger.w(LOGIN_TAG, "could not finish browser sign-in", error)
            }
        }
    }

    private fun onEmailFormState(state: String) {
        val parts = state.split('|')
        val hasField = parts.getOrNull(0) == "true"
        val valid = parts.getOrNull(1) == "true"
        val hasButton = parts.getOrNull(2) == "true"
        val disabled = parts.getOrNull(3) == "true"
        if (!hasField || !hasButton || isFinishing || !::status.isInitialized) return
        status.text = when {
            !valid -> "Type a valid Firefox email address directly into the Firefox page."
            disabled -> "Firefox has not enabled Continue. Type the email directly into the field; do not use autofill."
            else -> "Email accepted. Continue on the Firefox page; use your Firefox password and email-code verification if requested."
        }
    }

    override fun onBackPressed() {
        if (!completing && webView.canGoBack()) webView.goBack() else if (!completing) cancelLogin()
    }

    private fun cancelLogin() {
        if (completing) return
        setResult(RESULT_CANCELED)
        finish()
    }

    override fun onDestroy() {
        if (::webView.isInitialized) {
            webView.stopLoading()
            webView.removeJavascriptInterface("milmitFxa")
            webView.destroy()
        }
        activityScope.cancel()
        super.onDestroy()
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()

    private fun isSuccessUrl(url: String?): Boolean {
        val value = url?.lowercase().orEmpty()
        return value.contains("/signin/confirmed") || value.contains("connect_another_device") ||
            value.contains("/pair") || value.contains("/settings") || value.contains("/complete") ||
            value.contains("success")
    }
}

private class FirefoxWebChannelBridge(
    webView: WebView,
    private val onToken: (String) -> Unit,
    private val onEmailState: (String) -> Unit,
) {
    private val webViewRef = WeakReference(webView)
    @Volatile private var pendingSessionToken: String? = null

    @JavascriptInterface
    fun onMessage(payload: String, suppliedUrl: String) {
        val actualUrl = runCatching { Uri.parse(webViewRef.get()?.url).host?.lowercase() }.getOrNull()
        val suppliedHost = runCatching { Uri.parse(suppliedUrl).host?.lowercase() }.getOrNull()
        if (actualUrl != "accounts.firefox.com" && actualUrl?.endsWith(".firefox.com") != true) return
        if (suppliedHost != actualUrl) return

        val envelope = runCatching { JSONObject(payload) }.getOrNull() ?: return
        val message = envelope.optJSONObject("message") ?: return
        val command = message.optString("command")
        val data = message.optJSONObject("data") ?: JSONObject()
        val messageId = message.optString("messageId")
        when (command) {
            "fxaccounts:fxa_status" -> reply(messageId, command, "{\"capabilities\":{},\"signedInUser\":null}")
            "fxaccounts:can_link_account" -> reply(messageId, command, "{\"ok\":true}")
            "fxaccounts:login", "fxaccounts:oauth_login" -> {
                val token = data.optString("sessionToken", "").trim()
                    .ifBlank { data.optString("token", "").trim() }.lowercase()
                if (SESSION_TOKEN_HEX.matches(token)) {
                    pendingSessionToken = token
                    if (!data.has("verified") || data.optBoolean("verified", true)) notifyToken(token)
                }
                if (messageId.isNotBlank()) reply(messageId, command, "{\"ok\":true}")
            }
            else -> if (messageId.isNotBlank()) reply(messageId, command, "{\"ok\":true}")
        }
    }

    @JavascriptInterface
    fun onSessionVerified() {
        pendingSessionToken?.let(::notifyToken)
    }

    @JavascriptInterface
    fun onEmailFormState(state: String) {
        val view = webViewRef.get() ?: return
        view.post { onEmailState(state) }
    }

    private fun notifyToken(token: String) {
        if (!SESSION_TOKEN_HEX.matches(token)) return
        webViewRef.get()?.post { onToken(token) } ?: onToken(token)
    }

    private fun reply(messageId: String, command: String, data: String) {
        val webView = webViewRef.get() ?: return
        val script = "window.__milmitFxaReply && window.__milmitFxaReply(" +
            "${JSONObject.quote("account_updates")}, ${JSONObject.quote(messageId)}, " +
            "${JSONObject.quote(command)}, ${JSONObject.quote(data)});"
        webView.post { runCatching { webView.evaluateJavascript(script, null) } }
    }
}

private fun String.isFirefoxAccountHost(): Boolean =
    this == "accounts.firefox.com" || endsWith(".firefox.com")
