package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: TrampolineScheduler.java */
/* loaded from: classes4.dex */
public final class o extends h0 {

    /* renamed from: c  reason: collision with root package name */
    private static final o f75752c = new o();

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f75753a;

        /* renamed from: b  reason: collision with root package name */
        private final c f75754b;

        /* renamed from: c  reason: collision with root package name */
        private final long f75755c;

        a(Runnable runnable, c cVar, long j4) {
            this.f75753a = runnable;
            this.f75754b = cVar;
            this.f75755c = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f75754b.f75763d) {
                return;
            }
            long a10 = this.f75754b.a(TimeUnit.MILLISECONDS);
            long j4 = this.f75755c;
            if (j4 > a10) {
                try {
                    Thread.sleep(j4 - a10);
                } catch (InterruptedException e4) {
                    Thread.currentThread().interrupt();
                    io.reactivex.plugins.a.Y(e4);
                    return;
                }
            }
            if (this.f75754b.f75763d) {
                return;
            }
            this.f75753a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f75756a;

        /* renamed from: b  reason: collision with root package name */
        final long f75757b;

        /* renamed from: c  reason: collision with root package name */
        final int f75758c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f75759d;

        b(Runnable runnable, Long l10, int i4) {
            this.f75756a = runnable;
            this.f75757b = l10.longValue();
            this.f75758c = i4;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            int b10 = io.reactivex.internal.functions.b.b(this.f75757b, bVar.f75757b);
            return b10 == 0 ? io.reactivex.internal.functions.b.a(this.f75758c, bVar.f75758c) : b10;
        }
    }

    /* compiled from: TrampolineScheduler.java */
    /* loaded from: classes4.dex */
    static final class c extends h0.c implements io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final PriorityBlockingQueue<b> f75760a = new PriorityBlockingQueue<>();

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f75761b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f75762c = new AtomicInteger();

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f75763d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TrampolineScheduler.java */
        /* loaded from: classes4.dex */
        public final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f75764a;

            a(b bVar) {
                this.f75764a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f75764a.f75759d = true;
                c.this.f75760a.remove(this.f75764a);
            }
        }

        c() {
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            return e(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            long a10 = a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j4);
            return e(new a(runnable, this, a10), a10);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75763d = true;
        }

        io.reactivex.disposables.c e(Runnable runnable, long j4) {
            if (this.f75763d) {
                return EmptyDisposable.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j4), this.f75762c.incrementAndGet());
            this.f75760a.add(bVar);
            if (this.f75761b.getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f75763d) {
                    b poll = this.f75760a.poll();
                    if (poll == null) {
                        i4 = this.f75761b.addAndGet(-i4);
                        if (i4 == 0) {
                            return EmptyDisposable.INSTANCE;
                        }
                    } else if (!poll.f75759d) {
                        poll.f75756a.run();
                    }
                }
                this.f75760a.clear();
                return EmptyDisposable.INSTANCE;
            }
            return io.reactivex.disposables.d.f(new a(bVar));
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75763d;
        }
    }

    o() {
    }

    public static o l() {
        return f75752c;
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new c();
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c f(@m7.e Runnable runnable) {
        io.reactivex.plugins.a.b0(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j4);
            io.reactivex.plugins.a.b0(runnable).run();
        } catch (InterruptedException e4) {
            Thread.currentThread().interrupt();
            io.reactivex.plugins.a.Y(e4);
        }
        return EmptyDisposable.INSTANCE;
    }
}
