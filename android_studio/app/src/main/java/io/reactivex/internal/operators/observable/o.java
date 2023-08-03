package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferBoundarySupplier.java */
/* loaded from: classes3.dex */
public final class o<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<B>> f74518b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f74519c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableBufferBoundarySupplier.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f74520b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74521c;

        a(b<T, U, B> bVar) {
            this.f74520b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74521c) {
                return;
            }
            this.f74521c = true;
            this.f74520b.l();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74521c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74521c = true;
            this.f74520b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b10) {
            if (this.f74521c) {
                return;
            }
            this.f74521c = true;
            dispose();
            this.f74520b.l();
        }
    }

    /* compiled from: ObservableBufferBoundarySupplier.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.k<T, U, U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {
        final Callable<U> K;
        final Callable<? extends io.reactivex.e0<B>> L;
        io.reactivex.disposables.c M;
        final AtomicReference<io.reactivex.disposables.c> N;
        U O;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, Callable<? extends io.reactivex.e0<B>> callable2) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.N = new AtomicReference<>();
            this.K = callable;
            this.L = callable2;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.M.dispose();
            k();
            if (b()) {
                this.G.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.H;
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.k
        /* renamed from: j */
        public void g(io.reactivex.g0<? super U> g0Var, U u9) {
            this.F.onNext(u9);
        }

        void k() {
            DisposableHelper.dispose(this.N);
        }

        void l() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                try {
                    io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.L.call(), "The boundary ObservableSource supplied is null");
                    a aVar = new a(this);
                    if (DisposableHelper.replace(this.N, aVar)) {
                        synchronized (this) {
                            U u10 = this.O;
                            if (u10 == null) {
                                return;
                            }
                            this.O = u9;
                            e0Var.subscribe(aVar);
                            h(u10, false, this);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.H = true;
                    this.M.dispose();
                    this.F.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.F.onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            synchronized (this) {
                U u9 = this.O;
                if (u9 == null) {
                    return;
                }
                this.O = null;
                this.G.offer(u9);
                this.I = true;
                if (b()) {
                    io.reactivex.internal.util.o.d(this.G, this.F, false, this, this);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            dispose();
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.O;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.M, cVar)) {
                this.M = cVar;
                io.reactivex.g0<? super V> g0Var = this.F;
                try {
                    this.O = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    try {
                        io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.L.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.N.set(aVar);
                        g0Var.onSubscribe(this);
                        if (this.H) {
                            return;
                        }
                        e0Var.subscribe(aVar);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.H = true;
                        cVar.dispose();
                        EmptyDisposable.error(th, g0Var);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.H = true;
                    cVar.dispose();
                    EmptyDisposable.error(th2, g0Var);
                }
            }
        }
    }

    public o(io.reactivex.e0<T> e0Var, Callable<? extends io.reactivex.e0<B>> callable, Callable<U> callable2) {
        super(e0Var);
        this.f74518b = callable;
        this.f74519c = callable2;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        this.f73827a.subscribe(new b(new io.reactivex.observers.l(g0Var), this.f74519c, this.f74518b));
    }
}
