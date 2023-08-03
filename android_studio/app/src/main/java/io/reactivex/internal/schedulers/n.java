package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleScheduler.java */
/* loaded from: classes4.dex */
public final class n extends h0 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f75743e = "rx2.single-priority";

    /* renamed from: f  reason: collision with root package name */
    private static final String f75744f = "RxSingleScheduler";

    /* renamed from: g  reason: collision with root package name */
    static final RxThreadFactory f75745g;

    /* renamed from: h  reason: collision with root package name */
    static final ScheduledExecutorService f75746h;

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f75747c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f75748d;

    /* compiled from: SingleScheduler.java */
    /* loaded from: classes4.dex */
    static final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f75749a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.b f75750b = new io.reactivex.disposables.b();

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f75751c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f75749a = scheduledExecutorService;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            Future<?> schedule;
            if (this.f75751c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.plugins.a.b0(runnable), this.f75750b);
            this.f75750b.b(scheduledRunnable);
            try {
                if (j4 <= 0) {
                    schedule = this.f75749a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f75749a.schedule((Callable) scheduledRunnable, j4, timeUnit);
                }
                scheduledRunnable.setFuture(schedule);
                return scheduledRunnable;
            } catch (RejectedExecutionException e4) {
                dispose();
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f75751c) {
                return;
            }
            this.f75751c = true;
            this.f75750b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75751c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f75746h = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f75745g = new RxThreadFactory(f75744f, Math.max(1, Math.min(10, Integer.getInteger(f75743e, 5).intValue())), true);
    }

    public n() {
        this(f75745g);
    }

    static ScheduledExecutorService l(ThreadFactory threadFactory) {
        return l.a(threadFactory);
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new a(this.f75748d.get());
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.plugins.a.b0(runnable));
        try {
            if (j4 <= 0) {
                schedule = this.f75748d.get().submit(scheduledDirectTask);
            } else {
                schedule = this.f75748d.get().schedule(scheduledDirectTask, j4, timeUnit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c h(@m7.e Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (j10 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f75748d.get();
            f fVar = new f(b02, scheduledExecutorService);
            try {
                if (j4 <= 0) {
                    schedule = scheduledExecutorService.submit(fVar);
                } else {
                    schedule = scheduledExecutorService.schedule(fVar, j4, timeUnit);
                }
                fVar.b(schedule);
                return fVar;
            } catch (RejectedExecutionException e4) {
                io.reactivex.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(b02);
        try {
            scheduledDirectPeriodicTask.setFuture(this.f75748d.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j10, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e10) {
            io.reactivex.plugins.a.Y(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.h0
    public void i() {
        ScheduledExecutorService andSet;
        ScheduledExecutorService scheduledExecutorService = this.f75748d.get();
        ScheduledExecutorService scheduledExecutorService2 = f75746h;
        if (scheduledExecutorService == scheduledExecutorService2 || (andSet = this.f75748d.getAndSet(scheduledExecutorService2)) == scheduledExecutorService2) {
            return;
        }
        andSet.shutdownNow();
    }

    @Override // io.reactivex.h0
    public void j() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.f75748d.get();
            if (scheduledExecutorService != f75746h) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = l(this.f75747c);
            }
        } while (!this.f75748d.compareAndSet(scheduledExecutorService, scheduledExecutorService2));
    }

    public n(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f75748d = atomicReference;
        this.f75747c = threadFactory;
        atomicReference.lazySet(l(threadFactory));
    }
}
