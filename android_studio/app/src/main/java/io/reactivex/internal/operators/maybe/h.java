package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeCount.java */
/* loaded from: classes3.dex */
public final class h<T> extends io.reactivex.i0<Long> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73318a;

    /* compiled from: MaybeCount.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.t<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Long> f73319a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73320b;

        a(io.reactivex.l0<? super Long> l0Var) {
            this.f73319a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73320b.dispose();
            this.f73320b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73320b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73320b = DisposableHelper.DISPOSED;
            this.f73319a.onSuccess(0L);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73320b = DisposableHelper.DISPOSED;
            this.f73319a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73320b, cVar)) {
                this.f73320b = cVar;
                this.f73319a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f73320b = DisposableHelper.DISPOSED;
            this.f73319a.onSuccess(1L);
        }
    }

    public h(io.reactivex.w<T> wVar) {
        this.f73318a = wVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Long> l0Var) {
        this.f73318a.b(new a(l0Var));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73318a;
    }
}
