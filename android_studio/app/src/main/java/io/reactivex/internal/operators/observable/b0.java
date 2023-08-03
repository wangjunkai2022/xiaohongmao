package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableCountSingle.java */
/* loaded from: classes3.dex */
public final class b0<T> extends io.reactivex.i0<Long> implements o7.d<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f73891a;

    /* compiled from: ObservableCountSingle.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f73892a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73893b;

        /* renamed from: c  reason: collision with root package name */
        long f73894c;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f73892a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73893b.dispose();
            this.f73893b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73893b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73893b = DisposableHelper.DISPOSED;
            this.f73892a.onSuccess(Long.valueOf(this.f73894c));
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73893b = DisposableHelper.DISPOSED;
            this.f73892a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            this.f73894c++;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73893b, cVar)) {
                this.f73893b = cVar;
                this.f73892a.onSubscribe(this);
            }
        }
    }

    public b0(io.reactivex.e0<T> e0Var) {
        this.f73891a = e0Var;
    }

    @Override // o7.d
    public io.reactivex.z<Long> a() {
        return io.reactivex.plugins.a.R(new a0(this.f73891a));
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super Long> l0Var) {
        this.f73891a.subscribe(new a(l0Var));
    }
}
