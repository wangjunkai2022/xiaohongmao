package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.operators.flowable.v;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableConcatMapScheduler.java */
/* loaded from: classes4.dex */
public final class y<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78282c;

    /* renamed from: d  reason: collision with root package name */
    final int f78283d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f78284e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78285f;

    /* compiled from: FlowableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f78286a;

        static {
            int[] iArr = new int[ErrorMode.values().length];
            f78286a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78286a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    public static abstract class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, v.f<R>, org.reactivestreams.e, Runnable {

        /* renamed from: n  reason: collision with root package name */
        private static final long f78287n = -3511336836796789179L;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78289b;

        /* renamed from: c  reason: collision with root package name */
        final int f78290c;

        /* renamed from: d  reason: collision with root package name */
        final int f78291d;

        /* renamed from: e  reason: collision with root package name */
        final o0.c f78292e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f78293f;

        /* renamed from: g  reason: collision with root package name */
        int f78294g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f78295h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78296i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78297j;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f78299l;

        /* renamed from: m  reason: collision with root package name */
        int f78300m;

        /* renamed from: a  reason: collision with root package name */
        final v.e<R> f78288a = new v.e<>(this);

        /* renamed from: k  reason: collision with root package name */
        final AtomicThrowable f78298k = new AtomicThrowable();

        b(q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, o0.c worker) {
            this.f78289b = mapper;
            this.f78290c = prefetch;
            this.f78291d = prefetch - (prefetch >> 2);
            this.f78292e = worker;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public final void b() {
            this.f78299l = false;
            d();
        }

        abstract void d();

        abstract void e();

        @Override // org.reactivestreams.d
        public final void onComplete() {
            this.f78296i = true;
            d();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f78300m != 2 && !this.f78295h.offer(t9)) {
                this.f78293f.cancel();
                onError(new IllegalStateException("Queue full?!"));
                return;
            }
            d();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78293f, s9)) {
                this.f78293f = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f78300m = requestFusion;
                        this.f78295h = nVar;
                        this.f78296i = true;
                        e();
                        d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f78300m = requestFusion;
                        this.f78295h = nVar;
                        e();
                        s9.request(this.f78290c);
                        return;
                    }
                }
                this.f78295h = new SpscArrayQueue(this.f78290c);
                e();
                s9.request(this.f78290c);
            }
        }
    }

    /* compiled from: FlowableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    static final class c<T, R> extends b<T, R> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f78301q = -2945777694260521066L;

        /* renamed from: o  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78302o;

        /* renamed from: p  reason: collision with root package name */
        final boolean f78303p;

        c(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, boolean veryEnd, o0.c worker) {
            super(mapper, prefetch, worker);
            this.f78302o = actual;
            this.f78303p = veryEnd;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void a(Throwable e4) {
            if (this.f78298k.tryAddThrowableOrReport(e4)) {
                if (!this.f78303p) {
                    this.f78293f.cancel();
                    this.f78296i = true;
                }
                this.f78299l = false;
                d();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void c(R value) {
            this.f78302o.onNext(value);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78297j) {
                return;
            }
            this.f78297j = true;
            this.f78288a.cancel();
            this.f78293f.cancel();
            this.f78292e.dispose();
            this.f78298k.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.y.b
        void d() {
            if (getAndIncrement() == 0) {
                this.f78292e.b(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.y.b
        void e() {
            this.f78302o.onSubscribe(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78298k.tryAddThrowableOrReport(t9)) {
                this.f78296i = true;
                d();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78288a.request(n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            while (!this.f78297j) {
                if (!this.f78299l) {
                    boolean z9 = this.f78296i;
                    if (z9 && !this.f78303p && this.f78298k.get() != null) {
                        this.f78298k.tryTerminateConsumer(this.f78302o);
                        this.f78292e.dispose();
                        return;
                    }
                    try {
                        T poll = this.f78295h.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f78298k.tryTerminateConsumer(this.f78302o);
                            this.f78292e.dispose();
                            return;
                        } else if (!z10) {
                            try {
                                org.reactivestreams.c<? extends R> apply = this.f78289b.apply(poll);
                                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                                org.reactivestreams.c<? extends R> cVar = apply;
                                if (this.f78300m != 1) {
                                    int i4 = this.f78294g + 1;
                                    if (i4 == this.f78291d) {
                                        this.f78294g = 0;
                                        this.f78293f.request(i4);
                                    } else {
                                        this.f78294g = i4;
                                    }
                                }
                                if (cVar instanceof q7.s) {
                                    try {
                                        obj = ((q7.s) cVar).get();
                                    } catch (Throwable th) {
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        this.f78298k.tryAddThrowableOrReport(th);
                                        if (!this.f78303p) {
                                            this.f78293f.cancel();
                                            this.f78298k.tryTerminateConsumer(this.f78302o);
                                            this.f78292e.dispose();
                                            return;
                                        }
                                        obj = null;
                                    }
                                    if (obj != null && !this.f78297j) {
                                        if (this.f78288a.isUnbounded()) {
                                            this.f78302o.onNext(obj);
                                        } else {
                                            this.f78299l = true;
                                            v.e<R> eVar = this.f78288a;
                                            eVar.setSubscription(new v.g(obj, eVar));
                                        }
                                    }
                                } else {
                                    this.f78299l = true;
                                    cVar.i(this.f78288a);
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.f78293f.cancel();
                                this.f78298k.tryAddThrowableOrReport(th2);
                                this.f78298k.tryTerminateConsumer(this.f78302o);
                                this.f78292e.dispose();
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        io.reactivex.rxjava3.exceptions.a.b(th3);
                        this.f78293f.cancel();
                        this.f78298k.tryAddThrowableOrReport(th3);
                        this.f78298k.tryTerminateConsumer(this.f78302o);
                        this.f78292e.dispose();
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    /* compiled from: FlowableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    static final class d<T, R> extends b<T, R> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f78304q = 7898995095634264146L;

        /* renamed from: o  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78305o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicInteger f78306p;

        d(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, o0.c worker) {
            super(mapper, prefetch, worker);
            this.f78305o = actual;
            this.f78306p = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void a(Throwable e4) {
            if (this.f78298k.tryAddThrowableOrReport(e4)) {
                this.f78293f.cancel();
                if (getAndIncrement() == 0) {
                    this.f78298k.tryTerminateConsumer(this.f78305o);
                    this.f78292e.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void c(R value) {
            if (i()) {
                this.f78305o.onNext(value);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.f78298k.tryTerminateConsumer(this.f78305o);
                this.f78292e.dispose();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78297j) {
                return;
            }
            this.f78297j = true;
            this.f78288a.cancel();
            this.f78293f.cancel();
            this.f78292e.dispose();
            this.f78298k.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.y.b
        void d() {
            if (this.f78306p.getAndIncrement() == 0) {
                this.f78292e.b(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.y.b
        void e() {
            this.f78305o.onSubscribe(this);
        }

        boolean i() {
            return get() == 0 && compareAndSet(0, 1);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78298k.tryAddThrowableOrReport(t9)) {
                this.f78288a.cancel();
                if (getAndIncrement() == 0) {
                    this.f78298k.tryTerminateConsumer(this.f78305o);
                    this.f78292e.dispose();
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78288a.request(n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.f78297j) {
                if (!this.f78299l) {
                    boolean z9 = this.f78296i;
                    try {
                        T poll = this.f78295h.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f78305o.onComplete();
                            this.f78292e.dispose();
                            return;
                        } else if (!z10) {
                            try {
                                org.reactivestreams.c<? extends R> apply = this.f78289b.apply(poll);
                                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                                org.reactivestreams.c<? extends R> cVar = apply;
                                if (this.f78300m != 1) {
                                    int i4 = this.f78294g + 1;
                                    if (i4 == this.f78291d) {
                                        this.f78294g = 0;
                                        this.f78293f.request(i4);
                                    } else {
                                        this.f78294g = i4;
                                    }
                                }
                                if (cVar instanceof q7.s) {
                                    try {
                                        Object obj = ((q7.s) cVar).get();
                                        if (obj != null && !this.f78297j) {
                                            if (this.f78288a.isUnbounded()) {
                                                if (i()) {
                                                    this.f78305o.onNext(obj);
                                                    if (!compareAndSet(1, 0)) {
                                                        this.f78298k.tryTerminateConsumer(this.f78305o);
                                                        this.f78292e.dispose();
                                                        return;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            } else {
                                                this.f78299l = true;
                                                v.e<R> eVar = this.f78288a;
                                                eVar.setSubscription(new v.g(obj, eVar));
                                            }
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        this.f78293f.cancel();
                                        this.f78298k.tryAddThrowableOrReport(th);
                                        this.f78298k.tryTerminateConsumer(this.f78305o);
                                        this.f78292e.dispose();
                                        return;
                                    }
                                } else {
                                    this.f78299l = true;
                                    cVar.i(this.f78288a);
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.f78293f.cancel();
                                this.f78298k.tryAddThrowableOrReport(th2);
                                this.f78298k.tryTerminateConsumer(this.f78305o);
                                this.f78292e.dispose();
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        io.reactivex.rxjava3.exceptions.a.b(th3);
                        this.f78293f.cancel();
                        this.f78298k.tryAddThrowableOrReport(th3);
                        this.f78298k.tryTerminateConsumer(this.f78305o);
                        this.f78292e.dispose();
                        return;
                    }
                }
                if (this.f78306p.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    public y(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, ErrorMode errorMode, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f78282c = mapper;
        this.f78283d = prefetch;
        this.f78284e = errorMode;
        this.f78285f = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        int i4 = a.f78286a[this.f78284e.ordinal()];
        if (i4 == 1) {
            this.f76811b.G6(new c(s9, this.f78282c, this.f78283d, false, this.f78285f.d()));
        } else if (i4 != 2) {
            this.f76811b.G6(new d(s9, this.f78282c, this.f78283d, this.f78285f.d()));
        } else {
            this.f76811b.G6(new c(s9, this.f78282c, this.f78283d, true, this.f78285f.d()));
        }
    }
}
