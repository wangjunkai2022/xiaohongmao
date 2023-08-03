package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMap.java */
/* loaded from: classes3.dex */
public final class z0<T, U> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f73069c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73070d;

    /* renamed from: e  reason: collision with root package name */
    final int f73071e;

    /* renamed from: f  reason: collision with root package name */
    final int f73072f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlatMap.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<U>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73073i = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f73074a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f73075b;

        /* renamed from: c  reason: collision with root package name */
        final int f73076c;

        /* renamed from: d  reason: collision with root package name */
        final int f73077d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73078e;

        /* renamed from: f  reason: collision with root package name */
        volatile o7.o<U> f73079f;

        /* renamed from: g  reason: collision with root package name */
        long f73080g;

        /* renamed from: h  reason: collision with root package name */
        int f73081h;

        a(b<T, U> bVar, long j4) {
            this.f73074a = j4;
            this.f73075b = bVar;
            int i4 = bVar.f73089e;
            this.f73077d = i4;
            this.f73076c = i4 >> 2;
        }

        void a(long j4) {
            if (this.f73081h != 1) {
                long j10 = this.f73080g + j4;
                if (j10 >= this.f73076c) {
                    this.f73080g = 0L;
                    get().request(j10);
                    return;
                }
                this.f73080g = j10;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73078e = true;
            this.f73075b.e();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.f73075b.l(this, th);
        }

        @Override // org.reactivestreams.d
        public void onNext(U u9) {
            if (this.f73081h != 2) {
                this.f73075b.n(u9, this);
            } else {
                this.f73075b.e();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f73081h = requestFusion;
                        this.f73079f = lVar;
                        this.f73078e = true;
                        this.f73075b.e();
                        return;
                    } else if (requestFusion == 2) {
                        this.f73081h = requestFusion;
                        this.f73079f = lVar;
                    }
                }
                eVar.request(this.f73077d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlatMap.java */
    /* loaded from: classes3.dex */
    public static final class b<T, U> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: r  reason: collision with root package name */
        private static final long f73082r = -2117620485640801370L;

        /* renamed from: s  reason: collision with root package name */
        static final a<?, ?>[] f73083s = new a[0];

        /* renamed from: t  reason: collision with root package name */
        static final a<?, ?>[] f73084t = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super U> f73085a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f73086b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73087c;

        /* renamed from: d  reason: collision with root package name */
        final int f73088d;

        /* renamed from: e  reason: collision with root package name */
        final int f73089e;

        /* renamed from: f  reason: collision with root package name */
        volatile o7.n<U> f73090f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73091g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f73092h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73093i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<a<?, ?>[]> f73094j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f73095k;

        /* renamed from: l  reason: collision with root package name */
        org.reactivestreams.e f73096l;

        /* renamed from: m  reason: collision with root package name */
        long f73097m;

        /* renamed from: n  reason: collision with root package name */
        long f73098n;

        /* renamed from: o  reason: collision with root package name */
        int f73099o;

        /* renamed from: p  reason: collision with root package name */
        int f73100p;

        /* renamed from: q  reason: collision with root package name */
        final int f73101q;

        b(org.reactivestreams.d<? super U> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, boolean z9, int i4, int i10) {
            AtomicReference<a<?, ?>[]> atomicReference = new AtomicReference<>();
            this.f73094j = atomicReference;
            this.f73095k = new AtomicLong();
            this.f73085a = dVar;
            this.f73086b = oVar;
            this.f73087c = z9;
            this.f73088d = i4;
            this.f73089e = i10;
            this.f73101q = Math.max(1, i4 >> 1);
            atomicReference.lazySet(f73083s);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f73094j.get();
                if (aVarArr == f73084t) {
                    aVar.dispose();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f73094j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b() {
            if (this.f73093i) {
                c();
                return true;
            } else if (this.f73087c || this.f73092h.get() == null) {
                return false;
            } else {
                c();
                Throwable terminate = this.f73092h.terminate();
                if (terminate != io.reactivex.internal.util.g.f75916a) {
                    this.f73085a.onError(terminate);
                }
                return true;
            }
        }

        void c() {
            o7.n<U> nVar = this.f73090f;
            if (nVar != null) {
                nVar.clear();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            o7.n<U> nVar;
            if (this.f73093i) {
                return;
            }
            this.f73093i = true;
            this.f73096l.cancel();
            d();
            if (getAndIncrement() != 0 || (nVar = this.f73090f) == null) {
                return;
            }
            nVar.clear();
        }

        void d() {
            a<?, ?>[] andSet;
            a<?, ?>[] aVarArr = this.f73094j.get();
            a<?, ?>[] aVarArr2 = f73084t;
            if (aVarArr == aVarArr2 || (andSet = this.f73094j.getAndSet(aVarArr2)) == aVarArr2) {
                return;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.dispose();
            }
            Throwable terminate = this.f73092h.terminate();
            if (terminate == null || terminate == io.reactivex.internal.util.g.f75916a) {
                return;
            }
            io.reactivex.plugins.a.Y(terminate);
        }

        void e() {
            if (getAndIncrement() == 0) {
                i();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:121:0x018f, code lost:
            r24.f73099o = r3;
            r24.f73098n = r13[r3].f73074a;
            r3 = r16;
            r5 = 0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i() {
            /*
                Method dump skipped, instructions count: 446
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.z0.b.i():void");
        }

        o7.o<U> j(a<T, U> aVar) {
            o7.o<U> oVar = aVar.f73079f;
            if (oVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f73089e);
                aVar.f73079f = spscArrayQueue;
                return spscArrayQueue;
            }
            return oVar;
        }

        o7.o<U> k() {
            o7.n<U> nVar = this.f73090f;
            if (nVar == null) {
                if (this.f73088d == Integer.MAX_VALUE) {
                    nVar = new io.reactivex.internal.queue.b<>(this.f73089e);
                } else {
                    nVar = new SpscArrayQueue<>(this.f73088d);
                }
                this.f73090f = nVar;
            }
            return nVar;
        }

        void l(a<T, U> aVar, Throwable th) {
            if (this.f73092h.addThrowable(th)) {
                aVar.f73078e = true;
                if (!this.f73087c) {
                    this.f73096l.cancel();
                    for (a<?, ?> aVar2 : this.f73094j.getAndSet(f73084t)) {
                        aVar2.dispose();
                    }
                }
                e();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void m(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f73094j.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10] == aVar) {
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
                    aVarArr2 = f73083s;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f73094j.compareAndSet(aVarArr, aVarArr2));
        }

        void n(U u9, a<T, U> aVar) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f73095k.get();
                o7.o<U> oVar = aVar.f73079f;
                if (j4 != 0 && (oVar == null || oVar.isEmpty())) {
                    this.f73085a.onNext(u9);
                    if (j4 != Long.MAX_VALUE) {
                        this.f73095k.decrementAndGet();
                    }
                    aVar.a(1L);
                } else {
                    if (oVar == null) {
                        oVar = j(aVar);
                    }
                    if (!oVar.offer(u9)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                o7.o oVar2 = aVar.f73079f;
                if (oVar2 == null) {
                    oVar2 = new SpscArrayQueue(this.f73089e);
                    aVar.f73079f = oVar2;
                }
                if (!oVar2.offer(u9)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            }
            i();
        }

        void o(U u9) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j4 = this.f73095k.get();
                o7.o<U> oVar = this.f73090f;
                if (j4 != 0 && (oVar == null || oVar.isEmpty())) {
                    this.f73085a.onNext(u9);
                    if (j4 != Long.MAX_VALUE) {
                        this.f73095k.decrementAndGet();
                    }
                    if (this.f73088d != Integer.MAX_VALUE && !this.f73093i) {
                        int i4 = this.f73100p + 1;
                        this.f73100p = i4;
                        int i10 = this.f73101q;
                        if (i4 == i10) {
                            this.f73100p = 0;
                            this.f73096l.request(i10);
                        }
                    }
                } else {
                    if (oVar == null) {
                        oVar = k();
                    }
                    if (!oVar.offer(u9)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!k().offer(u9)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f73091g) {
                return;
            }
            this.f73091g = true;
            e();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73091g) {
                io.reactivex.plugins.a.Y(th);
            } else if (this.f73092h.addThrowable(th)) {
                this.f73091g = true;
                if (!this.f73087c) {
                    for (a<?, ?> aVar : this.f73094j.getAndSet(f73084t)) {
                        aVar.dispose();
                    }
                }
                e();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f73091g) {
                return;
            }
            try {
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f73086b.apply(t9), "The mapper returned a null Publisher");
                if (cVar instanceof Callable) {
                    try {
                        Object call = ((Callable) cVar).call();
                        if (call != null) {
                            o(call);
                            return;
                        } else if (this.f73088d == Integer.MAX_VALUE || this.f73093i) {
                            return;
                        } else {
                            int i4 = this.f73100p + 1;
                            this.f73100p = i4;
                            int i10 = this.f73101q;
                            if (i4 == i10) {
                                this.f73100p = 0;
                                this.f73096l.request(i10);
                                return;
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f73092h.addThrowable(th);
                        e();
                        return;
                    }
                }
                long j4 = this.f73097m;
                this.f73097m = 1 + j4;
                a aVar = new a(this, j4);
                if (a(aVar)) {
                    cVar.i(aVar);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73096l.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73096l, eVar)) {
                this.f73096l = eVar;
                this.f73085a.onSubscribe(this);
                if (this.f73093i) {
                    return;
                }
                int i4 = this.f73088d;
                if (i4 == Integer.MAX_VALUE) {
                    eVar.request(Long.MAX_VALUE);
                } else {
                    eVar.request(i4);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73095k, j4);
                e();
            }
        }
    }

    public z0(io.reactivex.j<T> jVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, boolean z9, int i4, int i10) {
        super(jVar);
        this.f73069c = oVar;
        this.f73070d = z9;
        this.f73071e = i4;
        this.f73072f = i10;
    }

    public static <T, U> io.reactivex.o<T> M8(org.reactivestreams.d<? super U> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, boolean z9, int i4, int i10) {
        return new b(dVar, oVar, z9, i4, i10);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        if (j3.b(this.f71538b, dVar, this.f73069c)) {
            return;
        }
        this.f71538b.j6(M8(dVar, this.f73069c, this.f73070d, this.f73071e, this.f73072f));
    }
}
