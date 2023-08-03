package io.reactivex.rxjava3.internal.schedulers;

/* loaded from: classes4.dex */
public final class ScheduledDirectPeriodicTask extends a implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f81032f = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.a, io.reactivex.rxjava3.schedulers.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f81047b = Thread.currentThread();
        try {
            this.f81046a.run();
            this.f81047b = null;
        } catch (Throwable th) {
            this.f81047b = null;
            dispose();
            io.reactivex.rxjava3.plugins.a.Y(th);
            throw th;
        }
    }
}
