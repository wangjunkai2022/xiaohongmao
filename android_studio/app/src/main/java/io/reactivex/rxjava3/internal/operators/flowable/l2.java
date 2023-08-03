package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableObserveOn.java */
/* loaded from: classes4.dex */
public final class l2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77452c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77453d;

    /* renamed from: e  reason: collision with root package name */
    final int f77454e;

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.r<T>, Runnable {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77455o = -8241002408341274697L;

        /* renamed from: b  reason: collision with root package name */
        final o0.c f77456b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f77457c;

        /* renamed from: d  reason: collision with root package name */
        final int f77458d;

        /* renamed from: e  reason: collision with root package name */
        final int f77459e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f77460f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f77461g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f77462h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f77463i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f77464j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f77465k;

        /* renamed from: l  reason: collision with root package name */
        int f77466l;

        /* renamed from: m  reason: collision with root package name */
        long f77467m;

        /* renamed from: n  reason: collision with root package name */
        boolean f77468n;

        a(o0.c worker, boolean delayError, int prefetch) {
            this.f77456b = worker;
            this.f77457c = delayError;
            this.f77458d = prefetch;
            this.f77459e = prefetch - (prefetch >> 2);
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            if (this.f77463i) {
                return;
            }
            this.f77463i = true;
            this.f77461g.cancel();
            this.f77456b.dispose();
            if (this.f77468n || getAndIncrement() != 0) {
                return;
            }
            this.f77462h.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final void clear() {
            this.f77462h.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final boolean isEmpty() {
            return this.f77462h.isEmpty();
        }

        final boolean j(boolean d4, boolean empty, org.reactivestreams.d<?> a10) {
            if (this.f77463i) {
                clear();
                return true;
            } else if (d4) {
                if (this.f77457c) {
                    if (empty) {
                        this.f77463i = true;
                        Throwable th = this.f77465k;
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        this.f77456b.dispose();
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f77465k;
                if (th2 != null) {
                    this.f77463i = true;
                    clear();
                    a10.onError(th2);
                    this.f77456b.dispose();
                    return true;
                } else if (empty) {
                    this.f77463i = true;
                    a10.onComplete();
                    this.f77456b.dispose();
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
            this.f77456b.b(this);
        }

        @Override // org.reactivestreams.d
        public final void onComplete() {
            if (this.f77464j) {
                return;
            }
            this.f77464j = true;
            n();
        }

        @Override // org.reactivestreams.d
        public final void onError(Throwable t9) {
            if (this.f77464j) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77465k = t9;
            this.f77464j = true;
            n();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f77464j) {
                return;
            }
            if (this.f77466l == 2) {
                n();
                return;
            }
            if (!this.f77462h.offer(t9)) {
                this.f77461g.cancel();
                this.f77465k = new MissingBackpressureException("Queue is full?!");
                this.f77464j = true;
            }
            n();
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77460f, n9);
                n();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public final int requestFusion(int requestedMode) {
            if ((requestedMode & 2) != 0) {
                this.f77468n = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f77468n) {
                l();
            } else if (this.f77466l == 1) {
                m();
            } else {
                k();
            }
        }
    }

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends a<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f77469r = 644624475404284533L;

        /* renamed from: p  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f77470p;

        /* renamed from: q  reason: collision with root package name */
        long f77471q;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, o0.c worker, boolean delayError, int prefetch) {
            super(worker, delayError, prefetch);
            this.f77470p = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void k() {
            int i4;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77470p;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77462h;
            long j4 = this.f77467m;
            long j10 = this.f77471q;
            int i10 = 1;
            do {
                long j11 = this.f77460f.get();
                while (true) {
                    i4 = (j4 > j11 ? 1 : (j4 == j11 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f77464j;
                    try {
                        Object obj = (T) qVar.poll();
                        boolean z10 = obj == null;
                        if (j(z9, z10, cVar)) {
                            return;
                        }
                        if (z10) {
                            break;
                        }
                        if (cVar.h(obj)) {
                            j4++;
                        }
                        j10++;
                        if (j10 == this.f77459e) {
                            this.f77461g.request(j10);
                            j10 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77463i = true;
                        this.f77461g.cancel();
                        qVar.clear();
                        cVar.onError(th);
                        this.f77456b.dispose();
                        return;
                    }
                }
                if (i4 == 0 && j(this.f77464j, qVar.isEmpty(), cVar)) {
                    return;
                }
                this.f77467m = j4;
                this.f77471q = j10;
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void l() {
            int i4 = 1;
            while (!this.f77463i) {
                boolean z9 = this.f77464j;
                this.f77470p.onNext(null);
                if (z9) {
                    this.f77463i = true;
                    Throwable th = this.f77465k;
                    if (th != null) {
                        this.f77470p.onError(th);
                    } else {
                        this.f77470p.onComplete();
                    }
                    this.f77456b.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void m() {
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77470p;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77462h;
            long j4 = this.f77467m;
            int i4 = 1;
            do {
                long j10 = this.f77460f.get();
                while (j4 != j10) {
                    try {
                        Object obj = (T) qVar.poll();
                        if (this.f77463i) {
                            return;
                        }
                        if (obj == null) {
                            this.f77463i = true;
                            cVar.onComplete();
                            this.f77456b.dispose();
                            return;
                        } else if (cVar.h(obj)) {
                            j4++;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77463i = true;
                        this.f77461g.cancel();
                        cVar.onError(th);
                        this.f77456b.dispose();
                        return;
                    }
                }
                if (this.f77463i) {
                    return;
                }
                if (qVar.isEmpty()) {
                    this.f77463i = true;
                    cVar.onComplete();
                    this.f77456b.dispose();
                    return;
                }
                this.f77467m = j4;
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77461g, s9)) {
                this.f77461g = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f77466l = 1;
                        this.f77462h = nVar;
                        this.f77464j = true;
                        this.f77470p.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f77466l = 2;
                        this.f77462h = nVar;
                        this.f77470p.onSubscribe(this);
                        s9.request(this.f77458d);
                        return;
                    }
                }
                this.f77462h = new SpscArrayQueue(this.f77458d);
                this.f77470p.onSubscribe(this);
                s9.request(this.f77458d);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f77462h.poll();
            if (poll != null && this.f77466l != 1) {
                long j4 = this.f77471q + 1;
                if (j4 == this.f77459e) {
                    this.f77471q = 0L;
                    this.f77461g.request(j4);
                } else {
                    this.f77471q = j4;
                }
            }
            return poll;
        }
    }

    /* compiled from: FlowableObserveOn.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends a<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f77472q = -4547113800637756442L;

        /* renamed from: p  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77473p;

        c(org.reactivestreams.d<? super T> actual, o0.c worker, boolean delayError, int prefetch) {
            super(worker, delayError, prefetch);
            this.f77473p = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void k() {
            int i4;
            org.reactivestreams.d<? super T> dVar = this.f77473p;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77462h;
            long j4 = this.f77467m;
            int i10 = 1;
            while (true) {
                long j10 = this.f77460f.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f77464j;
                    try {
                        Object obj = (T) qVar.poll();
                        boolean z10 = obj == null;
                        if (j(z9, z10, dVar)) {
                            return;
                        }
                        if (z10) {
                            break;
                        }
                        dVar.onNext(obj);
                        j4++;
                        if (j4 == this.f77459e) {
                            if (j10 != Long.MAX_VALUE) {
                                j10 = this.f77460f.addAndGet(-j4);
                            }
                            this.f77461g.request(j4);
                            j4 = 0;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77463i = true;
                        this.f77461g.cancel();
                        qVar.clear();
                        dVar.onError(th);
                        this.f77456b.dispose();
                        return;
                    }
                }
                if (i4 == 0 && j(this.f77464j, qVar.isEmpty(), dVar)) {
                    return;
                }
                int i11 = get();
                if (i10 == i11) {
                    this.f77467m = j4;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    i10 = i11;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void l() {
            int i4 = 1;
            while (!this.f77463i) {
                boolean z9 = this.f77464j;
                this.f77473p.onNext(null);
                if (z9) {
                    this.f77463i = true;
                    Throwable th = this.f77465k;
                    if (th != null) {
                        this.f77473p.onError(th);
                    } else {
                        this.f77473p.onComplete();
                    }
                    this.f77456b.dispose();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.l2.a
        void m() {
            org.reactivestreams.d<? super T> dVar = this.f77473p;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77462h;
            long j4 = this.f77467m;
            int i4 = 1;
            do {
                long j10 = this.f77460f.get();
                while (j4 != j10) {
                    try {
                        Object obj = (T) qVar.poll();
                        if (this.f77463i) {
                            return;
                        }
                        if (obj == null) {
                            this.f77463i = true;
                            dVar.onComplete();
                            this.f77456b.dispose();
                            return;
                        }
                        dVar.onNext(obj);
                        j4++;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77463i = true;
                        this.f77461g.cancel();
                        dVar.onError(th);
                        this.f77456b.dispose();
                        return;
                    }
                }
                if (this.f77463i) {
                    return;
                }
                if (qVar.isEmpty()) {
                    this.f77463i = true;
                    dVar.onComplete();
                    this.f77456b.dispose();
                    return;
                }
                this.f77467m = j4;
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77461g, s9)) {
                this.f77461g = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f77466l = 1;
                        this.f77462h = nVar;
                        this.f77464j = true;
                        this.f77473p.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f77466l = 2;
                        this.f77462h = nVar;
                        this.f77473p.onSubscribe(this);
                        s9.request(this.f77458d);
                        return;
                    }
                }
                this.f77462h = new SpscArrayQueue(this.f77458d);
                this.f77473p.onSubscribe(this);
                s9.request(this.f77458d);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f77462h.poll();
            if (poll != null && this.f77466l != 1) {
                long j4 = this.f77467m + 1;
                if (j4 == this.f77459e) {
                    this.f77467m = 0L;
                    this.f77461g.request(j4);
                } else {
                    this.f77467m = j4;
                }
            }
            return poll;
        }
    }

    public l2(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError, int prefetch) {
        super(source);
        this.f77452c = scheduler;
        this.f77453d = delayError;
        this.f77454e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        o0.c d4 = this.f77452c.d();
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new b((io.reactivex.rxjava3.internal.fuseable.c) s9, d4, this.f77453d, this.f77454e));
        } else {
            this.f76811b.G6(new c(s9, d4, this.f77453d, this.f77454e));
        }
    }
}
