package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: ObservableBufferExactBoundary.java */
/* loaded from: classes3.dex */
public final class p<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f74563b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f74564c;

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f74565b;

        a(b<T, U, B> bVar) {
            this.f74565b = bVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74565b.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74565b.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b10) {
            this.f74565b.k();
        }
    }

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.k<T, U, U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {
        final Callable<U> K;
        final io.reactivex.e0<B> L;
        io.reactivex.disposables.c M;
        io.reactivex.disposables.c N;
        U O;

        b(io.reactivex.g0<? super U> g0Var, Callable<U> callable, io.reactivex.e0<B> e0Var) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.K = callable;
            this.L = e0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.H) {
                return;
            }
            this.H = true;
            this.N.dispose();
            this.M.dispose();
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
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u10 = this.O;
                    if (u10 == null) {
                        return;
                    }
                    this.O = u9;
                    h(u10, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
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
                try {
                    this.O = (U) io.reactivex.internal.functions.b.g(this.K.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.N = aVar;
                    this.F.onSubscribe(this);
                    if (this.H) {
                        return;
                    }
                    this.L.subscribe(aVar);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.H = true;
                    cVar.dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }
    }

    public p(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, Callable<U> callable) {
        super(e0Var);
        this.f74563b = e0Var2;
        this.f74564c = callable;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        this.f73827a.subscribe(new b(new io.reactivex.observers.l(g0Var), this.f74564c, this.f74563b));
    }
}
