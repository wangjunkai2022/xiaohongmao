package com.alipay.sdk.auth;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.alipay.sdk.authjs.a;
import com.alipay.sdk.util.l;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
/* loaded from: classes.dex */
public class AuthActivity extends Activity {

    /* renamed from: h  reason: collision with root package name */
    static final String f6805h = "params";

    /* renamed from: i  reason: collision with root package name */
    static final String f6806i = "redirectUri";

    /* renamed from: a  reason: collision with root package name */
    private WebView f6807a;

    /* renamed from: b  reason: collision with root package name */
    private String f6808b;

    /* renamed from: c  reason: collision with root package name */
    private com.alipay.sdk.widget.a f6809c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f6810d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6811e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6812f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f6813g = new f(this);

    /* loaded from: classes.dex */
    private class a extends WebChromeClient {
        private a() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String message = consoleMessage.message();
            if (TextUtils.isEmpty(message)) {
                return super.onConsoleMessage(consoleMessage);
            }
            String replaceFirst = message.startsWith("h5container.message: ") ? message.replaceFirst("h5container.message: ", "") : null;
            if (TextUtils.isEmpty(replaceFirst)) {
                return super.onConsoleMessage(consoleMessage);
            }
            AuthActivity.i(AuthActivity.this, replaceFirst);
            return super.onConsoleMessage(consoleMessage);
        }

        /* synthetic */ a(AuthActivity authActivity, byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            AuthActivity.p(AuthActivity.this);
            AuthActivity.this.f6810d.removeCallbacks(AuthActivity.this.f6813g);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AuthActivity.m(AuthActivity.this);
            AuthActivity.this.f6810d.postDelayed(AuthActivity.this.f6813g, 30000L);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i4, String str, String str2) {
            AuthActivity.this.f6812f = true;
            super.onReceivedError(webView, i4, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (AuthActivity.this.f6811e) {
                sslErrorHandler.proceed();
                AuthActivity.this.f6811e = false;
                return;
            }
            AuthActivity.this.runOnUiThread(new g(this, sslErrorHandler));
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!str.toLowerCase().startsWith(m.a.f86909h.toLowerCase()) && !str.toLowerCase().startsWith(m.a.f86910i.toLowerCase())) {
                if (AuthActivity.e(AuthActivity.this, str)) {
                    webView.stopLoading();
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
            try {
                l.a c10 = l.c(AuthActivity.this, l.f6973b);
                if (c10 != null) {
                    String f10 = l.f(c10.f6975a);
                    if (f10 != null && !TextUtils.equals(f10, m.a.f86908g)) {
                        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6780l, com.alipay.sdk.app.statistic.c.f6787s, f10);
                        return true;
                    }
                    if (str.startsWith("intent://platformapi/startapp")) {
                        str = str.replaceFirst(m.a.f86910i, m.a.f86909h);
                    }
                    AuthActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                }
            } catch (Throwable unused) {
            }
            return true;
        }

        /* synthetic */ b(AuthActivity authActivity, byte b10) {
            this();
        }
    }

