package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import p7.e;

/* compiled from: TestScheduler.java */
/* loaded from: classes4.dex */
public final class c extends o0 {

    /* renamed from: b  reason: collision with root package name */
    final Queue<b> f81524b = new PriorityBlockingQueue(11);

    /* renamed from: c  reason: collision with root package name */
    long f81525c;

    /* renamed from: d  reason: collision with root package name */
    volatile long f81526d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes4.dex */
    public final class a extends o0.c {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f81527a;

        /* compiled from: TestScheduler.java */
        /* renamed from: io.reactivex.rxjava3.schedulers.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0699a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f81529a;

            RunnableC0699a(b timedAction) {
                this.f81529a = timedAction;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.f81524b.remove(this.f81529a);
            }
        }

        a() {
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        public long a(@e TimeUnit unit) {
            return c.this.e(unit);
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @e
        public f b(@e Runnable run) {
            if (this.f81527a) {
                return EmptyDisposable.INSTANCE;
            }
            c cVar = c.this;
            long j4 = cVar.f81525c;
            cVar.f81525c = 1 + j4;
            b bVar = new b(this, 0L, run, j4);
            c.this.f81524b.add(bVar);
            return io.reactivex.rxjava3.disposables.e.g(new RunnableC0699a(bVar));
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @e
        public f c(@e Runnable run, long delayTime, @e TimeUnit unit) {
            if (this.f81527a) {
                return EmptyDisposable.INSTANCE;
            }
            long nanos = c.this.f81526d + unit.toNanos(delayTime);
            c cVar = c.this;
            long j4 = cVar.f81525c;
            cVar.f81525c = 1 + j4;
            b bVar = new b(this, nanos, run, j4);
            c.this.f81524b.add(bVar);
            return io.reactivex.rxjava3.disposables.e.g(new RunnableC0699a(bVar));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f81527a = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81527a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TestScheduler.java */
    /* loaded from: classes4.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final long f81531a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f81532b;

        /* renamed from: c  reason: collision with root package name */
        final a f81533c;

        /* renamed from: d  reason: collision with root package name */
        final long f81534d;

        b(a scheduler, long time, Runnable run, long count) {
            this.f81531a = time;
            this.f81532b = run;
            this.f81533c = scheduler;
            this.f81534d = count;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b o9) {
            long j4 = this.f81531a;
            long j10 = o9.f81531a;
            if (j4 == j10) {
                return Long.compare(this.f81534d, o9.f81534d);
            }
            return Long.compare(j4, j10);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f81531a), this.f81532b.toString());
        }
    }

    public c() {
    }

    private void o(long targetTimeInNanoseconds) {
        while (true) {
            b peek = this.f81524b.peek();
            if (peek == null) {
                break;
            }
            long j4 = peek.f81531a;
            if (j4 > targetTimeInNanoseconds) {
                break;
            }
            if (j4 == 0) {
                j4 = this.f81526d;
            }
            this.f81526d = j4;
            this.f81524b.remove(peek);
            if (!peek.f81533c.f81527a) {
                peek.f81532b.run();
            }
        }
        this.f81526d = targetTimeInNanoseconds;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @e
    public o0.c d() {
        return new a();
    }

    @Override // io.reactivex.rxjava3.core.o0
    public long e(@e TimeUnit unit) {
        return unit.convert(this.f81526d, TimeUnit.NANOSECONDS);
    }

    public void l(long delayTime, TimeUnit unit) {
        m(this.f81526d + unit.toNanos(delayTime), TimeUnit.NANOSECONDS);
    }

    public void m(long delayTime, TimeUnit unit) {
        o(unit.toNanos(delayTime));
    }

    public void n() {
        o(this.f81526d);
    }

    public c(long delayTime, TimeUnit unit) {
        this.f81526d = unit.toNanos(delayTime);
    }
}
