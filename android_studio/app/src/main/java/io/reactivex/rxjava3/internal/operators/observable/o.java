package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.Objects;

/* compiled from: ObservableBufferExactBoundary.java */
/* loaded from: classes4.dex */
public final class o<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<B> f79862b;

    /* renamed from: c  reason: collision with root package name */
    final q7.s<U> f79863c;

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.observers.e<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f79864b;

        a(b<T, U, B> parent) {
            this.f79864b = parent;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79864b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79864b.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(B t9) {
            this.f79864b.j();
        }
    }

    /* compiled from: ObservableBufferExactBoundary.java */
    /* loaded from: classes4.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.internal.observers.l<T, U, U> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {
        final q7.s<U> K;
        final io.reactivex.rxjava3.core.l0<B> L;
        io.reactivex.rxjava3.disposables.f M;
        io.reactivex.rxjava3.disposables.f N;
        U O;

        b(io.reactivex.rxjava3.core.n0<? super U> actual, q7.s<U> bufferSupplier, io.reactivex.rxjava3.core.l0<B> boundary) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.K = bufferSupplier;
            this.L = boundary;
        }

        @Override // io.reactivex.rxjava3.disposables.f
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

        @Override // io.reactivex.rxjava3.internal.observers.l, io.reactivex.rxjava3.internal.util.k
        /* renamed from: i */
        public void e(io.reactivex.rxjava3.core.n0<? super U> a10, U v9) {
            this.F.onNext(v9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.H;
        }

        void j() {
            try {
                U u9 = this.K.get();
                Objects.requireNonNull(u9, "The buffer supplied is null");
                U u10 = u9;
                synchronized (this) {
                    U u11 = this.O;
                    if (u11 == null) {
                        return;
                    }
                    this.O = u10;
                    g(u11, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                dispose();
                this.F.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
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
                    io.reactivex.rxjava3.internal.util.o.d(this.G, this.F, false, this, this);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            dispose();
            this.F.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.O;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.M, d4)) {
                this.M = d4;
                try {
                    U u9 = this.K.get();
                    Objects.requireNonNull(u9, "The buffer supplied is null");
                    this.O = u9;
                    a aVar = new a(this);
                    this.N = aVar;
                    this.F.onSubscribe(this);
                    if (this.H) {
                        return;
                    }
                    this.L.a(aVar);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.H = true;
                    d4.dispose();
                    EmptyDisposable.error(th, this.F);
                }
            }
        }
    }

    public o(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<B> boundary, q7.s<U> bufferSupplier) {
        super(source);
        this.f79862b = boundary;
        this.f79863c = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        this.f79141a.a(new b(new io.reactivex.rxjava3.observers.m(t9), this.f79863c, this.f79862b));
    }
}
