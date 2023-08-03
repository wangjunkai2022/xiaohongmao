package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMap.java */
/* loaded from: classes4.dex */
public final class w0<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80335b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f80336c;

    /* renamed from: d  reason: collision with root package name */
    final int f80337d;

    /* renamed from: e  reason: collision with root package name */
    final int f80338e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableFlatMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<U> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80339f = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f80340a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f80341b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f80342c;

        /* renamed from: d  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<U> f80343d;

        /* renamed from: e  reason: collision with root package name */
        int f80344e;

        a(b<T, U> parent, long id) {
            this.f80340a = id;
            this.f80341b = parent;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80342c = true;
            this.f80341b.d();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80341b.f80355h.tryAddThrowableOrReport(t9)) {
                b<T, U> bVar = this.f80341b;
                if (!bVar.f80350c) {
                    bVar.c();
                }
                this.f80342c = true;
                this.f80341b.d();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(U t9) {
            if (this.f80344e == 0) {
                this.f80341b.k(t9, this);
            } else {
                this.f80341b.d();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4) && (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l)) {
                io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                int requestFusion = lVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.f80344e = requestFusion;
                    this.f80343d = lVar;
                    this.f80342c = true;
                    this.f80341b.d();
                } else if (requestFusion == 2) {
                    this.f80344e = requestFusion;
                    this.f80343d = lVar;
                }
            }
        }
    }

    /* compiled from: ObservableFlatMap.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f80345p = -2117620485640801370L;

        /* renamed from: q  reason: collision with root package name */
        static final a<?, ?>[] f80346q = new a[0];

        /* renamed from: r  reason: collision with root package name */
        static final a<?, ?>[] f80347r = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f80348a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80349b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f80350c;

        /* renamed from: d  reason: collision with root package name */
        final int f80351d;

        /* renamed from: e  reason: collision with root package name */
        final int f80352e;

        /* renamed from: f  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<U> f80353f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80354g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f80355h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80356i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<a<?, ?>[]> f80357j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80358k;

        /* renamed from: l  reason: collision with root package name */
        long f80359l;

        /* renamed from: m  reason: collision with root package name */
        int f80360m;

        /* renamed from: n  reason: collision with root package name */
        Queue<io.reactivex.rxjava3.core.l0<? extends U>> f80361n;

        /* renamed from: o  reason: collision with root package name */
        int f80362o;

        b(io.reactivex.rxjava3.core.n0<? super U> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
            this.f80348a = actual;
            this.f80349b = mapper;
            this.f80350c = delayErrors;
            this.f80351d = maxConcurrency;
            this.f80352e = bufferSize;
            if (maxConcurrency != Integer.MAX_VALUE) {
                this.f80361n = new ArrayDeque(maxConcurrency);
            }
            this.f80357j = new AtomicReference<>(f80346q);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(a<T, U> inner) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f80357j.get();
                if (aVarArr == f80347r) {
                    inner.a();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = inner;
            } while (!this.f80357j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b() {
            if (this.f80356i) {
                return true;
            }
            Throwable th = this.f80355h.get();
            if (this.f80350c || th == null) {
                return false;
            }
            c();
            this.f80355h.tryTerminateConsumer(this.f80348a);
            return true;
        }

        boolean c() {
            this.f80358k.dispose();
            AtomicReference<a<?, ?>[]> atomicReference = this.f80357j;
            a<?, ?>[] aVarArr = f80347r;
            a<?, ?>[] andSet = atomicReference.getAndSet(aVarArr);
            if (andSet != aVarArr) {
                for (a<?, ?> aVar : andSet) {
                    aVar.a();
                }
                return true;
            }
            return false;
        }

        void d() {
            if (getAndIncrement() == 0) {
                e();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80356i = true;
            if (c()) {
                this.f80355h.tryTerminateAndReport();
            }
        }

        void e() {
            int i4;
            int i10;
            io.reactivex.rxjava3.core.n0<? super U> n0Var = this.f80348a;
            int i11 = 1;
            while (!b()) {
                io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.f80353f;
                int i12 = 0;
                if (pVar != null) {
                    while (!b()) {
                        Object obj = (U) pVar.poll();
                        if (obj != null) {
                            n0Var.onNext(obj);
                            i12++;
                        }
                    }
                    return;
                }
                if (i12 != 0) {
                    if (this.f80351d != Integer.MAX_VALUE) {
                        j(i12);
                    }
                } else {
                    boolean z9 = this.f80354g;
                    io.reactivex.rxjava3.internal.fuseable.p<U> pVar2 = this.f80353f;
                    a<?, ?>[] aVarArr = this.f80357j.get();
                    int length = aVarArr.length;
                    if (this.f80351d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            i4 = this.f80361n.size();
                        }
                    } else {
                        i4 = 0;
                    }
                    if (z9 && ((pVar2 == null || pVar2.isEmpty()) && length == 0 && i4 == 0)) {
                        this.f80355h.tryTerminateConsumer(this.f80348a);
                        return;
                    }
                    if (length != 0) {
                        int min = Math.min(length - 1, this.f80360m);
                        while (i10 < length) {
                            if (b()) {
                                return;
                            }
                            a<T, U> aVar = aVarArr[min];
                            io.reactivex.rxjava3.internal.fuseable.q<U> qVar = aVar.f80343d;
                            if (qVar != null) {
                                while (true) {
                                    try {
                                        Object obj2 = (U) qVar.poll();
                                        if (obj2 == null) {
                                            break;
                                        }
                                        n0Var.onNext(obj2);
                                        if (b()) {
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        aVar.a();
                                        this.f80355h.tryAddThrowableOrReport(th);
                                        if (b()) {
                                            return;
                                        }
                                        h(aVar);
                                        i12++;
                                        min++;
                                        if (min != length) {
                                        }
                                    }
                                }
                            }
                            boolean z10 = aVar.f80342c;
                            io.reactivex.rxjava3.internal.fuseable.q<U> qVar2 = aVar.f80343d;
                            if (z10 && (qVar2 == null || qVar2.isEmpty())) {
                                h(aVar);
                                i12++;
                            }
                            min++;
                            i10 = min != length ? i10 + 1 : 0;
                            min = 0;
                        }
                        this.f80360m = min;
                    }
                    if (i12 != 0) {
                        if (this.f80351d != Integer.MAX_VALUE) {
                            j(i12);
                        }
                    } else {
                        i11 = addAndGet(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    }
                }
            }
        }

        void h(a<T, U> inner) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f80357j.get();
                int length = aVarArr.length;
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
                    aVarArr2 = f80346q;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f80357j.compareAndSet(aVarArr, aVarArr2));
        }

        void i(io.reactivex.rxjava3.core.l0<? extends U> p9) {
            io.reactivex.rxjava3.core.l0<? extends U> poll;
            while (p9 instanceof q7.s) {
                if (!l((q7.s) p9) || this.f80351d == Integer.MAX_VALUE) {
                    return;
                }
                boolean z9 = false;
                synchronized (this) {
                    poll = this.f80361n.poll();
                    if (poll == null) {
                        this.f80362o--;
                        z9 = true;
                    }
                }
                if (z9) {
                    d();
                    return;
                }
                p9 = poll;
            }
            long j4 = this.f80359l;
            this.f80359l = 1 + j4;
            a<T, U> aVar = new a<>(this, j4);
            if (a(aVar)) {
                p9.a(aVar);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80356i;
        }

        void j(int innerCompleted) {
            while (true) {
                int i4 = innerCompleted - 1;
                if (innerCompleted == 0) {
                    return;
                }
                synchronized (this) {
                    io.reactivex.rxjava3.core.l0<? extends U> poll = this.f80361n.poll();
                    if (poll == null) {
                        this.f80362o--;
                    } else {
                        i(poll);
                    }
                }
                innerCompleted = i4;
            }
        }

        void k(U value, a<T, U> inner) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f80348a.onNext(value);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.internal.fuseable.q qVar = inner.f80343d;
                if (qVar == null) {
                    qVar = new io.reactivex.rxjava3.internal.queue.b(this.f80352e);
                    inner.f80343d = qVar;
                }
                qVar.offer(value);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            e();
        }

        boolean l(q7.s<? extends U> value) {
            try {
                U u9 = value.get();
                if (u9 == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f80348a.onNext(u9);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    io.reactivex.rxjava3.internal.fuseable.p<U> pVar = this.f80353f;
                    if (pVar == null) {
                        if (this.f80351d == Integer.MAX_VALUE) {
                            pVar = new io.reactivex.rxjava3.internal.queue.b<>(this.f80352e);
                        } else {
                            pVar = new SpscArrayQueue<>(this.f80351d);
                        }
                        this.f80353f = pVar;
                    }
                    pVar.offer(u9);
                    if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                e();
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80355h.tryAddThrowableOrReport(th);
                d();
                return true;
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80354g) {
                return;
            }
            this.f80354g = true;
            d();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80354g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else if (this.f80355h.tryAddThrowableOrReport(t9)) {
                this.f80354g = true;
                d();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80354g) {
                return;
            }
            try {
                io.reactivex.rxjava3.core.l0<? extends U> apply = this.f80349b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.l0<? extends U> l0Var = apply;
                if (this.f80351d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        int i4 = this.f80362o;
                        if (i4 == this.f80351d) {
                            this.f80361n.offer(l0Var);
                            return;
                        }
                        this.f80362o = i4 + 1;
                    }
                }
                i(l0Var);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80358k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80358k, d4)) {
                this.f80358k = d4;
                this.f80348a.onSubscribe(this);
            }
        }
    }

    public w0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
        super(source);
        this.f80335b = mapper;
        this.f80336c = delayErrors;
        this.f80337d = maxConcurrency;
        this.f80338e = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        if (ObservableScalarXMap.b(this.f79141a, t9, this.f80335b)) {
            return;
        }
        this.f79141a.a(new b(t9, this.f80335b, this.f80336c, this.f80337d, this.f80338e));
    }
}
