package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;

/* loaded from: classes4.dex */
public final class ScheduledDirectTask extends a implements Callable<Void> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f81033f = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.a, io.reactivex.rxjava3.schedulers.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.util.concurrent.Callable
    public Void call() {
        this.f81047b = Thread.currentThread();
        try {
            this.f81046a.run();
            lazySet(a.f81044d);
            this.f81047b = null;
            return null;
        } catch (Throwable th) {
            io.reactivex.rxjava3.plugins.a.Y(th);
            throw th;
        }
    }
}