    private void a() {
        try {
            if (this.f6809c == null) {
                this.f6809c = new com.alipay.sdk.widget.a(this, com.alipay.sdk.widget.a.f6979d);
            }
            this.f6809c.c();
        } catch (Exception unused) {
            this.f6809c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(AuthActivity authActivity, com.alipay.sdk.authjs.a aVar) {
        if (authActivity.f6807a != null && aVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.alipay.sdk.authjs.a.f6840k, aVar.f6844a);
                jSONObject.put(com.alipay.sdk.authjs.a.f6842m, aVar.f6846c);
                jSONObject.put(com.alipay.sdk.authjs.a.f6841l, aVar.f6848e);
                jSONObject.put(com.alipay.sdk.authjs.a.f6843n, aVar.f6847d);
                authActivity.runOnUiThread(new e(authActivity, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
            } catch (JSONException unused) {
            }
        }
    }

    private void c(com.alipay.sdk.authjs.a aVar) {
        if (this.f6807a != null && aVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.alipay.sdk.authjs.a.f6840k, aVar.f6844a);
                jSONObject.put(com.alipay.sdk.authjs.a.f6842m, aVar.f6846c);
                jSONObject.put(com.alipay.sdk.authjs.a.f6841l, aVar.f6848e);
                jSONObject.put(com.alipay.sdk.authjs.a.f6843n, aVar.f6847d);
                runOnUiThread(new e(this, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
            } catch (JSONException unused) {
            }
        }
    }

    static /* synthetic */ boolean e(AuthActivity authActivity, String str) {
        if (TextUtils.isEmpty(str) || str.startsWith(c5.j.f4021a) || str.startsWith(c5.j.f4022b)) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, authActivity.f6808b)) {
                str = str + "?resultCode=150";
            }
            j.d(authActivity, str);
        }
        authActivity.finish();
        return true;
    }

    private boolean g(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith(c5.j.f4021a) || str.startsWith(c5.j.f4022b)) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, this.f6808b)) {
                str = str + "?resultCode=150";
            }
            j.d(this, str);
        }
        finish();
        return true;
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f6809c;
        if (aVar != null) {
            aVar.f();
        }
        this.f6809c = null;
    }

    static /* synthetic */ void i(AuthActivity authActivity, String str) {
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(authActivity.getApplicationContext(), new d(authActivity));
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(com.alipay.sdk.authjs.a.f6840k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f6841l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f6842m);
                String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f6839j);
                com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
                aVar.f6845b = string3;
                aVar.f6846c = string2;
                aVar.f6848e = jSONObject3;
                aVar.f6844a = string;
                dVar.c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    dVar.g(str2, a.EnumC0038a.f6853d);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    private void j(String str) {
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(getApplicationContext(), new d(this));
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString(com.alipay.sdk.authjs.a.f6840k);
            try {
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f6841l);
                JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
                String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f6842m);
                String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f6839j);
                com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
                aVar.f6845b = string3;
                aVar.f6846c = string2;
                aVar.f6848e = jSONObject3;
                aVar.f6844a = string;
                dVar.c(aVar);
            } catch (Exception unused) {
                str2 = string;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    dVar.g(str2, a.EnumC0038a.f6853d);
                } catch (JSONException unused2) {
                }
            }
        } catch (Exception unused3) {
        }
    }

    static /* synthetic */ void m(AuthActivity authActivity) {
        try {
            if (authActivity.f6809c == null) {
                authActivity.f6809c = new com.alipay.sdk.widget.a(authActivity, com.alipay.sdk.widget.a.f6979d);
            }
            authActivity.f6809c.c();
        } catch (Exception unused) {
            authActivity.f6809c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void p(AuthActivity authActivity) {
        com.alipay.sdk.widget.a aVar = authActivity.f6809c;
        if (aVar != null) {
            aVar.f();
        }
        authActivity.f6809c = null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f6807a.canGoBack()) {
            if (this.f6812f) {
                j.d(this, this.f6808b + "?resultCode=150");
                finish();
                return;
            }
            return;
        }
        j.d(this, this.f6808b + "?resultCode=150");
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            try {
                this.f6808b = extras.getString(f6806i);
                String string = extras.getString("params");
                if (!l.m(string)) {
                    finish();
                    return;
                }
                super.requestWindowFeature(1);
                this.f6810d = new Handler(getMainLooper());
                LinearLayout linearLayout = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                linearLayout.setOrientation(1);
                setContentView(linearLayout, layoutParams);
                WebView webView = new WebView(this);
                this.f6807a = webView;
                layoutParams.weight = 1.0f;
                webView.setVisibility(0);
                linearLayout.addView(this.f6807a, layoutParams);
                WebSettings settings = this.f6807a.getSettings();
                settings.setUserAgentString(settings.getUserAgentString() + l.o(getApplicationContext()));
                settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
                settings.setSupportMultipleWindows(true);
                settings.setJavaScriptEnabled(true);
                settings.setSavePassword(false);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
                settings.setAllowFileAccess(false);
                settings.setTextSize(WebSettings.TextSize.NORMAL);
                this.f6807a.setVerticalScrollbarOverlay(true);
                this.f6807a.setWebViewClient(new b(this, (byte) 0));
                this.f6807a.setWebChromeClient(new a(this, (byte) 0));
                this.f6807a.setDownloadListener(new c(this));
                this.f6807a.loadUrl(string);
                try {
                    Method method = this.f6807a.getSettings().getClass().getMethod("setDomStorageEnabled", Boolean.TYPE);
                    if (method != null) {
                        method.invoke(this.f6807a.getSettings(), Boolean.TRUE);
                    }
                } catch (Exception unused) {
                }
                try {
                    try {
                        this.f6807a.removeJavascriptInterface("searchBoxJavaBridge_");
                        this.f6807a.removeJavascriptInterface("accessibility");
                        this.f6807a.removeJavascriptInterface("accessibilityTraversal");
                    } catch (Throwable unused2) {
                        Method method2 = this.f6807a.getClass().getMethod("removeJavascriptInterface", new Class[0]);
                        if (method2 != null) {
                            method2.invoke(this.f6807a, "searchBoxJavaBridge_");
                            method2.invoke(this.f6807a, "accessibility");
                            method2.invoke(this.f6807a, "accessibilityTraversal");
                        }
                        this.f6807a.getSettings().setCacheMode(1);
                    }
                } catch (Throwable unused3) {
                    this.f6807a.getSettings().setCacheMode(1);
                }
            } catch (Exception unused4) {
                finish();
            }
        } catch (Exception unused5) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f6807a;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f6807a.destroy();
            } catch (Throwable unused) {
            }
            this.f6807a = null;
        }
    }
}
