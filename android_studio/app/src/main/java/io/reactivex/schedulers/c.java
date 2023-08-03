package io.reactivex.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import m7.e;

/* compiled from: TestScheduler.java */
/* loaded from: classes4.dex */
public final class c extends h0 {

    /* renamed from: c  reason: collision with root package name */
    final Queue<b> f81673c = new PriorityBlockingQueue(11);

    /* renamed from: d  reason: collision with root package name */
    long f81674d;

    /* renamed from: e  reason: collision with root package name */
    volatile long f81675e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes4.dex */
    public final class a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f81676a;

        /* compiled from: TestScheduler.java */
        /* renamed from: io.reactivex.schedulers.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0703a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f81678a;

            RunnableC0703a(b bVar) {
                this.f81678a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.f81673c.remove(this.f81678a);
            }
        }

        a() {
        }

        @Override // io.reactivex.h0.c
        public long a(@e TimeUnit timeUnit) {
            return c.this.e(timeUnit);
        }

        @Override // io.reactivex.h0.c
        @e
        public io.reactivex.disposables.c b(@e Runnable runnable) {
            if (this.f81676a) {
                return EmptyDisposable.INSTANCE;
            }
            c cVar = c.this;
            long j4 = cVar.f81674d;
            cVar.f81674d = 1 + j4;
            b bVar = new b(this, 0L, runnable, j4);
            c.this.f81673c.add(bVar);
            return io.reactivex.disposables.d.f(new RunnableC0703a(bVar));
        }

        @Override // io.reactivex.h0.c
        @e
        public io.reactivex.disposables.c c(@e Runnable runnable, long j4, @e TimeUnit timeUnit) {
            if (this.f81676a) {
                return EmptyDisposable.INSTANCE;
            }
            long nanos = c.this.f81675e + timeUnit.toNanos(j4);
            c cVar = c.this;
            long j10 = cVar.f81674d;
            cVar.f81674d = 1 + j10;
            b bVar = new b(this, nanos, runnable, j10);
            c.this.f81673c.add(bVar);
            return io.reactivex.disposables.d.f(new RunnableC0703a(bVar));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f81676a = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f81676a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes4.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final long f81680a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f81681b;

        /* renamed from: c  reason: collision with root package name */
        final a f81682c;

        /* renamed from: d  reason: collision with root package name */
        final long f81683d;

        b(a aVar, long j4, Runnable runnable, long j10) {
            this.f81680a = j4;
            this.f81681b = runnable;
            this.f81682c = aVar;
            this.f81683d = j10;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            long j4 = this.f81680a;
            long j10 = bVar.f81680a;
            if (j4 == j10) {
                return io.reactivex.internal.functions.b.b(this.f81683d, bVar.f81683d);
            }
            return io.reactivex.internal.functions.b.b(j4, j10);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f81680a), this.f81681b.toString());
        }
    }

    public c() {
    }

    private void o(long j4) {
        while (true) {
            b peek = this.f81673c.peek();
            if (peek == null) {
                break;
            }
            long j10 = peek.f81680a;
            if (j10 > j4) {
                break;
            }
            if (j10 == 0) {
                j10 = this.f81675e;
            }
            this.f81675e = j10;
            this.f81673c.remove(peek);
            if (!peek.f81682c.f81676a) {
                peek.f81681b.run();
            }
        }
        this.f81675e = j4;
    }

    @Override // io.reactivex.h0
    @e
    public h0.c d() {
        return new a();
    }

    @Override // io.reactivex.h0
    public long e(@e TimeUnit timeUnit) {
        return timeUnit.convert(this.f81675e, TimeUnit.NANOSECONDS);
    }

    public void l(long j4, TimeUnit timeUnit) {
        m(this.f81675e + timeUnit.toNanos(j4), TimeUnit.NANOSECONDS);
    }

    public void m(long j4, TimeUnit timeUnit) {
        o(timeUnit.toNanos(j4));
    }

    public void n() {
        o(this.f81675e);
    }

    public c(long j4, TimeUnit timeUnit) {
        this.f81675e = timeUnit.toNanos(j4);
    }
}
