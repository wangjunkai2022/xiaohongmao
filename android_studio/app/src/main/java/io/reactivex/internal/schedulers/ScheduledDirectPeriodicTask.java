package io.reactivex.internal.schedulers;

/* loaded from: classes4.dex */
public final class ScheduledDirectPeriodicTask extends a implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f75617f = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.a, io.reactivex.schedulers.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f75632b = Thread.currentThread();
        try {
            this.f75631a.run();
            this.f75632b = null;
        } catch (Throwable th) {
            this.f75632b = null;
            lazySet(a.f75629d);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
