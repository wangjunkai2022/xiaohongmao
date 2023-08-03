package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: UnicastProcessor.java */
/* loaded from: classes4.dex */
public final class h<T> extends c<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.internal.queue.b<T> f81502b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f81503c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f81504d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f81505e;

    /* renamed from: f  reason: collision with root package name */
    Throwable f81506f;

    /* renamed from: h  reason: collision with root package name */
    volatile boolean f81508h;

    /* renamed from: l  reason: collision with root package name */
    boolean f81512l;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.d<? super T>> f81507g = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    final AtomicBoolean f81509i = new AtomicBoolean();

    /* renamed from: j  reason: collision with root package name */
    final BasicIntQueueSubscription<T> f81510j = new a();

    /* renamed from: k  reason: collision with root package name */
    final AtomicLong f81511k = new AtomicLong();

    /* compiled from: UnicastProcessor.java */
    /* loaded from: classes4.dex */
    final class a extends BasicIntQueueSubscription<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81513c = -4896760517184205454L;

        a() {
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (h.this.f81508h) {
                return;
            }
            h.this.f81508h = true;
            h.this.r9();
            h.this.f81507g.lazySet(null);
            if (h.this.f81510j.getAndIncrement() == 0) {
                h.this.f81507g.lazySet(null);
                h hVar = h.this;
                if (hVar.f81512l) {
                    return;
                }
                hVar.f81502b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            h.this.f81502b.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return h.this.f81502b.isEmpty();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return h.this.f81502b.poll();
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(h.this.f81511k, n9);
                h.this.s9();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int requestedMode) {
            if ((requestedMode & 2) != 0) {
                h.this.f81512l = true;
                return 2;
            }
            return 0;
        }
    }

    h(int capacityHint, Runnable onTerminate, boolean delayError) {
        this.f81502b = new io.reactivex.rxjava3.internal.queue.b<>(capacityHint);
        this.f81503c = new AtomicReference<>(onTerminate);
        this.f81504d = delayError;
    }

    @p7.c
    @p7.e
    public static <T> h<T> m9() {
        return new h<>(m.V(), null, true);
    }

    @p7.c
    @p7.e
    public static <T> h<T> n9(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new h<>(capacityHint, null, true);
    }

    @p7.c
    @p7.e
    public static <T> h<T> o9(int capacityHint, @p7.e Runnable onTerminate) {
        return p9(capacityHint, onTerminate, true);
    }

    @p7.c
    @p7.e
    public static <T> h<T> p9(int capacityHint, @p7.e Runnable onTerminate, boolean delayError) {
        Objects.requireNonNull(onTerminate, "onTerminate");
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new h<>(capacityHint, onTerminate, delayError);
    }

    @p7.c
    @p7.e
    public static <T> h<T> q9(boolean delayError) {
        return new h<>(m.V(), null, delayError);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (!this.f81509i.get() && this.f81509i.compareAndSet(false, true)) {
            s9.onSubscribe(this.f81510j);
            this.f81507g.set(s9);
            if (this.f81508h) {
                this.f81507g.lazySet(null);
                return;
            } else {
                s9();
                return;
            }
        }
        EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), s9);
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    @p7.f
    public Throwable g9() {
        if (this.f81505e) {
            return this.f81506f;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        return this.f81505e && this.f81506f == null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81507g.get() != null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        return this.f81505e && this.f81506f != null;
    }

    boolean l9(boolean failFast, boolean d4, boolean empty, org.reactivestreams.d<? super T> a10, io.reactivex.rxjava3.internal.queue.b<T> q9) {
        if (this.f81508h) {
            q9.clear();
            this.f81507g.lazySet(null);
            return true;
        } else if (d4) {
            if (failFast && this.f81506f != null) {
                q9.clear();
                this.f81507g.lazySet(null);
                a10.onError(this.f81506f);
                return true;
            } else if (empty) {
                Throwable th = this.f81506f;
                this.f81507g.lazySet(null);
                if (th != null) {
                    a10.onError(th);
                } else {
                    a10.onComplete();
                }
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81505e || this.f81508h) {
            return;
        }
        this.f81505e = true;
        r9();
        s9();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (!this.f81505e && !this.f81508h) {
            this.f81506f = t9;
            this.f81505e = true;
            r9();
            s9();
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81505e || this.f81508h) {
            return;
        }
        this.f81502b.offer(t9);
        s9();
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (!this.f81505e && !this.f81508h) {
            s9.request(Long.MAX_VALUE);
        } else {
            s9.cancel();
        }
    }

    void r9() {
        Runnable andSet = this.f81503c.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    void s9() {
        if (this.f81510j.getAndIncrement() != 0) {
            return;
        }
        int i4 = 1;
        org.reactivestreams.d<? super T> dVar = this.f81507g.get();
        while (dVar == null) {
            i4 = this.f81510j.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
            dVar = this.f81507g.get();
        }
        if (this.f81512l) {
            t9(dVar);
        } else {
            u9(dVar);
        }
    }

    void t9(org.reactivestreams.d<? super T> a10) {
        io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f81502b;
        int i4 = 1;
        boolean z9 = !this.f81504d;
        while (!this.f81508h) {
            boolean z10 = this.f81505e;
            if (z9 && z10 && this.f81506f != null) {
                bVar.clear();
                this.f81507g.lazySet(null);
                a10.onError(this.f81506f);
                return;
            }
            a10.onNext(null);
            if (z10) {
                this.f81507g.lazySet(null);
                Throwable th = this.f81506f;
                if (th != null) {
                    a10.onError(th);
                    return;
                } else {
                    a10.onComplete();
                    return;
                }
            }
            i4 = this.f81510j.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
        }
        this.f81507g.lazySet(null);
    }

    void u9(org.reactivestreams.d<? super T> a10) {
        int i4;
        long j4;
        io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f81502b;
        boolean z9 = !this.f81504d;
        int i10 = 1;
        while (true) {
            long j10 = this.f81511k.get();
            long j11 = 0;
            while (true) {
                i4 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
                if (i4 == 0) {
                    j4 = j11;
                    break;
                }
                boolean z10 = this.f81505e;
                T poll = bVar.poll();
                boolean z11 = poll == null;
                j4 = j11;
                if (l9(z9, z10, z11, a10, bVar)) {
                    return;
                }
                if (z11) {
                    break;
                }
                a10.onNext(poll);
                j11 = 1 + j4;
            }
            if (i4 == 0 && l9(z9, this.f81505e, bVar.isEmpty(), a10, bVar)) {
                return;
            }
            if (j4 != 0 && j10 != Long.MAX_VALUE) {
                this.f81511k.addAndGet(-j4);
            }
            i10 = this.f81510j.addAndGet(-i10);
            if (i10 == 0) {
                return;
            }
        }
    }
}
