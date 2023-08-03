package com.alipay.sdk.app;

import android.app.Activity;
import android.webkit.SslErrorHandler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f6758a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f6759b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, SslErrorHandler sslErrorHandler) {
        this.f6759b = bVar;
        this.f6758a = sslErrorHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        activity = this.f6759b.f6752a;
        com.alipay.sdk.widget.d.b(activity, "安全警告", "安全连接证书校验无效，将无法保证访问数据的安全性，可能存在风险，请选择是否继续？", "继续", new d(this), "退出", new e(this));
    }
}
