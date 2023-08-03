package io.reactivex.processors;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: UnicastProcessor.java */
/* loaded from: classes4.dex */
public final class h<T> extends c<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.internal.queue.b<T> f76093b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f76094c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f76095d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f76096e;

    /* renamed from: f  reason: collision with root package name */
    Throwable f76097f;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.d<? super T>> f76098g;

    /* renamed from: h  reason: collision with root package name */
    volatile boolean f76099h;

    /* renamed from: i  reason: collision with root package name */
    final AtomicBoolean f76100i;

    /* renamed from: j  reason: collision with root package name */
    final BasicIntQueueSubscription<T> f76101j;

    /* renamed from: k  reason: collision with root package name */
    final AtomicLong f76102k;

    /* renamed from: l  reason: collision with root package name */
    boolean f76103l;

    /* compiled from: UnicastProcessor.java */
    /* loaded from: classes4.dex */
    final class a extends BasicIntQueueSubscription<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f76104c = -4896760517184205454L;

        a() {
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (h.this.f76099h) {
                return;
            }
            h.this.f76099h = true;
            h.this.X8();
            h.this.f76098g.lazySet(null);
            if (h.this.f76101j.getAndIncrement() == 0) {
                h.this.f76098g.lazySet(null);
                h hVar = h.this;
                if (hVar.f76103l) {
                    return;
                }
                hVar.f76093b.clear();
            }
        }

        @Override // o7.o
        public void clear() {
            h.this.f76093b.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return h.this.f76093b.isEmpty();
        }

        @Override // o7.o
        @m7.f
        public T poll() {
            return h.this.f76093b.poll();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(h.this.f76102k, j4);
                h.this.Y8();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                h.this.f76103l = true;
                return 2;
            }
            return 0;
        }
    }

    h(int i4) {
        this(i4, null, true);
    }

    @m7.e
    @m7.c
    public static <T> h<T> S8() {
        return new h<>(j.Y());
    }

    @m7.e
    @m7.c
    public static <T> h<T> T8(int i4) {
        return new h<>(i4);
    }

    @m7.e
    @m7.c
    public static <T> h<T> U8(int i4, Runnable runnable) {
        io.reactivex.internal.functions.b.g(runnable, "onTerminate");
        return new h<>(i4, runnable);
    }

    @m7.e
    @m7.c
    public static <T> h<T> V8(int i4, Runnable runnable, boolean z9) {
        io.reactivex.internal.functions.b.g(runnable, "onTerminate");
        return new h<>(i4, runnable, z9);
    }

    @m7.e
    @m7.c
    public static <T> h<T> W8(boolean z9) {
        return new h<>(j.Y(), null, z9);
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        if (this.f76096e) {
            return this.f76097f;
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return this.f76096e && this.f76097f == null;
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76098g.get() != null;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return this.f76096e && this.f76097f != null;
    }

    boolean R8(boolean z9, boolean z10, boolean z11, org.reactivestreams.d<? super T> dVar, io.reactivex.internal.queue.b<T> bVar) {
        if (this.f76099h) {
            bVar.clear();
            this.f76098g.lazySet(null);
            return true;
        } else if (z10) {
            if (z9 && this.f76097f != null) {
                bVar.clear();
                this.f76098g.lazySet(null);
                dVar.onError(this.f76097f);
                return true;
            } else if (z11) {
                Throwable th = this.f76097f;
                this.f76098g.lazySet(null);
                if (th != null) {
                    dVar.onError(th);
                } else {
                    dVar.onComplete();
                }
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    void X8() {
        Runnable andSet = this.f76094c.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    void Y8() {
        if (this.f76101j.getAndIncrement() != 0) {
            return;
        }
        int i4 = 1;
        org.reactivestreams.d<? super T> dVar = this.f76098g.get();
        while (dVar == null) {
            i4 = this.f76101j.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
            dVar = this.f76098g.get();
        }
        if (this.f76103l) {
            Z8(dVar);
        } else {
            a9(dVar);
        }
    }

    void Z8(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.internal.queue.b<T> bVar = this.f76093b;
        int i4 = 1;
        boolean z9 = !this.f76095d;
        while (!this.f76099h) {
            boolean z10 = this.f76096e;
            if (z9 && z10 && this.f76097f != null) {
                bVar.clear();
                this.f76098g.lazySet(null);
                dVar.onError(this.f76097f);
                return;
            }
            dVar.onNext(null);
            if (z10) {
                this.f76098g.lazySet(null);
                Throwable th = this.f76097f;
                if (th != null) {
                    dVar.onError(th);
                    return;
                } else {
                    dVar.onComplete();
                    return;
                }
            }
            i4 = this.f76101j.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
        }
        this.f76098g.lazySet(null);
    }

    void a9(org.reactivestreams.d<? super T> dVar) {
        int i4;
        long j4;
        io.reactivex.internal.queue.b<T> bVar = this.f76093b;
        boolean z9 = !this.f76095d;
        int i10 = 1;
        while (true) {
            long j10 = this.f76102k.get();
            long j11 = 0;
            while (true) {
                i4 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
                if (i4 == 0) {
                    j4 = j11;
                    break;
                }
                boolean z10 = this.f76096e;
                T poll = bVar.poll();
                boolean z11 = poll == null;
                j4 = j11;
                if (R8(z9, z10, z11, dVar, bVar)) {
                    return;
                }
                if (z11) {
                    break;
                }
                dVar.onNext(poll);
                j11 = 1 + j4;
            }
            if (i4 == 0 && R8(z9, this.f76096e, bVar.isEmpty(), dVar, bVar)) {
                return;
            }
            if (j4 != 0 && j10 != Long.MAX_VALUE) {
                this.f76102k.addAndGet(-j4);
            }
            i10 = this.f76101j.addAndGet(-i10);
            if (i10 == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (!this.f76100i.get() && this.f76100i.compareAndSet(false, true)) {
            dVar.onSubscribe(this.f76101j);
            this.f76098g.set(dVar);
            if (this.f76099h) {
                this.f76098g.lazySet(null);
                return;
            } else {
                Y8();
                return;
            }
        }
        EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), dVar);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f76096e || this.f76099h) {
            return;
        }
        this.f76096e = true;
        X8();
        Y8();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f76096e && !this.f76099h) {
            this.f76097f = th;
            this.f76096e = true;
            X8();
            Y8();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76096e || this.f76099h) {
            return;
        }
        this.f76093b.offer(t9);
        Y8();
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (!this.f76096e && !this.f76099h) {
            eVar.request(Long.MAX_VALUE);
        } else {
            eVar.cancel();
        }
    }

    h(int i4, Runnable runnable) {
        this(i4, runnable, true);
    }

    h(int i4, Runnable runnable, boolean z9) {
        this.f76093b = new io.reactivex.internal.queue.b<>(io.reactivex.internal.functions.b.h(i4, "capacityHint"));
        this.f76094c = new AtomicReference<>(runnable);
        this.f76095d = z9;
        this.f76098g = new AtomicReference<>();
        this.f76100i = new AtomicBoolean();
        this.f76101j = new a();
        this.f76102k = new AtomicLong();
    }
}
