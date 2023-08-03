package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;

/* loaded from: classes4.dex */
public final class ScheduledDirectTask extends a implements Callable<Void> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f75618f = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.a, io.reactivex.schedulers.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f75632b = Thread.currentThread();
        try {
            this.f75631a.run();
            return null;
        } finally {
            lazySet(a.f75629d);
            this.f75632b = null;
        }
    }
}
