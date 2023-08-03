package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: ParallelFromPublisher.java */
/* loaded from: classes4.dex */
public final class i<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f80561a;

    /* renamed from: b  reason: collision with root package name */
    final int f80562b;

    /* renamed from: c  reason: collision with root package name */
    final int f80563c;

    /* compiled from: ParallelFromPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements r<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f80564o = -4470634016609963609L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T>[] f80565a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLongArray f80566b;

        /* renamed from: c  reason: collision with root package name */
        final long[] f80567c;

        /* renamed from: d  reason: collision with root package name */
        final int f80568d;

        /* renamed from: e  reason: collision with root package name */
        final int f80569e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f80570f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80571g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f80572h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80573i;

        /* renamed from: j  reason: collision with root package name */
        int f80574j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f80575k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f80576l = new AtomicInteger();

        /* renamed from: m  reason: collision with root package name */
        int f80577m;

        /* renamed from: n  reason: collision with root package name */
        int f80578n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ParallelFromPublisher.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0684a implements org.reactivestreams.e {

            /* renamed from: a  reason: collision with root package name */
            final int f80579a;

            /* renamed from: b  reason: collision with root package name */
            final int f80580b;

            C0684a(int j4, int m9) {
                this.f80579a = j4;
                this.f80580b = m9;
            }

            @Override // org.reactivestreams.e
            public void cancel() {
                if (a.this.f80566b.compareAndSet(this.f80579a + this.f80580b, 0L, 1L)) {
                    a aVar = a.this;
                    int i4 = this.f80580b;
                    aVar.a(i4 + i4);
                }
            }

            @Override // org.reactivestreams.e
            public void request(long n9) {
                long j4;
                if (SubscriptionHelper.validate(n9)) {
                    AtomicLongArray atomicLongArray = a.this.f80566b;
                    do {
                        j4 = atomicLongArray.get(this.f80579a);
                        if (j4 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f80579a, j4, io.reactivex.rxjava3.internal.util.b.c(j4, n9)));
                    if (a.this.f80576l.get() == this.f80580b) {
                        a.this.b();
                    }
                }
            }
        }

        a(org.reactivestreams.d<? super T>[] subscribers, int prefetch) {
            this.f80565a = subscribers;
            this.f80568d = prefetch;
            this.f80569e = prefetch - (prefetch >> 2);
            int length = subscribers.length;
            int i4 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i4 + 1);
            this.f80566b = atomicLongArray;
            atomicLongArray.lazySet(i4, length);
            this.f80567c = new long[length];
        }

        void a(int m9) {
            if (this.f80566b.decrementAndGet(m9) == 0) {
                this.f80575k = true;
                this.f80570f.cancel();
                if (getAndIncrement() == 0) {
                    this.f80571g.clear();
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f80578n == 1) {
                d();
            } else {
                c();
            }
        }

        void c() {
            Throwable th;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f80571g;
            org.reactivestreams.d<? super T>[] dVarArr = this.f80565a;
            AtomicLongArray atomicLongArray = this.f80566b;
            long[] jArr = this.f80567c;
            int length = jArr.length;
            int i4 = this.f80574j;
            int i10 = this.f80577m;
            int i11 = 1;
            while (true) {
                int i12 = 0;
                int i13 = 0;
                while (!this.f80575k) {
                    boolean z9 = this.f80573i;
                    if (z9 && (th = this.f80572h) != null) {
                        qVar.clear();
                        int length2 = dVarArr.length;
                        while (i12 < length2) {
                            dVarArr[i12].onError(th);
                            i12++;
                        }
                        return;
                    }
                    boolean isEmpty = qVar.isEmpty();
                    if (z9 && isEmpty) {
                        int length3 = dVarArr.length;
                        while (i12 < length3) {
                            dVarArr[i12].onComplete();
                            i12++;
                        }
                        return;
                    }
                    if (!isEmpty) {
                        long j4 = atomicLongArray.get(i4);
                        long j10 = jArr[i4];
                        if (j4 == j10 || atomicLongArray.get(length + i4) != 0) {
                            i13++;
                        } else {
                            try {
                                T poll = qVar.poll();
                                if (poll != null) {
                                    dVarArr[i4].onNext(poll);
                                    jArr[i4] = j10 + 1;
                                    i10++;
                                    if (i10 == this.f80569e) {
                                        this.f80570f.request(i10);
                                        i10 = 0;
                                    }
                                    i13 = 0;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.f80570f.cancel();
                                int length4 = dVarArr.length;
                                while (i12 < length4) {
                                    dVarArr[i12].onError(th2);
                                    i12++;
                                }
                                return;
                            }
                        }
                        i4++;
                        if (i4 == length) {
                            i4 = 0;
                            continue;
                        }
                        if (i13 == length) {
                        }
                    }
                    int i14 = get();
                    if (i14 == i11) {
                        this.f80574j = i4;
                        this.f80577m = i10;
                        i11 = addAndGet(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    } else {
                        i11 = i14;
                    }
                }
                qVar.clear();
                return;
            }
        }

        void d() {
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f80571g;
            org.reactivestreams.d<? super T>[] dVarArr = this.f80565a;
            AtomicLongArray atomicLongArray = this.f80566b;
            long[] jArr = this.f80567c;
            int length = jArr.length;
            int i4 = this.f80574j;
            int i10 = 1;
            while (true) {
                int i11 = 0;
                int i12 = 0;
                while (!this.f80575k) {
                    if (qVar.isEmpty()) {
                        int length2 = dVarArr.length;
                        while (i11 < length2) {
                            dVarArr[i11].onComplete();
                            i11++;
                        }
                        return;
                    }
                    long j4 = atomicLongArray.get(i4);
                    long j10 = jArr[i4];
                    if (j4 == j10 || atomicLongArray.get(length + i4) != 0) {
                        i12++;
                    } else {
                        try {
                            T poll = qVar.poll();
                            if (poll == null) {
                                int length3 = dVarArr.length;
                                while (i11 < length3) {
                                    dVarArr[i11].onComplete();
                                    i11++;
                                }
                                return;
                            }
                            dVarArr[i4].onNext(poll);
                            jArr[i4] = j10 + 1;
                            i12 = 0;
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f80570f.cancel();
                            int length4 = dVarArr.length;
                            while (i11 < length4) {
                                dVarArr[i11].onError(th);
                                i11++;
                            }
                            return;
                        }
                    }
                    i4++;
                    if (i4 == length) {
                        i4 = 0;
                        continue;
                    }
                    if (i12 == length) {
                        int i13 = get();
                        if (i13 == i10) {
                            this.f80574j = i4;
                            i10 = addAndGet(-i10);
                            if (i10 == 0) {
                                return;
                            }
                        } else {
                            i10 = i13;
                        }
                    }
                }
                qVar.clear();
                return;
            }
        }

        void e() {
            org.reactivestreams.d<? super T>[] dVarArr = this.f80565a;
            int length = dVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 1;
                this.f80576l.lazySet(i10);
                dVarArr[i4].onSubscribe(new C0684a(i4, length));
                i4 = i10;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f80573i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f80572h = t9;
            this.f80573i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80578n == 0 && !this.f80571g.offer(t9)) {
                this.f80570f.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
                return;
            }
            b();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80570f, s9)) {
                this.f80570f = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f80578n = requestFusion;
                        this.f80571g = nVar;
                        this.f80573i = true;
                        e();
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80578n = requestFusion;
                        this.f80571g = nVar;
                        e();
                        s9.request(this.f80568d);
                        return;
                    }
                }
                this.f80571g = new SpscArrayQueue(this.f80568d);
                e();
                s9.request(this.f80568d);
            }
        }
    }

    public i(org.reactivestreams.c<? extends T> source, int parallelism, int prefetch) {
        this.f80561a = source;
        this.f80562b = parallelism;
        this.f80563c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80562b;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            this.f80561a.i(new a(subscribers, this.f80563c));
        }
    }
}
