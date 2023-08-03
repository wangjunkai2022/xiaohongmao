package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMap.java */
/* loaded from: classes3.dex */
public final class w0<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<? extends U>> f74922b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f74923c;

    /* renamed from: d  reason: collision with root package name */
    final int f74924d;

    /* renamed from: e  reason: collision with root package name */
    final int f74925e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableFlatMap.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<U> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74926f = -4606175640614850599L;

        /* renamed from: a  reason: collision with root package name */
        final long f74927a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f74928b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f74929c;

        /* renamed from: d  reason: collision with root package name */
        volatile o7.o<U> f74930d;

        /* renamed from: e  reason: collision with root package name */
        int f74931e;

        a(b<T, U> bVar, long j4) {
            this.f74927a = j4;
            this.f74928b = bVar;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74929c = true;
            this.f74928b.d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74928b.f74942h.addThrowable(th)) {
                b<T, U> bVar = this.f74928b;
                if (!bVar.f74937c) {
                    bVar.c();
                }
                this.f74929c = true;
                this.f74928b.d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u9) {
            if (this.f74931e == 0) {
                this.f74928b.k(u9, this);
            } else {
                this.f74928b.d();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && (cVar instanceof o7.j)) {
                o7.j jVar = (o7.j) cVar;
                int requestFusion = jVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.f74931e = requestFusion;
                    this.f74930d = jVar;
                    this.f74929c = true;
                    this.f74928b.d();
                } else if (requestFusion == 2) {
                    this.f74931e = requestFusion;
                    this.f74930d = jVar;
                }
            }
        }
    }

    /* compiled from: ObservableFlatMap.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.disposables.c, io.reactivex.g0<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f74932q = -2117620485640801370L;

        /* renamed from: r  reason: collision with root package name */
        static final a<?, ?>[] f74933r = new a[0];

        /* renamed from: s  reason: collision with root package name */
        static final a<?, ?>[] f74934s = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f74935a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends U>> f74936b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f74937c;

        /* renamed from: d  reason: collision with root package name */
        final int f74938d;

        /* renamed from: e  reason: collision with root package name */
        final int f74939e;

        /* renamed from: f  reason: collision with root package name */
        volatile o7.n<U> f74940f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74941g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f74942h = new AtomicThrowable();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74943i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<a<?, ?>[]> f74944j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.disposables.c f74945k;

        /* renamed from: l  reason: collision with root package name */
        long f74946l;

        /* renamed from: m  reason: collision with root package name */
        long f74947m;

        /* renamed from: n  reason: collision with root package name */
        int f74948n;

        /* renamed from: o  reason: collision with root package name */
        Queue<io.reactivex.e0<? extends U>> f74949o;

        /* renamed from: p  reason: collision with root package name */
        int f74950p;

        b(io.reactivex.g0<? super U> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, boolean z9, int i4, int i10) {
            this.f74935a = g0Var;
            this.f74936b = oVar;
            this.f74937c = z9;
            this.f74938d = i4;
            this.f74939e = i10;
            if (i4 != Integer.MAX_VALUE) {
                this.f74949o = new ArrayDeque(i4);
            }
            this.f74944j = new AtomicReference<>(f74933r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean a(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f74944j.get();
                if (aVarArr == f74934s) {
                    aVar.a();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f74944j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b() {
            if (this.f74943i) {
                return true;
            }
            Throwable th = this.f74942h.get();
            if (this.f74937c || th == null) {
                return false;
            }
            c();
            Throwable terminate = this.f74942h.terminate();
            if (terminate != io.reactivex.internal.util.g.f75916a) {
                this.f74935a.onError(terminate);
            }
            return true;
        }

        boolean c() {
            a<?, ?>[] andSet;
            this.f74945k.dispose();
            a<?, ?>[] aVarArr = this.f74944j.get();
            a<?, ?>[] aVarArr2 = f74934s;
            if (aVarArr == aVarArr2 || (andSet = this.f74944j.getAndSet(aVarArr2)) == aVarArr2) {
                return false;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.a();
            }
            return true;
        }

        void d() {
            if (getAndIncrement() == 0) {
                e();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            Throwable terminate;
            if (this.f74943i) {
                return;
            }
            this.f74943i = true;
            if (!c() || (terminate = this.f74942h.terminate()) == null || terminate == io.reactivex.internal.util.g.f75916a) {
                return;
            }
            io.reactivex.plugins.a.Y(terminate);
        }

        void e() {
            int i4;
            int i10;
            io.reactivex.g0<? super U> g0Var = this.f74935a;
            int i11 = 1;
            while (!b()) {
                o7.n<U> nVar = this.f74940f;
                int i12 = 0;
                if (nVar != null) {
                    while (!b()) {
                        Object obj = (U) nVar.poll();
                        if (obj != null) {
                            g0Var.onNext(obj);
                            i12++;
                        }
                    }
                    return;
                }
                if (i12 != 0) {
                    if (this.f74938d != Integer.MAX_VALUE) {
                        j(i12);
                    }
                } else {
                    boolean z9 = this.f74941g;
                    o7.n<U> nVar2 = this.f74940f;
                    a<?, ?>[] aVarArr = this.f74944j.get();
                    int length = aVarArr.length;
                    if (this.f74938d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            i4 = this.f74949o.size();
                        }
                    } else {
                        i4 = 0;
                    }
                    if (z9 && ((nVar2 == null || nVar2.isEmpty()) && length == 0 && i4 == 0)) {
                        Throwable terminate = this.f74942h.terminate();
                        if (terminate != io.reactivex.internal.util.g.f75916a) {
                            if (terminate == null) {
                                g0Var.onComplete();
                                return;
                            } else {
                                g0Var.onError(terminate);
                                return;
                            }
                        }
                        return;
                    }
                    if (length != 0) {
                        long j4 = this.f74947m;
                        int i13 = this.f74948n;
                        if (length <= i13 || aVarArr[i13].f74927a != j4) {
                            if (length <= i13) {
                                i13 = 0;
                            }
                            for (int i14 = 0; i14 < length && aVarArr[i13].f74927a != j4; i14++) {
                                i13++;
                                if (i13 == length) {
                                    i13 = 0;
                                }
                            }
                            this.f74948n = i13;
                            this.f74947m = aVarArr[i13].f74927a;
                        }
                        while (i10 < length) {
                            if (b()) {
                                return;
                            }
                            a<T, U> aVar = aVarArr[i13];
                            o7.o<U> oVar = aVar.f74930d;
                            if (oVar != null) {
                                while (true) {
                                    try {
                                        Object obj2 = (U) oVar.poll();
                                        if (obj2 == null) {
                                            break;
                                        }
                                        g0Var.onNext(obj2);
                                        if (b()) {
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.exceptions.a.b(th);
                                        aVar.a();
                                        this.f74942h.addThrowable(th);
                                        if (b()) {
                                            return;
                                        }
                                        h(aVar);
                                        i12++;
                                        i13++;
                                        if (i13 != length) {
                                        }
                                    }
                                }
                            }
                            boolean z10 = aVar.f74929c;
                            o7.o<U> oVar2 = aVar.f74930d;
                            if (z10 && (oVar2 == null || oVar2.isEmpty())) {
                                h(aVar);
                                if (b()) {
                                    return;
                                }
                                i12++;
                            }
                            i13++;
                            i10 = i13 != length ? i10 + 1 : 0;
                            i13 = 0;
                        }
                        this.f74948n = i13;
                        this.f74947m = aVarArr[i13].f74927a;
                    }
                    if (i12 != 0) {
                        if (this.f74938d != Integer.MAX_VALUE) {
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

        void h(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f74944j.get();
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
                    aVarArr2 = f74933r;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f74944j.compareAndSet(aVarArr, aVarArr2));
        }

        void i(io.reactivex.e0<? extends U> e0Var) {
            io.reactivex.e0<? extends U> poll;
            while (e0Var instanceof Callable) {
                if (!l((Callable) e0Var) || this.f74938d == Integer.MAX_VALUE) {
                    return;
                }
                boolean z9 = false;
                synchronized (this) {
                    poll = this.f74949o.poll();
                    if (poll == null) {
                        this.f74950p--;
                        z9 = true;
                    }
                }
                if (z9) {
                    d();
                    return;
                }
                e0Var = poll;
            }
            long j4 = this.f74946l;
            this.f74946l = 1 + j4;
            a<T, U> aVar = new a<>(this, j4);
            if (a(aVar)) {
                e0Var.subscribe(aVar);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74943i;
        }

        void j(int i4) {
            while (true) {
                int i10 = i4 - 1;
                if (i4 == 0) {
                    return;
                }
                synchronized (this) {
                    io.reactivex.e0<? extends U> poll = this.f74949o.poll();
                    if (poll == null) {
                        this.f74950p--;
                    } else {
                        i(poll);
                    }
                }
                i4 = i10;
            }
        }

        void k(U u9, a<T, U> aVar) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f74935a.onNext(u9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                o7.o oVar = aVar.f74930d;
                if (oVar == null) {
                    oVar = new io.reactivex.internal.queue.b(this.f74939e);
                    aVar.f74930d = oVar;
                }
                oVar.offer(u9);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            e();
        }

        boolean l(Callable<? extends U> callable) {
            try {
                U call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f74935a.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    o7.n<U> nVar = this.f74940f;
                    if (nVar == null) {
                        if (this.f74938d == Integer.MAX_VALUE) {
                            nVar = new io.reactivex.internal.queue.b<>(this.f74939e);
                        } else {
                            nVar = new SpscArrayQueue<>(this.f74938d);
                        }
                        this.f74940f = nVar;
                    }
                    if (!nVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                e();
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74942h.addThrowable(th);
                d();
                return true;
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74941g) {
                return;
            }
            this.f74941g = true;
            d();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74941g) {
                io.reactivex.plugins.a.Y(th);
            } else if (this.f74942h.addThrowable(th)) {
                this.f74941g = true;
                d();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74941g) {
                return;
            }
            try {
                io.reactivex.e0<? extends U> e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74936b.apply(t9), "The mapper returned a null ObservableSource");
                if (this.f74938d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        int i4 = this.f74950p;
                        if (i4 == this.f74938d) {
                            this.f74949o.offer(e0Var);
                            return;
                        }
                        this.f74950p = i4 + 1;
                    }
                }
                i(e0Var);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74945k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74945k, cVar)) {
                this.f74945k = cVar;
                this.f74935a.onSubscribe(this);
            }
        }
    }

    public w0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends U>> oVar, boolean z9, int i4, int i10) {
        super(e0Var);
        this.f74922b = oVar;
        this.f74923c = z9;
        this.f74924d = i4;
        this.f74925e = i10;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        if (ObservableScalarXMap.b(this.f73827a, g0Var, this.f74922b)) {
            return;
        }
        this.f73827a.subscribe(new b(g0Var, this.f74922b, this.f74923c, this.f74924d, this.f74925e));
    }
}
