package com.alipay.sdk.app;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.l;

/* loaded from: classes.dex */
public final class b extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private Activity f6752a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6753b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f6754c;

    /* renamed from: d  reason: collision with root package name */
    private com.alipay.sdk.widget.a f6755d;

    /* renamed from: e  reason: collision with root package name */
    boolean f6756e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f6757f = new f(this);

    public b(Activity activity) {
        this.f6752a = activity;
        this.f6754c = new Handler(this.f6752a.getMainLooper());
    }

    private void b() {
        if (this.f6755d == null) {
            this.f6755d = new com.alipay.sdk.widget.a(this.f6752a, com.alipay.sdk.widget.a.f6979d);
        }
        this.f6755d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.alipay.sdk.widget.a aVar = this.f6755d;
        if (aVar != null) {
            aVar.f();
        }
        this.f6755d = null;
    }

    private boolean f() {
        return this.f6756e;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        d();
        this.f6754c.removeCallbacks(this.f6757f);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f6755d == null) {
            this.f6755d = new com.alipay.sdk.widget.a(this.f6752a, com.alipay.sdk.widget.a.f6979d);
        }
        this.f6755d.c();
        this.f6754c.postDelayed(this.f6757f, 30000L);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i4, String str, String str2) {
        this.f6756e = true;
        super.onReceivedError(webView, i4, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f6779k, com.alipay.sdk.app.statistic.c.f6784p, "证书错误");
        if (this.f6753b) {
            sslErrorHandler.proceed();
            this.f6753b = false;
            return;
        }
        this.f6752a.runOnUiThread(new c(this, sslErrorHandler));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return l.j(webView, str, this.f6752a);
    }
}
