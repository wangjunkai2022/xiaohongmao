package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InstantPeriodicTask.java */
/* loaded from: classes4.dex */
public final class f implements Callable<Void>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: f  reason: collision with root package name */
    static final FutureTask<Void> f81099f = new FutureTask<>(io.reactivex.rxjava3.internal.functions.a.f76181b, null);

    /* renamed from: a  reason: collision with root package name */
    final Runnable f81100a;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f81103d;

    /* renamed from: e  reason: collision with root package name */
    Thread f81104e;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Future<?>> f81102c = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<Future<?>> f81101b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Runnable task, ExecutorService executor) {
        this.f81100a = task;
        this.f81103d = executor;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Void call() {
        this.f81104e = Thread.currentThread();
        try {
            this.f81100a.run();
            this.f81104e = null;
            c(this.f81103d.submit(this));
            return null;
        } catch (Throwable th) {
            this.f81104e = null;
            io.reactivex.rxjava3.plugins.a.Y(th);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Future<?> f10) {
        Future<?> future;
        do {
            future = this.f81102c.get();
            if (future == f81099f) {
                f10.cancel(this.f81104e != Thread.currentThread());
                return;
            }
        } while (!this.f81102c.compareAndSet(future, f10));
    }

    void c(Future<?> f10) {
        Future<?> future;
        do {
            future = this.f81101b.get();
            if (future == f81099f) {
                f10.cancel(this.f81104e != Thread.currentThread());
                return;
            }
        } while (!this.f81101b.compareAndSet(future, f10));
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f81102c;
        FutureTask<Void> futureTask = f81099f;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f81104e != Thread.currentThread());
        }
        Future<?> andSet2 = this.f81101b.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f81104e != Thread.currentThread());
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81102c.get() == f81099f;
    }
}
