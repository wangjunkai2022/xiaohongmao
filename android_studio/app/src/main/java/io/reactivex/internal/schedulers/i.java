package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: NewThreadWorker.java */
/* loaded from: classes4.dex */
public class i extends h0.c implements io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f75718a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f75719b;

    public i(ThreadFactory threadFactory) {
        this.f75718a = l.a(threadFactory);
    }

    @Override // io.reactivex.h0.c
    @m7.e
    public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
        return c(runnable, 0L, null);
    }

    @Override // io.reactivex.h0.c
    @m7.e
    public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
        if (this.f75719b) {
            return EmptyDisposable.INSTANCE;
        }
        return e(runnable, j4, timeUnit, null);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        if (this.f75719b) {
            return;
        }
        this.f75719b = true;
        this.f75718a.shutdownNow();
    }

    @m7.e
    public ScheduledRunnable e(Runnable runnable, long j4, @m7.e TimeUnit timeUnit, @m7.f io.reactivex.internal.disposables.a aVar) {
        Future<?> schedule;
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(io.reactivex.plugins.a.b0(runnable), aVar);
        if (aVar == null || aVar.b(scheduledRunnable)) {
            try {
                if (j4 <= 0) {
                    schedule = this.f75718a.submit((Callable) scheduledRunnable);
                } else {
                    schedule = this.f75718a.schedule((Callable) scheduledRunnable, j4, timeUnit);
                }
                scheduledRunnable.setFuture(schedule);
            } catch (RejectedExecutionException e4) {
                if (aVar != null) {
                    aVar.a(scheduledRunnable);
                }
                io.reactivex.plugins.a.Y(e4);
            }
            return scheduledRunnable;
        }
        return scheduledRunnable;
    }

    public io.reactivex.disposables.c f(Runnable runnable, long j4, TimeUnit timeUnit) {
        Future<?> schedule;
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(io.reactivex.plugins.a.b0(runnable));
        try {
            if (j4 <= 0) {
                schedule = this.f75718a.submit(scheduledDirectTask);
            } else {
                schedule = this.f75718a.schedule(scheduledDirectTask, j4, timeUnit);
            }
            scheduledDirectTask.setFuture(schedule);
            return scheduledDirectTask;
        } catch (RejectedExecutionException e4) {
            io.reactivex.plugins.a.Y(e4);
            return EmptyDisposable.INSTANCE;
        }
    }

    public io.reactivex.disposables.c g(Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        Future<?> schedule;
        Runnable b02 = io.reactivex.plugins.a.b0(runnable);
        if (j10 <= 0) {
            f fVar = new f(b02, this.f75718a);
            try {
                if (j4 <= 0) {
                    schedule = this.f75718a.submit(fVar);
                } else {
                    schedule = this.f75718a.schedule(fVar, j4, timeUnit);
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
            scheduledDirectPeriodicTask.setFuture(this.f75718a.scheduleAtFixedRate(scheduledDirectPeriodicTask, j4, j10, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e10) {
            io.reactivex.plugins.a.Y(e10);
            return EmptyDisposable.INSTANCE;
        }
    }

    public void h() {
        if (this.f75719b) {
            return;
        }
        this.f75719b = true;
        this.f75718a.shutdown();
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75719b;
    }
}
