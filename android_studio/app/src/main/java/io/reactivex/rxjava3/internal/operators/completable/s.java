package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableFromObservable.java */
/* loaded from: classes4.dex */
public final class s<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f76715a;

    /* compiled from: CompletableFromObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76716a;

        a(io.reactivex.rxjava3.core.d co) {
            this.f76716a = co;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f76716a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f76716a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76716a.onSubscribe(d4);
        }
    }

    public s(io.reactivex.rxjava3.core.l0<T> observable) {
        this.f76715a = observable;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76715a.a(new a(observer));
    }
}
