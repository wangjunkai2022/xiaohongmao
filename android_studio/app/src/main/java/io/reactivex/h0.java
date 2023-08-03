package io.reactivex;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

/* compiled from: Scheduler.java */
/* loaded from: classes3.dex */
public abstract class h0 {

    /* renamed from: a  reason: collision with root package name */
    static boolean f71105a = Boolean.getBoolean("rx2.scheduler.use-nanotime");

    /* renamed from: b  reason: collision with root package name */
    static final long f71106b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scheduler.java */
    /* loaded from: classes3.dex */
    public static final class a implements io.reactivex.disposables.c, Runnable, io.reactivex.schedulers.a {
        @m7.e

        /* renamed from: a  reason: collision with root package name */
        final Runnable f71107a;
        @m7.e

        /* renamed from: b  reason: collision with root package name */
        final c f71108b;
        @m7.f

        /* renamed from: c  reason: collision with root package name */
        Thread f71109c;

        a(@m7.e Runnable runnable, @m7.e c cVar) {
            this.f71107a = runnable;
            this.f71108b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f71109c == Thread.currentThread()) {
                c cVar = this.f71108b;
                if (cVar instanceof io.reactivex.internal.schedulers.i) {
                    ((io.reactivex.internal.schedulers.i) cVar).h();
                    return;
                }
            }
            this.f71108b.dispose();
        }

        @Override // io.reactivex.schedulers.a
        public Runnable getWrappedRunnable() {
            return this.f71107a;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71108b.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f71109c = Thread.currentThread();
            try {
                this.f71107a.run();
            } finally {
                dispose();
                this.f71109c = null;
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes3.dex */
    static final class b implements io.reactivex.disposables.c, Runnable, io.reactivex.schedulers.a {
        @m7.e

        /* renamed from: a  reason: collision with root package name */
        final Runnable f71110a;
        @m7.e

        /* renamed from: b  reason: collision with root package name */
        final c f71111b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f71112c;

        b(@m7.e Runnable runnable, @m7.e c cVar) {
            this.f71110a = runnable;
            this.f71111b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71112c = true;
            this.f71111b.dispose();
        }

        @Override // io.reactivex.schedulers.a
        public Runnable getWrappedRunnable() {
            return this.f71110a;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71112c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f71112c) {
                return;
            }
            try {
                this.f71110a.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71111b.dispose();
                throw io.reactivex.internal.util.g.f(th);
            }
        }
    }

    /* compiled from: Scheduler.java */
    /* loaded from: classes3.dex */
    public static abstract class c implements io.reactivex.disposables.c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Scheduler.java */
        /* loaded from: classes3.dex */
        public final class a implements Runnable, io.reactivex.schedulers.a {
            @m7.e

            /* renamed from: a  reason: collision with root package name */
            final Runnable f71113a;
            @m7.e

            /* renamed from: b  reason: collision with root package name */
            final SequentialDisposable f71114b;

            /* renamed from: c  reason: collision with root package name */
            final long f71115c;

            /* renamed from: d  reason: collision with root package name */
            long f71116d;

            /* renamed from: e  reason: collision with root package name */
            long f71117e;

            /* renamed from: f  reason: collision with root package name */
            long f71118f;

            a(long j4, @m7.e Runnable runnable, long j10, @m7.e SequentialDisposable sequentialDisposable, long j11) {
                this.f71113a = runnable;
                this.f71114b = sequentialDisposable;
                this.f71115c = j11;
                this.f71117e = j10;
                this.f71118f = j4;
            }

            @Override // io.reactivex.schedulers.a
            public Runnable getWrappedRunnable() {
                return this.f71113a;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j4;
                this.f71113a.run();
                if (this.f71114b.isDisposed()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long a10 = cVar.a(timeUnit);
                long j10 = h0.f71106b;
                long j11 = this.f71117e;
                if (a10 + j10 >= j11) {
                    long j12 = this.f71115c;
                    if (a10 < j11 + j12 + j10) {
                        long j13 = this.f71118f;
                        long j14 = this.f71116d + 1;
                        this.f71116d = j14;
                        j4 = j13 + (j14 * j12);
                        this.f71117e = a10;
                        this.f71114b.replace(c.this.c(this, j4 - a10, timeUnit));
                    }
                }
                long j15 = this.f71115c;
                long j16 = a10 + j15;
                long j17 = this.f71116d + 1;
                this.f71116d = j17;
                this.f71118f = j16 - (j15 * j17);
                j4 = j16;
                this.f71117e = a10;
                this.f71114b.replace(c.this.c(this, j4 - a10, timeUnit));
            }
        }

        public long a(@m7.e TimeUnit timeUnit) {
            return h0.c(timeUnit);
        }

        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            return c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @m7.e
        public abstract io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit);

        @m7.e
        public io.reactivex.disposables.c d(@m7.e Runnable runnable, long j4, long j10, @m7.e TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable b02 = io.reactivex.plugins.a.b0(runnable);
            long nanos = timeUnit.toNanos(j10);
            long a10 = a(TimeUnit.NANOSECONDS);
            io.reactivex.disposables.c c10 = c(new a(a10 + timeUnit.toNanos(j4), b02, a10, sequentialDisposable2, nanos), j4, timeUnit);
            if (c10 == EmptyDisposable.INSTANCE) {
                return c10;
            }
            sequentialDisposable.replace(c10);
            return sequentialDisposable2;
        }
    }

    public static long b() {
        return f71106b;
    }

    static long c(TimeUnit timeUnit) {
        if (!f71105a) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
        return timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    @m7.e
    public abstract c d();

    public long e(@m7.e TimeUnit timeUnit) {
        return c(timeUnit);
    }

    @m7.e
    public io.reactivex.disposables.c f(@m7.e Runnable runnable) {
        return g(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
        c d4 = d();
        a aVar = new a(io.reactivex.plugins.a.b0(runnable), d4);
        d4.c(aVar, j4, timeUnit);
        return aVar;
    }

    @m7.e
    public io.reactivex.disposables.c h(@m7.e Runnable runnable, long j4, long j10, @m7.e TimeUnit timeUnit) {
        c d4 = d();
        b bVar = new b(io.reactivex.plugins.a.b0(runnable), d4);
        io.reactivex.disposables.c d10 = d4.d(bVar, j4, j10, timeUnit);
        return d10 == EmptyDisposable.INSTANCE ? d10 : bVar;
    }

    public void i() {
    }

    public void j() {
    }

    @m7.e
    public <S extends h0 & io.reactivex.disposables.c> S k(@m7.e n7.o<j<j<io.reactivex.a>>, io.reactivex.a> oVar) {
        return new io.reactivex.internal.schedulers.m(oVar, this);
    }
}
