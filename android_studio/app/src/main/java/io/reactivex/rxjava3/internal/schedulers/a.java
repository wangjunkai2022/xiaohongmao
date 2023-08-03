package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractDirectTask.java */
/* loaded from: classes4.dex */
public abstract class a extends AtomicReference<Future<?>> implements io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.schedulers.a {

    /* renamed from: c  reason: collision with root package name */
    private static final long f81043c = 1811839108042568751L;

    /* renamed from: d  reason: collision with root package name */
    protected static final FutureTask<Void> f81044d;

    /* renamed from: e  reason: collision with root package name */
    protected static final FutureTask<Void> f81045e;

    /* renamed from: a  reason: collision with root package name */
    protected final Runnable f81046a;

    /* renamed from: b  reason: collision with root package name */
    protected Thread f81047b;

    static {
        Runnable runnable = io.reactivex.rxjava3.internal.functions.a.f76181b;
        f81044d = new FutureTask<>(runnable, null);
        f81045e = new FutureTask<>(runnable, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Runnable runnable) {
        this.f81046a = runnable;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f81044d || future == (futureTask = f81045e) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f81047b != Thread.currentThread());
    }

    public Runnable getWrappedRunnable() {
        return this.f81046a;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == f81044d || future == f81045e;
    }

    public final void setFuture(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f81044d) {
                return;
            }
            if (future2 == f81045e) {
                future.cancel(this.f81047b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }
}
