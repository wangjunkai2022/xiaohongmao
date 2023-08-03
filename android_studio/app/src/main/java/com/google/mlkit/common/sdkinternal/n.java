package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.mlkit_common.ta;
import com.google.mlkit.common.MlKitException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public abstract class n {
    @NonNull
    @u2.a

    /* renamed from: a  reason: collision with root package name */
    protected final q f35882a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f35883b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f35884c;

    public n() {
        this.f35883b = new AtomicInteger(0);
        this.f35884c = new AtomicBoolean(false);
        this.f35882a = new q();
    }

    @NonNull
    @u2.a
    public <T> com.google.android.gms.tasks.k<T> a(@NonNull final Executor executor, @NonNull final Callable<T> callable, @NonNull final com.google.android.gms.tasks.a aVar) {
        com.google.android.gms.common.internal.u.q(this.f35883b.get() > 0);
        if (aVar.a()) {
            return com.google.android.gms.tasks.n.e();
        }
        final com.google.android.gms.tasks.b bVar = new com.google.android.gms.tasks.b();
        final com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l(bVar.b());
        this.f35882a.b(new Executor() { // from class: com.google.mlkit.common.sdkinternal.d0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                Executor executor2 = executor;
                com.google.android.gms.tasks.a aVar2 = aVar;
                com.google.android.gms.tasks.b bVar2 = bVar;
                com.google.android.gms.tasks.l lVar2 = lVar;
                try {
                    executor2.execute(runnable);
                } catch (RuntimeException e4) {
                    if (aVar2.a()) {
                        bVar2.a();
                    } else {
                        lVar2.b(e4);
                    }
                    throw e4;
                }
            }
        }, new Runnable() { // from class: com.google.mlkit.common.sdkinternal.e0
            @Override // java.lang.Runnable
            public final void run() {
                n.this.h(aVar, bVar, callable, lVar);
            }
        });
        return lVar.a();
    }

    @u2.a
    public boolean b() {
        return this.f35884c.get();
    }

    @u2.a
    @VisibleForTesting
    @WorkerThread
    public abstract void c() throws MlKitException;

    @u2.a
    public void d() {
        this.f35883b.incrementAndGet();
    }

    @u2.a
    @WorkerThread
    protected abstract void e();

    @u2.a
    public void f(@NonNull Executor executor) {
        g(executor);
    }

    @NonNull
    @u2.a
    public com.google.android.gms.tasks.k<Void> g(@NonNull Executor executor) {
        com.google.android.gms.common.internal.u.q(this.f35883b.get() > 0);
        final com.google.android.gms.tasks.l lVar = new com.google.android.gms.tasks.l();
        this.f35882a.b(executor, new Runnable() { // from class: com.google.mlkit.common.sdkinternal.c0
            @Override // java.lang.Runnable
            public final void run() {
                n.this.i(lVar);
            }
        });
        return lVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h(com.google.android.gms.tasks.a aVar, com.google.android.gms.tasks.b bVar, Callable callable, com.google.android.gms.tasks.l lVar) {
        try {
            if (aVar.a()) {
                bVar.a();
                return;
            }
            try {
                if (!this.f35884c.get()) {
                    c();
                    this.f35884c.set(true);
                }
                if (aVar.a()) {
                    bVar.a();
                    return;
                }
                Object call = callable.call();
                if (aVar.a()) {
                    bVar.a();
                } else {
                    lVar.c(call);
                }
            } catch (RuntimeException e4) {
                throw new MlKitException("Internal error has occurred when executing ML Kit tasks", 13, e4);
            }
        } catch (Exception e10) {
            if (aVar.a()) {
                bVar.a();
            } else {
                lVar.b(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i(com.google.android.gms.tasks.l lVar) {
        int decrementAndGet = this.f35883b.decrementAndGet();
        com.google.android.gms.common.internal.u.q(decrementAndGet >= 0);
        if (decrementAndGet == 0) {
            e();
            this.f35884c.set(false);
        }
        ta.a();
        lVar.c(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public n(@NonNull q qVar) {
        this.f35883b = new AtomicInteger(0);
        this.f35884c = new AtomicBoolean(false);
        this.f35882a = qVar;
    }
}
