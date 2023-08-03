package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: ParallelFromPublisher.java */
/* loaded from: classes3.dex */
public final class h<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f75181a;

    /* renamed from: b  reason: collision with root package name */
    final int f75182b;

    /* renamed from: c  reason: collision with root package name */
    final int f75183c;

    /* compiled from: ParallelFromPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f75184o = -4470634016609963609L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T>[] f75185a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLongArray f75186b;

        /* renamed from: c  reason: collision with root package name */
        final long[] f75187c;

        /* renamed from: d  reason: collision with root package name */
        final int f75188d;

        /* renamed from: e  reason: collision with root package name */
        final int f75189e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f75190f;

        /* renamed from: g  reason: collision with root package name */
        o7.o<T> f75191g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f75192h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f75193i;

        /* renamed from: j  reason: collision with root package name */
        int f75194j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f75195k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f75196l = new AtomicInteger();

        /* renamed from: m  reason: collision with root package name */
        int f75197m;

        /* renamed from: n  reason: collision with root package name */
        int f75198n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ParallelFromPublisher.java */
        /* renamed from: io.reactivex.internal.operators.parallel.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0605a implements org.reactivestreams.e {

            /* renamed from: a  reason: collision with root package name */
            final int f75199a;

            /* renamed from: b  reason: collision with root package name */
            final int f75200b;

            C0605a(int i4, int i10) {
                this.f75199a = i4;
                this.f75200b = i10;
            }

            @Override // org.reactivestreams.e
            public void cancel() {
                if (a.this.f75186b.compareAndSet(this.f75199a + this.f75200b, 0L, 1L)) {
                    a aVar = a.this;
                    int i4 = this.f75200b;
                    aVar.a(i4 + i4);
                }
            }

            @Override // org.reactivestreams.e
            public void request(long j4) {
                long j10;
                if (SubscriptionHelper.validate(j4)) {
                    AtomicLongArray atomicLongArray = a.this.f75186b;
                    do {
                        j10 = atomicLongArray.get(this.f75199a);
                        if (j10 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f75199a, j10, io.reactivex.internal.util.b.c(j10, j4)));
                    if (a.this.f75196l.get() == this.f75200b) {
                        a.this.b();
                    }
                }
            }
        }

        a(org.reactivestreams.d<? super T>[] dVarArr, int i4) {
            this.f75185a = dVarArr;
            this.f75188d = i4;
            this.f75189e = i4 - (i4 >> 2);
            int length = dVarArr.length;
            int i10 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i10 + 1);
            this.f75186b = atomicLongArray;
            atomicLongArray.lazySet(i10, length);
            this.f75187c = new long[length];
        }

        void a(int i4) {
            if (this.f75186b.decrementAndGet(i4) == 0) {
                this.f75195k = true;
                this.f75190f.cancel();
                if (getAndIncrement() == 0) {
                    this.f75191g.clear();
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f75198n == 1) {
                d();
            } else {
                c();
            }
        }

        void c() {
            Throwable th;
            o7.o<T> oVar = this.f75191g;
            org.reactivestreams.d<? super T>[] dVarArr = this.f75185a;
            AtomicLongArray atomicLongArray = this.f75186b;
            long[] jArr = this.f75187c;
            int length = jArr.length;
            int i4 = this.f75194j;
            int i10 = this.f75197m;
            int i11 = 1;
            while (true) {
                int i12 = 0;
                int i13 = 0;
                while (!this.f75195k) {
                    boolean z9 = this.f75193i;
                    if (z9 && (th = this.f75192h) != null) {
                        oVar.clear();
                        int length2 = dVarArr.length;
                        while (i12 < length2) {
                            dVarArr[i12].onError(th);
                            i12++;
                        }
                        return;
                    }
                    boolean isEmpty = oVar.isEmpty();
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
                                T poll = oVar.poll();
                                if (poll != null) {
                                    dVarArr[i4].onNext(poll);
                                    jArr[i4] = j10 + 1;
                                    i10++;
                                    if (i10 == this.f75189e) {
                                        this.f75190f.request(i10);
                                        i10 = 0;
                                    }
                                    i13 = 0;
                                }
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f75190f.cancel();
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
                        this.f75194j = i4;
                        this.f75197m = i10;
                        i11 = addAndGet(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    } else {
                        i11 = i14;
                    }
                }
                oVar.clear();
                return;
            }
        }

        void d() {
            o7.o<T> oVar = this.f75191g;
            org.reactivestreams.d<? super T>[] dVarArr = this.f75185a;
            AtomicLongArray atomicLongArray = this.f75186b;
            long[] jArr = this.f75187c;
            int length = jArr.length;
            int i4 = this.f75194j;
            int i10 = 1;
            while (true) {
                int i11 = 0;
                int i12 = 0;
                while (!this.f75195k) {
                    if (oVar.isEmpty()) {
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
                            T poll = oVar.poll();
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
                            io.reactivex.exceptions.a.b(th);
                            this.f75190f.cancel();
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
                            this.f75194j = i4;
                            i10 = addAndGet(-i10);
                            if (i10 == 0) {
                                return;
                            }
                        } else {
                            i10 = i13;
                        }
                    }
                }
                oVar.clear();
                return;
            }
        }

        void e() {
            org.reactivestreams.d<? super T>[] dVarArr = this.f75185a;
            int length = dVarArr.length;
            int i4 = 0;
            while (i4 < length && !this.f75195k) {
                int i10 = i4 + 1;
                this.f75196l.lazySet(i10);
                dVarArr[i4].onSubscribe(new C0605a(i4, length));
                i4 = i10;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75193i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75192h = th;
            this.f75193i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75198n == 0 && !this.f75191g.offer(t9)) {
                this.f75190f.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
                return;
            }
            b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75190f, eVar)) {
                this.f75190f = eVar;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f75198n = requestFusion;
                        this.f75191g = lVar;
                        this.f75193i = true;
                        e();
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f75198n = requestFusion;
                        this.f75191g = lVar;
                        e();
                        eVar.request(this.f75188d);
                        return;
                    }
                }
                this.f75191g = new SpscArrayQueue(this.f75188d);
                e();
                eVar.request(this.f75188d);
            }
        }
    }

    public h(org.reactivestreams.c<? extends T> cVar, int i4, int i10) {
        this.f75181a = cVar;
        this.f75182b = i4;
        this.f75183c = i10;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75182b;
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            this.f75181a.i(new a(dVarArr, this.f75183c));
        }
    }
}
