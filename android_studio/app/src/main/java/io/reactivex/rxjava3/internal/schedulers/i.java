package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: NewThreadWorker.java */
/* loaded from: classes4.dex */
public class i extends o0.c implements io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f81133a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f81134b;

    public i(ThreadFactory threadFactory) {
        this.f81133a = l.a(threadFactory);
    }

    @Override // io.reactivex.rxjava3.core.o0.c
    @p7.e
    public io.reactivex.rxjava3.disposables.f b(@p7.e final Runnable run) {
        return c(run, 0L, null);
    }

    @Override // io.reactivex.rxjava3.core.o0.c
    @p7.e
    public io.reactivex.rxjava3.disposables.f c(@p7.e final Runnable action, long delayTime, @p7.e TimeUnit unit) {
        if (this.f81134b) {
            return EmptyDisposable.INSTANCE;
        }
        return e(action, delayTime, unit, null);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        if (this.f81134b) {
            return;
        }
        this.f81134b = true;
        this.f81133a.shutdownNow();
    }

    @p7.e
    public ScheduledRunnable e(final Runnable run, long delayTime, @p7.e TimeUnit unit, @p7.f io.reactivex.rxjava3.disposables.g parent) {
        Future<?> schedule;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.rxjava3.plugins.a.b0(run), parent);
        if (parent == null || parent.b(scheduledRunnable)) {
            try {
                if (delayTime <= 0) {
                    schedule = this.f81133a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f81133a.schedule((Callable) scheduledRunnable, delayTime, unit);
                }
                scheduledRunnable.setFuture(schedule);
            } catch (RejectedExecutionException e4) {
                if (parent != null) {
                    parent.a(scheduledRunnable);
                }
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
            return scheduledRunnable;
        }
        return scheduledRunnable;
    }

    public io.reactivex.rxjava3.disposables.f f(final Runnable run, long delayTime, TimeUnit unit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.rxjava3.plugins.a.b0(run));
        try {
            if (delayTime <= 0) {
                schedule = this.f81133a.submit(scheduledDirectTask);
            } else {
                schedule = this.f81133a.schedule(scheduledDirectTask, delayTime, unit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    public io.reactivex.rxjava3.disposables.f g(Runnable run, long initialDelay, long period, TimeUnit unit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
        if (period <= 0) {
            f fVar = new f(b02, this.f81133a);
            try {
                if (initialDelay <= 0) {
                    schedule = this.f81133a.submit(fVar);
                } else {
                    schedule = this.f81133a.schedule(fVar, initialDelay, unit);
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
            scheduledDirectPeriodicTask.setFuture(this.f81133a.scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e10) {
            io.reactivex.rxjava3.plugins.a.Y(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    public void h() {
        if (this.f81134b) {
            return;
        }
        this.f81134b = true;
        this.f81133a.shutdown();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81134b;
    }
}
