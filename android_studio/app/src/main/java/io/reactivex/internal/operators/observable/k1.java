package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableHide.java */
/* loaded from: classes3.dex */
public final class k1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableHide.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74328a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74329b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74328a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74329b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74329b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74328a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74328a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74328a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74329b, cVar)) {
                this.f74329b = cVar;
                this.f74328a.onSubscribe(this);
            }
        }
    }

    public k1(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
