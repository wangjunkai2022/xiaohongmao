package io.reactivex.internal.operators.observable;

/* compiled from: ObservableIgnoreElements.java */
/* loaded from: classes3.dex */
public final class l1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableIgnoreElements.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74365a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74366b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74365a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74366b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74366b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74365a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74365a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74366b = cVar;
            this.f74365a.onSubscribe(this);
        }
    }

    public l1(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
