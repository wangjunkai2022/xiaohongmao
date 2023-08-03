package io.reactivex.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AbstractDirectTask.java */
/* loaded from: classes4.dex */
abstract class a extends AtomicReference<Future<?>> implements io.reactivex.disposables.c, io.reactivex.schedulers.a {

    /* renamed from: c  reason: collision with root package name */
    private static final long f75628c = 1811839108042568751L;

    /* renamed from: d  reason: collision with root package name */
    protected static final FutureTask<Void> f75629d;

    /* renamed from: e  reason: collision with root package name */
    protected static final FutureTask<Void> f75630e;

    /* renamed from: a  reason: collision with root package name */
    protected final Runnable f75631a;

    /* renamed from: b  reason: collision with root package name */
    protected Thread f75632b;

    static {
        Runnable runnable = io.reactivex.internal.functions.a.f71128b;
        f75629d = new FutureTask<>(runnable, null);
        f75630e = new FutureTask<>(runnable, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Runnable runnable) {
        this.f75631a = runnable;
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f75629d || future == (futureTask = f75630e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f75632b != Thread.currentThread());
    }

    public Runnable getWrappedRunnable() {
        return this.f75631a;
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == f75629d || future == f75630e;
    }

    public final void setFuture(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f75629d) {
                return;
            }
            if (future2 == f75630e) {
                future.cancel(this.f75632b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }
}
