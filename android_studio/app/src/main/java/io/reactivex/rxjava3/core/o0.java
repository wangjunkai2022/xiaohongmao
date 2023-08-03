package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* compiled from: Scheduler.java */
/* loaded from: classes4.dex */
public abstract class o0 {

    /* renamed from: a  reason: collision with root package name */
    static final long f76134a = c(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scheduler.java */
    /* loaded from: classes4.dex */
    public static final class a implements io.reactivex.rxjava3.disposables.f, Runnable, io.reactivex.rxjava3.schedulers.a {
        @p7.e

        /* renamed from: a  reason: collision with root package name */
        final Runnable f76135a;
        @p7.e

        /* renamed from: b  reason: collision with root package name */
        final c f76136b;
        @p7.f

        /* renamed from: c  reason: collision with root package name */
        Thread f76137c;

        a(@p7.e Runnable decoratedRun, @p7.e c w9) {
            this.f76135a = decoratedRun;
            this.f76136b = w9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f76137c == Thread.currentThread()) {
                c cVar = this.f76136b;
                if (cVar instanceof io.reactivex.rxjava3.internal.schedulers.i) {
                    ((io.reactivex.rxjava3.internal.schedulers.i) cVar).h();
                    return;
                }
            }
            this.f76136b.dispose();
        }

        @Override // io.reactivex.rxjava3.schedulers.a
        public Runnable getWrappedRunnable() {
            return this.f76135a;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76136b.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f76137c = Thread.currentThread();
            try {
                this.f76135a.run();
            } finally {
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes4.dex */
    static final class b implements io.reactivex.rxjava3.disposables.f, Runnable, io.reactivex.rxjava3.schedulers.a {
        @p7.e

        /* renamed from: a  reason: collision with root package name */
        final Runnable f76138a;
        @p7.e

        /* renamed from: b  reason: collision with root package name */
        final c f76139b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f76140c;

        b(@p7.e Runnable run, @p7.e c worker) {
            this.f76138a = run;
            this.f76139b = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76140c = true;
            this.f76139b.dispose();
        }

        @Override // io.reactivex.rxjava3.schedulers.a
        public Runnable getWrappedRunnable() {
            return this.f76138a;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76140c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f76140c) {
                return;
            }
            try {
                this.f76138a.run();
            } catch (Throwable th) {
                dispose();
                io.reactivex.rxjava3.plugins.a.Y(th);
                throw th;
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes4.dex */
    public static abstract class c implements io.reactivex.rxjava3.disposables.f {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Scheduler.java */
        /* loaded from: classes4.dex */
        public final class a implements Runnable, io.reactivex.rxjava3.schedulers.a {
            @p7.e

            /* renamed from: a  reason: collision with root package name */
            final Runnable f76141a;
            @p7.e

            /* renamed from: b  reason: collision with root package name */
            final SequentialDisposable f76142b;

            /* renamed from: c  reason: collision with root package name */
            final long f76143c;

            /* renamed from: d  reason: collision with root package name */
            long f76144d;

            /* renamed from: e  reason: collision with root package name */
            long f76145e;

            /* renamed from: f  reason: collision with root package name */
            long f76146f;

            a(long firstStartInNanoseconds, @p7.e Runnable decoratedRun, long firstNowNanoseconds, @p7.e SequentialDisposable sd, long periodInNanoseconds) {
                this.f76141a = decoratedRun;
                this.f76142b = sd;
                this.f76143c = periodInNanoseconds;
                this.f76145e = firstNowNanoseconds;
                this.f76146f = firstStartInNanoseconds;
            }

            @Override // io.reactivex.rxjava3.schedulers.a
            public Runnable getWrappedRunnable() {
                return this.f76141a;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j4;
                this.f76141a.run();
                if (this.f76142b.isDisposed()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long a10 = cVar.a(timeUnit);
                long j10 = o0.f76134a;
                long j11 = this.f76145e;
                if (a10 + j10 >= j11) {
                    long j12 = this.f76143c;
                    if (a10 < j11 + j12 + j10) {
                        long j13 = this.f76146f;
                        long j14 = this.f76144d + 1;
                        this.f76144d = j14;
                        j4 = j13 + (j14 * j12);
                        this.f76145e = a10;
                        this.f76142b.replace(c.this.c(this, j4 - a10, timeUnit));
                    }
                }
                long j15 = this.f76143c;
                long j16 = a10 + j15;
                long j17 = this.f76144d + 1;
                this.f76144d = j17;
                this.f76146f = j16 - (j15 * j17);
                j4 = j16;
                this.f76145e = a10;
                this.f76142b.replace(c.this.c(this, j4 - a10, timeUnit));
            }
        }

        public long a(@p7.e TimeUnit unit) {
            return unit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e Runnable run) {
            return c(run, 0L, TimeUnit.NANOSECONDS);
        }

        @p7.e
        public abstract io.reactivex.rxjava3.disposables.f c(@p7.e Runnable run, long delay, @p7.e TimeUnit unit);

        @p7.e
        public io.reactivex.rxjava3.disposables.f d(@p7.e Runnable run, final long initialDelay, final long period, @p7.e final TimeUnit unit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable b02 = io.reactivex.rxjava3.plugins.a.b0(run);
            long nanos = unit.toNanos(period);
            long a10 = a(TimeUnit.NANOSECONDS);
            io.reactivex.rxjava3.disposables.f c10 = c(new a(a10 + unit.toNanos(initialDelay), b02, a10, sequentialDisposable2, nanos), initialDelay, unit);
            if (c10 == EmptyDisposable.INSTANCE) {
                return c10;
            }
            sequentialDisposable.replace(c10);
            return sequentialDisposable2;
        }
    }

    public static long b() {
        return f76134a;
    }

    static long c(long time, String timeUnit) {
        if ("seconds".equalsIgnoreCase(timeUnit)) {
            return TimeUnit.SECONDS.toNanos(time);
        }
        if ("milliseconds".equalsIgnoreCase(timeUnit)) {
            return TimeUnit.MILLISECONDS.toNanos(time);
        }
        return TimeUnit.MINUTES.toNanos(time);
    }

    @p7.e
    public abstract c d();

    public long e(@p7.e TimeUnit unit) {
        return unit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    @p7.e
    public io.reactivex.rxjava3.disposables.f f(@p7.e Runnable run) {
        return g(run, 0L, TimeUnit.NANOSECONDS);
    }

    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, long delay, @p7.e TimeUnit unit) {
        c d4 = d();
        a aVar = new a(io.reactivex.rxjava3.plugins.a.b0(run), d4);
        d4.c(aVar, delay, unit);
        return aVar;
    }

    @p7.e
    public io.reactivex.rxjava3.disposables.f h(@p7.e Runnable run, long initialDelay, long period, @p7.e TimeUnit unit) {
        c d4 = d();
        b bVar = new b(io.reactivex.rxjava3.plugins.a.b0(run), d4);
        io.reactivex.rxjava3.disposables.f d10 = d4.d(bVar, initialDelay, period, unit);
        return d10 == EmptyDisposable.INSTANCE ? d10 : bVar;
    }

    public void i() {
    }

    public void j() {
    }

    @p7.e
    public <S extends o0 & io.reactivex.rxjava3.disposables.f> S k(@p7.e q7.o<m<m<io.reactivex.rxjava3.core.a>>, io.reactivex.rxjava3.core.a> combine) {
        Objects.requireNonNull(combine, "combine is null");
        return new io.reactivex.rxjava3.internal.schedulers.m(combine, this);
    }
}
