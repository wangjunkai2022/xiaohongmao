package com.alipay.sdk.auth;

import android.webkit.WebView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f6822a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AuthActivity f6823b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AuthActivity authActivity, String str) {
        this.f6823b = authActivity;
        this.f6822a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView;
        try {
            webView = this.f6823b.f6807a;
            webView.loadUrl("javascript:" + this.f6822a);
        } catch (Exception unused) {
        }
    }
}
