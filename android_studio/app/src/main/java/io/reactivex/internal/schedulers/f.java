package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InstantPeriodicTask.java */
/* loaded from: classes4.dex */
public final class f implements Callable<Void>, io.reactivex.disposables.c {

    /* renamed from: f  reason: collision with root package name */
    static final FutureTask<Void> f75682f = new FutureTask<>(io.reactivex.internal.functions.a.f71128b, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f75683a;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f75686d;

    /* renamed from: e  reason: collision with root package name */
    Thread f75687e;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Future<?>> f75685c = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<Future<?>> f75684b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Runnable runnable, ExecutorService executorService) {
        this.f75683a = runnable;
        this.f75686d = executorService;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Void call() throws Exception {
        this.f75687e = Thread.currentThread();
        try {
            this.f75683a.run();
            c(this.f75686d.submit(this));
            this.f75687e = null;
        } catch (Throwable th) {
            this.f75687e = null;
            io.reactivex.plugins.a.Y(th);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f75685c.get();
            if (future2 == f75682f) {
                future.cancel(this.f75687e != Thread.currentThread());
                return;
            }
        } while (!this.f75685c.compareAndSet(future2, future));
    }

    void c(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f75684b.get();
            if (future2 == f75682f) {
                future.cancel(this.f75687e != Thread.currentThread());
                return;
            }
        } while (!this.f75684b.compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f75685c;
        FutureTask<Void> futureTask = f75682f;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f75687e != Thread.currentThread());
        }
        Future<?> andSet2 = this.f75684b.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f75687e != Thread.currentThread());
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75685c.get() == f75682f;
    }
}
