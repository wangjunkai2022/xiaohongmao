package io.reactivex.internal.operators.observable;

/* compiled from: ObservableIgnoreElementsCompletable.java */
/* loaded from: classes3.dex */
public final class m1<T> extends io.reactivex.a implements o7.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74415a;

    /* compiled from: ObservableIgnoreElementsCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f74416a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74417b;

        a(io.reactivex.d dVar) {
            this.f74416a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74417b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74417b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74416a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74416a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74417b = cVar;
            this.f74416a.onSubscribe(this);
        }
    }

    public m1(io.reactivex.e0<T> e0Var) {
        this.f74415a = e0Var;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        this.f74415a.subscribe(new a(dVar));
    }

    @Override // o7.d
    public io.reactivex.z<T> a() {
        return io.reactivex.plugins.a.R(new l1(this.f74415a));
    }
}
