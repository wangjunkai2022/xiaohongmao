package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
abstract class z0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a1 f28935a;

    @WorkerThread
    protected abstract void a();

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        Lock lock;
        Lock lock2;
        n1 n1Var;
        Lock lock3;
        lock = this.f28935a.f28624b;
        lock.lock();
        try {
            try {
                if (Thread.interrupted()) {
                    lock3 = this.f28935a.f28624b;
                } else {
                    a();
                    lock3 = this.f28935a.f28624b;
                }
            } catch (RuntimeException e4) {
                n1Var = this.f28935a.f28623a;
                n1Var.t(e4);
                lock3 = this.f28935a.f28624b;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock2 = this.f28935a.f28624b;
            lock2.unlock();
            throw th;
        }
    }
}
