package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeIsEmpty.java */
/* loaded from: classes3.dex */
public final class q0<T> extends io.reactivex.internal.operators.maybe.a<T, Boolean> {

    /* compiled from: MaybeIsEmpty.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super Boolean> f73435a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73436b;

        a(io.reactivex.t<? super Boolean> tVar) {
            this.f73435a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73436b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73436b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73435a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73435a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73436b, cVar)) {
                this.f73436b = cVar;
                this.f73435a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73435a.onSuccess(Boolean.FALSE);
        }
    }

    public q0(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super Boolean> tVar) {
        this.f73172a.b(new a(tVar));
    }
}
