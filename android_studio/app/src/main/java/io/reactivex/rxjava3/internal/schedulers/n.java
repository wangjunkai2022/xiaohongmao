package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
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
public final class n extends o0 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f81158d = "rx3.single-priority";

    /* renamed from: e  reason: collision with root package name */
    private static final String f81159e = "RxSingleScheduler";

    /* renamed from: f  reason: collision with root package name */
    static final RxThreadFactory f81160f;

    /* renamed from: g  reason: collision with root package name */
    static final ScheduledExecutorService f81161g;

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f81162b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f81163c;

    /* compiled from: SingleScheduler.java */
    /* loaded from: classes4.dex */
    static final class a extends o0.c {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f81164a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f81165b = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f81166c;

        a(ScheduledExecutorService executor) {
            this.f81164a = executor;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable run, long delay, @p7.e TimeUnit unit) {
            Future<?> schedule;
            if (this.f81166c) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.rxjava3.plugins.a.b0(run), this.f81165b);
            this.f81165b.b(scheduledRunnable);
            try {
                if (delay <= 0) {
                    schedule = this.f81164a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f81164a.schedule((Callable) scheduledRunnable, delay, unit);
                }
                scheduledRunnable.setFuture(schedule);
                return scheduledRunnable;
            } catch (RejectedExecutionException e4) {
                dispose();
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81166c) {
                return;
            }
            this.f81166c = true;
            this.f81165b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81166c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f81161g = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f81160f = new RxThreadFactory(f81159e, Math.max(1, Math.min(10, Integer.getInteger(f81158d, 5).intValue())), true);
    }

    public n() {
        this(f81160f);
    }

    static ScheduledExecutorService l(ThreadFactory threadFactory) {
        return l.a(threadFactory);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new a(this.f81163c.get());
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, long delay, TimeUnit unit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.rxjava3.plugins.a.b0(run));
        try {
            if (delay <= 0) {
                schedule = this.f81163c.get().submit(scheduledDirectTask);
            } else {
                schedule = this.f81163c.get().schedule(scheduledDirectTask, delay, unit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f h(@p7.e Runnable run, long initialDelay, long period, TimeUnit unit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
        if (period <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f81163c.get();
            f fVar = new f(b02, scheduledExecutorService);
            try {
                if (initialDelay <= 0) {
                    schedule = scheduledExecutorService.submit(fVar);
                } else {
                    schedule = scheduledExecutorService.schedule(fVar, initialDelay, unit);
                }
                fVar.b(schedule);
                return fVar;
            } catch (RejectedExecutionException e4) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(b02);
        try {
            scheduledDirectPeriodicTask.setFuture(this.f81163c.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e10) {
            io.reactivex.rxjava3.plugins.a.Y(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void i() {
        AtomicReference<ScheduledExecutorService> atomicReference = this.f81163c;
        ScheduledExecutorService scheduledExecutorService = f81161g;
        ScheduledExecutorService andSet = atomicReference.getAndSet(scheduledExecutorService);
        if (andSet != scheduledExecutorService) {
            andSet.shutdownNow();
        }
    }

    @Override // io.reactivex.rxjava3.core.o0
    public void j() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.f81163c.get();
            if (scheduledExecutorService != f81161g) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = l(this.f81162b);
            }
        } while (!this.f81163c.compareAndSet(scheduledExecutorService, scheduledExecutorService2));
    }

    public n(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f81163c = atomicReference;
        this.f81162b = threadFactory;
        atomicReference.lazySet(l(threadFactory));
    }
}
