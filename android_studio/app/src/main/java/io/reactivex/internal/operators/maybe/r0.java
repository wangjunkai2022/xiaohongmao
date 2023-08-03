package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeIsEmptySingle.java */
/* loaded from: classes3.dex */
public final class r0<T> extends io.reactivex.i0<Boolean> implements o7.f<T>, o7.c<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73450a;

    /* compiled from: MaybeIsEmptySingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f73451a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73452b;

        a(io.reactivex.l0<? super Boolean> l0Var) {
            this.f73451a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73452b.dispose();
            this.f73452b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73452b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73452b = DisposableHelper.DISPOSED;
            this.f73451a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73452b = DisposableHelper.DISPOSED;
            this.f73451a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73452b, cVar)) {
                this.f73452b = cVar;
                this.f73451a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73452b = DisposableHelper.DISPOSED;
            this.f73451a.onSuccess(Boolean.FALSE);
        }
    }

    public r0(io.reactivex.w<T> wVar) {
        this.f73450a = wVar;
    }

    @Override // o7.c
    public io.reactivex.q<Boolean> b() {
        return io.reactivex.plugins.a.Q(new q0(this.f73450a));
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f73450a.b(new a(l0Var));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73450a;
    }
}
