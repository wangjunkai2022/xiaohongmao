package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapSingle.java */
/* loaded from: classes3.dex */
public final class n<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73719a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends o0<? extends R>> f73720b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f73721c;

    /* renamed from: d  reason: collision with root package name */
    final int f73722d;

    /* compiled from: ObservableConcatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: l  reason: collision with root package name */
        private static final long f73723l = -9140123220065488293L;

        /* renamed from: m  reason: collision with root package name */
        static final int f73724m = 0;

        /* renamed from: n  reason: collision with root package name */
        static final int f73725n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final int f73726o = 2;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73727a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends o0<? extends R>> f73728b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f73729c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0581a<R> f73730d = new C0581a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final o7.n<T> f73731e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f73732f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f73733g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73734h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73735i;

        /* renamed from: j  reason: collision with root package name */
        R f73736j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f73737k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.mixed.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0581a<R> extends AtomicReference<io.reactivex.disposables.c> implements l0<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73738b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73739a;

            C0581a(a<?, R> aVar) {
                this.f73739a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73739a.b(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                this.f73739a.c(r9);
            }
        }

        a(g0<? super R> g0Var, n7.o<? super T, ? extends o0<? extends R>> oVar, int i4, ErrorMode errorMode) {
            this.f73727a = g0Var;
            this.f73728b = oVar;
            this.f73732f = errorMode;
            this.f73731e = new io.reactivex.internal.queue.b(i4);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f73727a;
            ErrorMode errorMode = this.f73732f;
            o7.n<T> nVar = this.f73731e;
            AtomicThrowable atomicThrowable = this.f73729c;
            int i4 = 1;
            while (true) {
                if (this.f73735i) {
                    nVar.clear();
                    this.f73736j = null;
                } else {
                    int i10 = this.f73737k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z9 = this.f73734h;
                            T poll = nVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate == null) {
                                    g0Var.onComplete();
                                    return;
                                } else {
                                    g0Var.onError(terminate);
                                    return;
                                }
                            } else if (!z10) {
                                try {
                                    o0 o0Var = (o0) io.reactivex.internal.functions.b.g(this.f73728b.apply(poll), "The mapper returned a null SingleSource");
                                    this.f73737k = 1;
                                    o0Var.d(this.f73730d);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    this.f73733g.dispose();
                                    nVar.clear();
                                    atomicThrowable.addThrowable(th);
                                    g0Var.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f73736j = null;
                            g0Var.onNext((R) this.f73736j);
                            this.f73737k = 0;
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f73736j = null;
            g0Var.onError(atomicThrowable.terminate());
        }

        void b(Throwable th) {
            if (this.f73729c.addThrowable(th)) {
                if (this.f73732f != ErrorMode.END) {
                    this.f73733g.dispose();
                }
                this.f73737k = 0;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(R r9) {
            this.f73736j = r9;
            this.f73737k = 2;
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73735i = true;
            this.f73733g.dispose();
            this.f73730d.a();
            if (getAndIncrement() == 0) {
                this.f73731e.clear();
                this.f73736j = null;
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73735i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73734h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73729c.addThrowable(th)) {
                if (this.f73732f == ErrorMode.IMMEDIATE) {
                    this.f73730d.a();
                }
                this.f73734h = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73731e.offer(t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73733g, cVar)) {
                this.f73733g = cVar;
                this.f73727a.onSubscribe(this);
            }
        }
    }

    public n(z<T> zVar, n7.o<? super T, ? extends o0<? extends R>> oVar, ErrorMode errorMode, int i4) {
        this.f73719a = zVar;
        this.f73720b = oVar;
        this.f73721c = errorMode;
        this.f73722d = i4;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        if (r.c(this.f73719a, this.f73720b, g0Var)) {
            return;
        }
        this.f73719a.subscribe(new a(g0Var, this.f73720b, this.f73722d, this.f73721c));
    }
}
