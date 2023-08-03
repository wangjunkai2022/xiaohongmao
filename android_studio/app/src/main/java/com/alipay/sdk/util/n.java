package com.alipay.sdk.util;

import android.app.Activity;

/* loaded from: classes.dex */
final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f6978a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Activity activity) {
        this.f6978a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6978a.finish();
    }
}
