package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeIgnoreElement.java */
/* loaded from: classes3.dex */
public final class o0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeIgnoreElement.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73416a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73417b;

        a(io.reactivex.t<? super T> tVar) {
            this.f73416a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73417b.dispose();
            this.f73417b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73417b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73417b = DisposableHelper.DISPOSED;
            this.f73416a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73417b = DisposableHelper.DISPOSED;
            this.f73416a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73417b, cVar)) {
                this.f73417b = cVar;
                this.f73416a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73417b = DisposableHelper.DISPOSED;
            this.f73416a.onComplete();
        }
    }

    public o0(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar));
    }
}
