package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMap.java */
/* loaded from: classes4.dex */
public final class z0<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f78355c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78356d;

    /* renamed from: e  reason: collision with root package name */
    final int f78357e;

    /* renamed from: f  reason: collision with root package name */
    final int f78358f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlatMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<U>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f78359i = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f78360a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f78361b;

        /* renamed from: c  reason: collision with root package name */
        final int f78362c;

        /* renamed from: d  reason: collision with root package name */
        final int f78363d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f78364e;

        /* renamed from: f  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<U> f78365f;

        /* renamed from: g  reason: collision with root package name */
        long f78366g;

        /* renamed from: h  reason: collision with root package name */
        int f78367h;

        a(b<T, U> parent, int bufferSize, long id) {
            this.f78360a = id;
            this.f78361b = parent;
            this.f78363d = bufferSize;
            this.f78362c = bufferSize >> 2;
        }

        void a(long n9) {
            if (this.f78367h != 1) {
                long j4 = this.f78366g + n9;
                if (j4 >= this.f78362c) {
                    this.f78366g = 0L;
                    get().request(j4);
                    return;
                }
                this.f78366g = j4;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78364e = true;
            this.f78361b.e();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.f78361b.k(this, t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(U t9) {
            if (this.f78367h != 2) {
                this.f78361b.m(t9, this);
            } else {
                this.f78361b.e();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f78367h = requestFusion;
                        this.f78365f = nVar;
                        this.f78364e = true;
                        this.f78361b.e();
                        return;
                    } else if (requestFusion == 2) {
                        this.f78367h = requestFusion;
                        this.f78365f = nVar;
                    }
                }
                s9.request(this.f78363d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlatMap.java */
    /* loaded from: classes4.dex */
    public static final class b<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: r  reason: collision with root package name */
        private static final long f78368r = -2117620485640801370L;

        /* renamed from: s  reason: collision with root package name */
        static final a<?, ?>[] f78369s = new a[0];

        /* renamed from: t  reason: collision with root package name */
        static final a<?, ?>[] f78370t = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super U> f78371a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f78372b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f78373c;

        /* renamed from: d  reason: collision with root package name */
        final int f78374d;

        /* renamed from: e  reason: collision with root package name */
        final int f78375e;

        /* renamed from: f  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<U> f78376f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f78377g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f78378h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78379i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<a<?, ?>[]> f78380j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f78381k;

        /* renamed from: l  reason: collision with root package name */
        org.reactivestreams.e f78382l;

        /* renamed from: m  reason: collision with root package name */
        long f78383m;

        /* renamed from: n  reason: collision with root package name */
        long f78384n;

        /* renamed from: o  reason: collision with root package name */
        int f78385o;

        /* renamed from: p  reason: collision with root package name */
        int f78386p;

        /* renamed from: q  reason: collision with root package name */
        final int f78387q;

        b(org.reactivestreams.d<? super U> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
            AtomicReference<a<?, ?>[]> atomicReference = new AtomicReference<>();
            this.f78380j = atomicReference;
            this.f78381k = new AtomicLong();
            this.f78371a = actual;
            this.f78372b = mapper;
            this.f78373c = delayErrors;
            this.f78374d = maxConcurrency;
            this.f78375e = bufferSize;
            this.f78387q = Math.max(1, maxConcurrency >> 1);
            atomicReference.lazySet(f78369s);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(a<T, U> inner) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f78380j.get();
                if (aVarArr == f78370t) {
                    inner.dispose();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = inner;
            } while (!this.f78380j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b() {
            if (this.f78379i) {
                c();
                return true;
            } else if (this.f78373c || this.f78378h.get() == null) {
                return false;
            } else {
                c();
                this.f78378h.tryTerminateConsumer(this.f78371a);
                return true;
            }
        }

        void c() {
            io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.f78376f;
            if (pVar != null) {
                pVar.clear();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            io.reactivex.rxjava3.internal.fuseable.p<U> pVar;
            if (this.f78379i) {
                return;
            }
            this.f78379i = true;
            this.f78382l.cancel();
            d();
            if (getAndIncrement() != 0 || (pVar = this.f78376f) == null) {
                return;
            }
            pVar.clear();
        }

        void d() {
            AtomicReference<a<?, ?>[]> atomicReference = this.f78380j;
            a<?, ?>[] aVarArr = f78370t;
            a<?, ?>[] andSet = atomicReference.getAndSet(aVarArr);
            if (andSet != aVarArr) {
                for (a<?, ?> aVar : andSet) {
                    aVar.dispose();
                }
                this.f78378h.tryTerminateAndReport();
            }
        }

        void e() {
            if (getAndIncrement() == 0) {
                i();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:110:0x016d, code lost:
            r24.f78385o = r3;
            r24.f78384n = r21[r3].f78360a;
            r3 = r15;
            r5 = 0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i() {
            /*
                Method dump skipped, instructions count: 410
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.z0.b.i():void");
        }

        io.reactivex.rxjava3.internal.fuseable.q<U> j() {
            io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.f78376f;
            if (pVar == null) {
                if (this.f78374d == Integer.MAX_VALUE) {
                    pVar = new io.reactivex.rxjava3.internal.queue.b<>(this.f78375e);
                } else {
                    pVar = new SpscArrayQueue<>(this.f78374d);
                }
                this.f78376f = pVar;
            }
            return pVar;
        }

        void k(a<T, U> inner, Throwable t9) {
            if (this.f78378h.tryAddThrowableOrReport(t9)) {
                inner.f78364e = true;
                if (!this.f78373c) {
                    this.f78382l.cancel();
                    for (a<?, ?> aVar : this.f78380j.getAndSet(f78370t)) {
                        aVar.dispose();
                    }
                }
                e();
            }
        }

        void l(a<T, U> inner) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f78380j.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10] == inner) {
                        i4 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i4 < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr2 = f78369s;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f78380j.compareAndSet(aVarArr, aVarArr2));
        }

        void m(U value, a<T, U> inner) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f78381k.get();
                io.reactivex.rxjava3.internal.fuseable.q qVar = inner.f78365f;
                if (j4 != 0 && (qVar == null || qVar.isEmpty())) {
                    this.f78371a.onNext(value);
                    if (j4 != Long.MAX_VALUE) {
                        this.f78381k.decrementAndGet();
                    }
                    inner.a(1L);
                } else {
                    if (qVar == null) {
                        qVar = new SpscArrayQueue(this.f78375e);
                        inner.f78365f = qVar;
                    }
                    if (!qVar.offer(value)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.internal.fuseable.q qVar2 = inner.f78365f;
                if (qVar2 == null) {
                    qVar2 = new SpscArrayQueue(this.f78375e);
                    inner.f78365f = qVar2;
                }
                if (!qVar2.offer(value)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            }
            i();
        }

        void n(U value) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f78381k.get();
                io.reactivex.rxjava3.internal.fuseable.q<U> qVar = this.f78376f;
                if (j4 != 0 && (qVar == null || qVar.isEmpty())) {
                    this.f78371a.onNext(value);
                    if (j4 != Long.MAX_VALUE) {
                        this.f78381k.decrementAndGet();
                    }
                    if (this.f78374d != Integer.MAX_VALUE && !this.f78379i) {
                        int i4 = this.f78386p + 1;
                        this.f78386p = i4;
                        int i10 = this.f78387q;
                        if (i4 == i10) {
                            this.f78386p = 0;
                            this.f78382l.request(i10);
                        }
                    }
                } else {
                    if (qVar == null) {
                        qVar = j();
                    }
                    if (!qVar.offer(value)) {
                        onError(new MissingBackpressureException("Scalar queue full?!"));
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!j().offer(value)) {
                onError(new MissingBackpressureException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78377g) {
                return;
            }
            this.f78377g = true;
            e();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78377g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else if (this.f78378h.tryAddThrowableOrReport(t9)) {
                this.f78377g = true;
                if (!this.f78373c) {
                    for (a<?, ?> aVar : this.f78380j.getAndSet(f78370t)) {
                        aVar.dispose();
                    }
                }
                e();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78377g) {
                return;
            }
            try {
                org.reactivestreams.c<? extends U> apply = this.f78372b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                org.reactivestreams.c<? extends U> cVar = apply;
                if (cVar instanceof q7.s) {
                    try {
                        Object obj = ((q7.s) cVar).get();
                        if (obj != null) {
                            n(obj);
                            return;
                        } else if (this.f78374d == Integer.MAX_VALUE || this.f78379i) {
                            return;
                        } else {
                            int i4 = this.f78386p + 1;
                            this.f78386p = i4;
                            int i10 = this.f78387q;
                            if (i4 == i10) {
                                this.f78386p = 0;
                                this.f78382l.request(i10);
                                return;
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f78378h.tryAddThrowableOrReport(th);
                        e();
                        return;
                    }
                }
                int i11 = this.f78375e;
                long j4 = this.f78383m;
                this.f78383m = 1 + j4;
                a aVar = new a(this, i11, j4);
                if (a(aVar)) {
                    cVar.i(aVar);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f78382l.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78382l, s9)) {
                this.f78382l = s9;
                this.f78371a.onSubscribe(this);
                if (this.f78379i) {
                    return;
                }
                int i4 = this.f78374d;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78381k, n9);
                e();
            }
        }
    }

    public z0(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
        super(source);
        this.f78355c = mapper;
        this.f78356d = delayErrors;
        this.f78357e = maxConcurrency;
        this.f78358f = bufferSize;
    }

    public static <T, U> io.reactivex.rxjava3.core.r<T> g9(org.reactivestreams.d<? super U> s9, q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
        return new b(s9, mapper, delayErrors, maxConcurrency, bufferSize);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        if (m3.b(this.f76811b, s9, this.f78355c)) {
            return;
        }
        this.f76811b.G6(g9(s9, this.f78355c, this.f78356d, this.f78357e, this.f78358f));
    }
}
