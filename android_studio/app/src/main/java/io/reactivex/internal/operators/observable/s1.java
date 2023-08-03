package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableLastMaybe.java */
/* loaded from: classes3.dex */
public final class s1<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74717a;

    /* compiled from: ObservableLastMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f74718a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74719b;

        /* renamed from: c  reason: collision with root package name */
        T f74720c;

        a(io.reactivex.t<? super T> tVar) {
            this.f74718a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74719b.dispose();
            this.f74719b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74719b == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74719b = DisposableHelper.DISPOSED;
            T t9 = this.f74720c;
            if (t9 != null) {
                this.f74720c = null;
                this.f74718a.onSuccess(t9);
                return;
            }
            this.f74718a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74719b = DisposableHelper.DISPOSED;
            this.f74720c = null;
            this.f74718a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74720c = t9;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74719b, cVar)) {
                this.f74719b = cVar;
                this.f74718a.onSubscribe(this);
            }
        }
    }

    public s1(io.reactivex.e0<T> e0Var) {
        this.f74717a = e0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f74717a.subscribe(new a(tVar));
    }
}
