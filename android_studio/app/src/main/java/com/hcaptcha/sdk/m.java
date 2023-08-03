package com.hcaptcha.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Objects;
import lombok.Generated;
import lombok.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f38405a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final HCaptchaConfig f38406b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final p f38407c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final HCaptchaStateListener f38408d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final WebView f38409e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final IHCaptchaHtmlProvider f38410f;

    /* loaded from: classes2.dex */
    public static class b extends WebChromeClient {
        private b() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            k.a("[webview] onConsoleMessage " + consoleMessage.message());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i4) {
            k.b("[webview] onProgressChanged %d%%", Integer.valueOf(i4));
        }
    }

    @RequiresApi(21)
    /* loaded from: classes2.dex */
    public class c extends WebViewClient {
        private c() {
        }

        private String a(String str) {
            return str.split("[?#]")[0] + "...";
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            k.a("[webview] onLoadResource " + a(str));
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            k.a("[webview] onPageFinished " + a(str));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            k.a("[webview] onPageStarted " + a(str));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i4, String str, String str2) {
            super.onReceivedError(webView, i4, str, str2);
            k.b("[webview] onReceivedError \"%s\" (%d)", str, Integer.valueOf(i4));
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url = webResourceRequest.getUrl();
            if (url != null && url.getScheme().equals("http")) {
                m.this.f38409e.removeJavascriptInterface(j.f38391d);
                m.this.f38409e.removeJavascriptInterface(d.f38367b);
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    public m(@NonNull Handler handler, @NonNull Context context, @NonNull HCaptchaConfig hCaptchaConfig, @NonNull i iVar, @NonNull p pVar, @NonNull HCaptchaStateListener hCaptchaStateListener, @NonNull WebView webView) {
        Objects.requireNonNull(handler, "handler is marked non-null but is null");
        Objects.requireNonNull(context, "context is marked non-null but is null");
        Objects.requireNonNull(hCaptchaConfig, "config is marked non-null but is null");
        Objects.requireNonNull(iVar, "internalConfig is marked non-null but is null");
        Objects.requireNonNull(pVar, "captchaVerifier is marked non-null but is null");
        Objects.requireNonNull(hCaptchaStateListener, "listener is marked non-null but is null");
        Objects.requireNonNull(webView, "webView is marked non-null but is null");
        this.f38405a = context;
        this.f38406b = hCaptchaConfig;
        this.f38407c = pVar;
        this.f38408d = hCaptchaStateListener;
        this.f38409e = webView;
        this.f38410f = iVar.e();
        g(handler);
    }

    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
    private void g(@NonNull Handler handler) {
        Objects.requireNonNull(handler, "handler is marked non-null but is null");
        k.a("WebViewHelper.setupWebView");
        j jVar = new j(handler, this.f38406b, this.f38407c);
        d dVar = new d(this.f38405a);
        WebSettings settings = this.f38409e.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setCacheMode(-1);
        settings.setGeolocationEnabled(false);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        this.f38409e.setWebViewClient(new c());
        if (k.f38402b) {
            this.f38409e.setWebChromeClient(new b());
        }
        this.f38409e.setBackgroundColor(0);
        this.f38409e.setLayerType(1, null);
        this.f38409e.addJavascriptInterface(jVar, j.f38391d);
        this.f38409e.addJavascriptInterface(dVar, d.f38367b);
        this.f38409e.loadDataWithBaseURL(this.f38406b.getHost(), this.f38410f.getHtml(), "text/html", "UTF-8", null);
        k.a("WebViewHelper.loadData");
    }

    public void b() {
        k.a("WebViewHelper.destroy");
        this.f38409e.removeJavascriptInterface(j.f38391d);
        this.f38409e.removeJavascriptInterface(d.f38367b);
        ViewParent parent = this.f38409e.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f38409e);
        } else {
            k.c("webView.getParent() is null or not a ViewGroup instance");
        }
        this.f38409e.destroy();
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaConfig c() {
        return this.f38406b;
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaStateListener d() {
        return this.f38408d;
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public WebView e() {
        return this.f38409e;
    }

    public void f() {
        this.f38409e.loadUrl("javascript:resetAndExecute();");
    }

    public boolean h(HCaptchaException hCaptchaException) {
        return this.f38406b.getRetryPredicate().a(this.f38406b, hCaptchaException);
    }
}
