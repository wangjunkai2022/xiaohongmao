package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeFromCompletable.java */
/* loaded from: classes3.dex */
public final class j0<T> extends io.reactivex.q<T> implements o7.e {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f73344a;

    /* compiled from: MaybeFromCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73345a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73346b;

        a(io.reactivex.t<? super T> tVar) {
            this.f73345a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73346b.dispose();
            this.f73346b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73346b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f73346b = DisposableHelper.DISPOSED;
            this.f73345a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f73346b = DisposableHelper.DISPOSED;
            this.f73345a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73346b, cVar)) {
                this.f73346b = cVar;
                this.f73345a.onSubscribe(this);
            }
        }
    }

    public j0(io.reactivex.g gVar) {
        this.f73344a = gVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73344a.d(new a(tVar));
    }

    @Override // o7.e
    public io.reactivex.g source() {
        return this.f73344a;
    }
}
