package com.google.mlkit.common.sdkinternal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class q {
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: b  reason: collision with root package name */
    private boolean f35904b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f35903a = new Object();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private final Queue f35905c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference f35906d = new AtomicReference();

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        synchronized (this.f35903a) {
            if (this.f35905c.isEmpty()) {
                this.f35904b = false;
                return;
            }
            i0 i0Var = (i0) this.f35905c.remove();
            f(i0Var.f35801a, i0Var.f35802b);
        }
    }

    private final void f(Executor executor, final Runnable runnable) {
        try {
            executor.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.g0
                @Override // java.lang.Runnable
                public final void run() {
                    q qVar = q.this;
                    Runnable runnable2 = runnable;
                    k0 k0Var = new k0(qVar, null);
                    try {
                        runnable2.run();
                        k0Var.close();
                    } catch (Throwable th) {
                        try {
                            k0Var.close();
                        } catch (Throwable th2) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            e();
        }
    }

    @u2.a
    public void a() {
        com.google.android.gms.common.internal.u.q(Thread.currentThread().equals(this.f35906d.get()));
    }

    @u2.a
    public void b(@NonNull Executor executor, @NonNull Runnable runnable) {
        synchronized (this.f35903a) {
            if (this.f35904b) {
                this.f35905c.add(new i0(executor, runnable, null));
                return;
            }
            this.f35904b = true;
            f(executor, runnable);
        }
    }
}
