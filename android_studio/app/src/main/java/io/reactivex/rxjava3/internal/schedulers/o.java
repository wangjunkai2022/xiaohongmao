package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: TrampolineScheduler.java */
/* loaded from: classes4.dex */
public final class o extends o0 {

    /* renamed from: b  reason: collision with root package name */
    private static final o f81167b = new o();

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f81168a;

        /* renamed from: b  reason: collision with root package name */
        private final c f81169b;

        /* renamed from: c  reason: collision with root package name */
        private final long f81170c;

        a(Runnable run, c worker, long execTime) {
            this.f81168a = run;
            this.f81169b = worker;
            this.f81170c = execTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f81169b.f81178d) {
                return;
            }
            long a10 = this.f81169b.a(TimeUnit.MILLISECONDS);
            long j4 = this.f81170c;
            if (j4 > a10) {
                try {
                    Thread.sleep(j4 - a10);
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    io.reactivex.rxjava3.plugins.a.Y(e4);
                    return;
                }
            }
            if (this.f81169b.f81178d) {
                return;
            }
            this.f81168a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f81171a;

        /* renamed from: b  reason: collision with root package name */
        final long f81172b;

        /* renamed from: c  reason: collision with root package name */
        final int f81173c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f81174d;

        b(Runnable run, Long execTime, int count) {
            this.f81171a = run;
            this.f81172b = execTime.longValue();
            this.f81173c = count;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b that) {
            int compare = Long.compare(this.f81172b, that.f81172b);
            return compare == 0 ? Integer.compare(this.f81173c, that.f81173c) : compare;
        }
    }

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    static final class c extends o0.c implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final PriorityBlockingQueue<b> f81175a = new PriorityBlockingQueue<>();

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f81176b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f81177c = new AtomicInteger();

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f81178d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TrampolineScheduler.java */
        /* loaded from: classes4.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f81179a;

            a(b timedRunnable) {
                this.f81179a = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f81179a.f81174d = true;
                c.this.f81175a.remove(this.f81179a);
            }
        }

        c() {
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e Runnable action) {
            return e(action, a(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable action, long delayTime, @p7.e TimeUnit unit) {
            long a10 = a(TimeUnit.MILLISECONDS) + unit.toMillis(delayTime);
            return e(new a(action, this, a10), a10);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f81178d = true;
        }

        io.reactivex.rxjava3.disposables.f e(Runnable action, long execTime) {
            if (this.f81178d) {
                return EmptyDisposable.INSTANCE;
            }
            b bVar = new b(action, Long.valueOf(execTime), this.f81177c.incrementAndGet());
            this.f81175a.add(bVar);
            if (this.f81176b.getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f81178d) {
                    b poll = this.f81175a.poll();
                    if (poll == null) {
                        i4 = this.f81176b.addAndGet(-i4);
                        if (i4 == 0) {
                            return EmptyDisposable.INSTANCE;
                        }
                    } else if (!poll.f81174d) {
                        poll.f81171a.run();
                    }
                }
                this.f81175a.clear();
                return EmptyDisposable.INSTANCE;
            }
            return io.reactivex.rxjava3.disposables.e.g(new a(bVar));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81178d;
        }
    }

    o() {
    }

    public static o l() {
        return f81167b;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new c();
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f f(@p7.e Runnable run) {
        io.reactivex.rxjava3.plugins.a.b0(run).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, long delay, TimeUnit unit) {
        try {
            unit.sleep(delay);
            io.reactivex.rxjava3.plugins.a.b0(run).run();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }
        return EmptyDisposable.INSTANCE;
    }
}
