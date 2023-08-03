package io.reactivex.internal.operators.completable;

/* compiled from: CompletableFromObservable.java */
/* loaded from: classes3.dex */
public final class s<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f71458a;

    /* compiled from: CompletableFromObservable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71459a;

        a(io.reactivex.d dVar) {
            this.f71459a = dVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f71459a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f71459a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71459a.onSubscribe(cVar);
        }
    }

    public s(io.reactivex.e0<T> e0Var) {
        this.f71458a = e0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71458a.subscribe(new a(dVar));
    }
}
