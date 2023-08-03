package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableObserveOn.java */
/* loaded from: classes3.dex */
public final class h2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f71981c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71982d;

    /* renamed from: e  reason: collision with root package name */
    final int f71983e;

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes3.dex */
    static abstract class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T>, Runnable {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71984o = -8241002408341274697L;

        /* renamed from: b  reason: collision with root package name */
        final h0.c f71985b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f71986c;

        /* renamed from: d  reason: collision with root package name */
        final int f71987d;

        /* renamed from: e  reason: collision with root package name */
        final int f71988e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f71989f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f71990g;

        /* renamed from: h  reason: collision with root package name */
        o7.o<T> f71991h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f71992i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f71993j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f71994k;

        /* renamed from: l  reason: collision with root package name */
        int f71995l;

        /* renamed from: m  reason: collision with root package name */
        long f71996m;

        /* renamed from: n  reason: collision with root package name */
        boolean f71997n;

        a(h0.c cVar, boolean z9, int i4) {
            this.f71985b = cVar;
            this.f71986c = z9;
            this.f71987d = i4;
            this.f71988e = i4 - (i4 >> 2);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            if (this.f71992i) {
                return;
            }
            this.f71992i = true;
            this.f71990g.cancel();
            this.f71985b.dispose();
            if (this.f71997n || getAndIncrement() != 0) {
                return;
            }
            this.f71991h.clear();
        }

        @Override // o7.o
        public final void clear() {
            this.f71991h.clear();
        }

        @Override // o7.o
        public final boolean isEmpty() {
            return this.f71991h.isEmpty();
        }

        final boolean j(boolean z9, boolean z10, org.reactivestreams.d<?> dVar) {
            if (this.f71992i) {
                clear();
                return true;
            } else if (z9) {
                if (this.f71986c) {
                    if (z10) {
                        this.f71992i = true;
                        Throwable th = this.f71994k;
                        if (th != null) {
                            dVar.onError(th);
                        } else {
                            dVar.onComplete();
                        }
                        this.f71985b.dispose();
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f71994k;
                if (th2 != null) {
                    this.f71992i = true;
                    clear();
                    dVar.onError(th2);
                    this.f71985b.dispose();
                    return true;
                } else if (z10) {
                    this.f71992i = true;
                    dVar.onComplete();
                    this.f71985b.dispose();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        abstract void k();

        abstract void l();

        abstract void m();

        final void n() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.f71985b.b(this);
        }

        @Override // org.reactivestreams.d
        public final void onComplete() {
            if (this.f71993j) {
                return;
            }
            this.f71993j = true;
            n();
        }

        @Override // org.reactivestreams.d
        public final void onError(Throwable th) {
            if (this.f71993j) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71994k = th;
            this.f71993j = true;
            n();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f71993j) {
                return;
            }
            if (this.f71995l == 2) {
                n();
                return;
            }
            if (!this.f71991h.offer(t9)) {
                this.f71990g.cancel();
                this.f71994k = new MissingBackpressureException("Queue is full?!");
                this.f71993j = true;
            }
            n();
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71989f, j4);
                n();
            }
        }

        @Override // o7.k
        public final int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f71997n = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f71997n) {
                l();
            } else if (this.f71995l == 1) {
                m();
            } else {
                k();
            }
        }
    }

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends a<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f71998r = 644624475404284533L;

        /* renamed from: p  reason: collision with root package name */
        final o7.a<? super T> f71999p;

        /* renamed from: q  reason: collision with root package name */
        long f72000q;

        b(o7.a<? super T> aVar, h0.c cVar, boolean z9, int i4) {
            super(cVar, z9, i4);
            this.f71999p = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void k() {
            int i4;
            o7.a<? super T> aVar = this.f71999p;
            o7.o<T> oVar = this.f71991h;
            long j4 = this.f71996m;
            long j10 = this.f72000q;
            int i10 = 1;
            while (true) {
                long j11 = this.f71989f.get();
                while (true) {
                    i4 = (j4 > j11 ? 1 : (j4 == j11 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f71993j;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z10 = obj == null;
                        if (j(z9, z10, aVar)) {
                            return;
                        }
                        if (z10) {
                            break;
                        }
                        if (aVar.h(obj)) {
                            j4++;
                        }
                        j10++;
                        if (j10 == this.f71988e) {
                            this.f71990g.request(j10);
                            j10 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f71992i = true;
                        this.f71990g.cancel();
                        oVar.clear();
                        aVar.onError(th);
                        this.f71985b.dispose();
                        return;
                    }
                }
                if (i4 == 0 && j(this.f71993j, oVar.isEmpty(), aVar)) {
                    return;
                }
                int i11 = get();
                if (i10 == i11) {
                    this.f71996m = j4;
                    this.f72000q = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    i10 = i11;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void l() {
            int i4 = 1;
            while (!this.f71992i) {
                boolean z9 = this.f71993j;
                this.f71999p.onNext(null);
                if (z9) {
                    this.f71992i = true;
                    Throwable th = this.f71994k;
                    if (th != null) {
                        this.f71999p.onError(th);
                    } else {
                        this.f71999p.onComplete();
                    }
                    this.f71985b.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void m() {
            o7.a<? super T> aVar = this.f71999p;
            o7.o<T> oVar = this.f71991h;
            long j4 = this.f71996m;
            int i4 = 1;
            while (true) {
                long j10 = this.f71989f.get();
                while (j4 != j10) {
                    try {
                        Object obj = (T) oVar.poll();
                        if (this.f71992i) {
                            return;
                        }
                        if (obj == null) {
                            this.f71992i = true;
                            aVar.onComplete();
                            this.f71985b.dispose();
                            return;
                        } else if (aVar.h(obj)) {
                            j4++;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f71992i = true;
                        this.f71990g.cancel();
                        aVar.onError(th);
                        this.f71985b.dispose();
                        return;
                    }
                }
                if (this.f71992i) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f71992i = true;
                    aVar.onComplete();
                    this.f71985b.dispose();
                    return;
                }
                int i10 = get();
                if (i4 == i10) {
                    this.f71996m = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    i4 = i10;
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71990g, eVar)) {
                this.f71990g = eVar;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f71995l = 1;
                        this.f71991h = lVar;
                        this.f71993j = true;
                        this.f71999p.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f71995l = 2;
                        this.f71991h = lVar;
                        this.f71999p.onSubscribe(this);
                        eVar.request(this.f71987d);
                        return;
                    }
                }
                this.f71991h = new SpscArrayQueue(this.f71987d);
                this.f71999p.onSubscribe(this);
                eVar.request(this.f71987d);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f71991h.poll();
            if (poll != null && this.f71995l != 1) {
                long j4 = this.f72000q + 1;
                if (j4 == this.f71988e) {
                    this.f72000q = 0L;
                    this.f71990g.request(j4);
                } else {
                    this.f72000q = j4;
                }
            }
            return poll;
        }
    }

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends a<T> implements io.reactivex.o<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72001q = -4547113800637756442L;

        /* renamed from: p  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72002p;

        c(org.reactivestreams.d<? super T> dVar, h0.c cVar, boolean z9, int i4) {
            super(cVar, z9, i4);
            this.f72002p = dVar;
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void k() {
            int i4;
            org.reactivestreams.d<? super T> dVar = this.f72002p;
            o7.o<T> oVar = this.f71991h;
            long j4 = this.f71996m;
            int i10 = 1;
            while (true) {
                long j10 = this.f71989f.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f71993j;
                    try {
                        Object obj = (T) oVar.poll();
                        boolean z10 = obj == null;
                        if (j(z9, z10, dVar)) {
                            return;
                        }
                        if (z10) {
                            break;
                        }
                        dVar.onNext(obj);
                        j4++;
                        if (j4 == this.f71988e) {
                            if (j10 != Long.MAX_VALUE) {
                                j10 = this.f71989f.addAndGet(-j4);
                            }
                            this.f71990g.request(j4);
                            j4 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f71992i = true;
                        this.f71990g.cancel();
                        oVar.clear();
                        dVar.onError(th);
                        this.f71985b.dispose();
                        return;
                    }
                }
                if (i4 == 0 && j(this.f71993j, oVar.isEmpty(), dVar)) {
                    return;
                }
                int i11 = get();
                if (i10 == i11) {
                    this.f71996m = j4;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    i10 = i11;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void l() {
            int i4 = 1;
            while (!this.f71992i) {
                boolean z9 = this.f71993j;
                this.f72002p.onNext(null);
                if (z9) {
                    this.f71992i = true;
                    Throwable th = this.f71994k;
                    if (th != null) {
                        this.f72002p.onError(th);
                    } else {
                        this.f72002p.onComplete();
                    }
                    this.f71985b.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h2.a
        void m() {
            org.reactivestreams.d<? super T> dVar = this.f72002p;
            o7.o<T> oVar = this.f71991h;
            long j4 = this.f71996m;
            int i4 = 1;
            while (true) {
                long j10 = this.f71989f.get();
                while (j4 != j10) {
                    try {
                        Object obj = (T) oVar.poll();
                        if (this.f71992i) {
                            return;
                        }
                        if (obj == null) {
                            this.f71992i = true;
                            dVar.onComplete();
                            this.f71985b.dispose();
                            return;
                        }
                        dVar.onNext(obj);
                        j4++;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f71992i = true;
                        this.f71990g.cancel();
                        dVar.onError(th);
                        this.f71985b.dispose();
                        return;
                    }
                }
                if (this.f71992i) {
                    return;
                }
                if (oVar.isEmpty()) {
                    this.f71992i = true;
                    dVar.onComplete();
                    this.f71985b.dispose();
                    return;
                }
                int i10 = get();
                if (i4 == i10) {
                    this.f71996m = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    i4 = i10;
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71990g, eVar)) {
                this.f71990g = eVar;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f71995l = 1;
                        this.f71991h = lVar;
                        this.f71993j = true;
                        this.f72002p.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f71995l = 2;
                        this.f71991h = lVar;
                        this.f72002p.onSubscribe(this);
                        eVar.request(this.f71987d);
                        return;
                    }
                }
                this.f71991h = new SpscArrayQueue(this.f71987d);
                this.f72002p.onSubscribe(this);
                eVar.request(this.f71987d);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f71991h.poll();
            if (poll != null && this.f71995l != 1) {
                long j4 = this.f71996m + 1;
                if (j4 == this.f71988e) {
                    this.f71996m = 0L;
                    this.f71990g.request(j4);
                } else {
                    this.f71996m = j4;
                }
            }
            return poll;
        }
    }

    public h2(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var, boolean z9, int i4) {
        super(jVar);
        this.f71981c = h0Var;
        this.f71982d = z9;
        this.f71983e = i4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        h0.c d4 = this.f71981c.d();
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new b((o7.a) dVar, d4, this.f71982d, this.f71983e));
        } else {
            this.f71538b.j6(new c(dVar, d4, this.f71982d, this.f71983e));
        }
    }
}
