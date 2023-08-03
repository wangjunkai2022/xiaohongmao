package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeIgnoreElementCompletable.java */
/* loaded from: classes3.dex */
public final class p0<T> extends io.reactivex.a implements o7.c<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73422a;

    /* compiled from: MaybeIgnoreElementCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73423a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73424b;

        a(io.reactivex.d dVar) {
            this.f73423a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73424b.dispose();
            this.f73424b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73424b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73424b = DisposableHelper.DISPOSED;
            this.f73423a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73424b = DisposableHelper.DISPOSED;
            this.f73423a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73424b, cVar)) {
                this.f73424b = cVar;
                this.f73423a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73424b = DisposableHelper.DISPOSED;
            this.f73423a.onComplete();
        }
    }

    public p0(io.reactivex.w<T> wVar) {
        this.f73422a = wVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f73422a.b(new a(dVar));
    }

    @Override // o7.c
    public io.reactivex.q<T> b() {
        return io.reactivex.plugins.a.Q(new o0(this.f73422a));
    }
}
