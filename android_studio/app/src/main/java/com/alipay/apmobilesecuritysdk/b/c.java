package com.alipay.apmobilesecuritysdk.b;

import t.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f6711a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f6711a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f6711a.b();
        } catch (Throwable th) {
            d.c(th);
        }
    }
}
