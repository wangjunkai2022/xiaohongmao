package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeFromSingle.java */
/* loaded from: classes3.dex */
public final class m0<T> extends io.reactivex.q<T> implements o7.i<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f73394a;

    /* compiled from: MaybeFromSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73395a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73396b;

        a(io.reactivex.t<? super T> tVar) {
            this.f73395a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73396b.dispose();
            this.f73396b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73396b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f73396b = DisposableHelper.DISPOSED;
            this.f73395a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73396b, cVar)) {
                this.f73396b = cVar;
                this.f73395a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f73396b = DisposableHelper.DISPOSED;
            this.f73395a.onSuccess(t9);
        }
    }

    public m0(io.reactivex.o0<T> o0Var) {
        this.f73394a = o0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73394a.d(new a(tVar));
    }

    @Override // o7.i
    public io.reactivex.o0<T> source() {
        return this.f73394a;
    }
}
