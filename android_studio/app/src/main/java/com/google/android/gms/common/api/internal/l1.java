package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
abstract class l1 {

    /* renamed from: a  reason: collision with root package name */
    private final k1 f28797a;

    /* JADX INFO: Access modifiers changed from: protected */
    public l1(k1 k1Var) {
        this.f28797a = k1Var;
    }

    protected abstract void a();

    public final void b(n1 n1Var) {
        Lock lock;
        Lock lock2;
        k1 k1Var;
        Lock lock3;
        lock = n1Var.f28814c;
        lock.lock();
        try {
            k1Var = n1Var.f28824m;
            if (k1Var != this.f28797a) {
                lock3 = n1Var.f28814c;
            } else {
                a();
                lock3 = n1Var.f28814c;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = n1Var.f28814c;
            lock2.unlock();
            throw th;
        }
    }
}
