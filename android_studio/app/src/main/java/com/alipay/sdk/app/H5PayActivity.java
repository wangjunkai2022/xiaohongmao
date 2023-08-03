package com.alipay.sdk.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.l;

/* loaded from: classes.dex */
public class H5PayActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private WebView f6739a;

    /* renamed from: b  reason: collision with root package name */
    private WebViewClient f6740b;

    public void a() {
        Object obj = PayTask.f6741g;
        synchronized (obj) {
            try {
                obj.notify();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        a();
        super.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f6739a.canGoBack()) {
            if (((b) this.f6740b).f6756e) {
                i a10 = i.a(i.NETWORK_ERROR.f6773h);
                h.f6764a = h.b(a10.f6773h, a10.f6774i, "");
                finish();
                return;
            }
            return;
        }
        h.f6764a = h.a();
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
            String string = extras.getString("url");
            if (!l.m(string)) {
                finish();
                return;
            }
            String string2 = extras.getString("cookie");
            super.requestWindowFeature(1);
            this.f6739a = l.b(this, string, string2);
            b bVar = new b(this);
            this.f6740b = bVar;
            this.f6739a.setWebViewClient(bVar);
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f6739a;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f6739a.destroy();
            } catch (Throwable unused) {
            }
            this.f6739a = null;
        }
    }
}
