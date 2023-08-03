package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeContains.java */
/* loaded from: classes3.dex */
public final class g<T> extends io.reactivex.i0<Boolean> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73301a;

    /* renamed from: b  reason: collision with root package name */
    final Object f73302b;

    /* compiled from: MaybeContains.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.t<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f73303a;

        /* renamed from: b  reason: collision with root package name */
        final Object f73304b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73305c;

        a(io.reactivex.l0<? super Boolean> l0Var, Object obj) {
            this.f73303a = l0Var;
            this.f73304b = obj;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73305c.dispose();
            this.f73305c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73305c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73305c = DisposableHelper.DISPOSED;
            this.f73303a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73305c = DisposableHelper.DISPOSED;
            this.f73303a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73305c, cVar)) {
                this.f73305c = cVar;
                this.f73303a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f73305c = DisposableHelper.DISPOSED;
            this.f73303a.onSuccess(Boolean.valueOf(io.reactivex.internal.functions.b.c(obj, this.f73304b)));
        }
    }

    public g(io.reactivex.w<T> wVar, Object obj) {
        this.f73301a = wVar;
        this.f73302b = obj;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f73301a.b(new a(l0Var, this.f73302b));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73301a;
    }
}
