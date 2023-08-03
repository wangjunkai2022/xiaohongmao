package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
final class b4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e0 f28648a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b4(e0 e0Var) {
        this.f28648a = e0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f28648a.f28681o;
        lock.lock();
        try {
            e0.B(this.f28648a);
        } finally {
            lock2 = this.f28648a.f28681o;
            lock2.unlock();
        }
    }
}
