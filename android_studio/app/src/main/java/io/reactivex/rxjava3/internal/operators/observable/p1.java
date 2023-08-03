package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableIgnoreElements.java */
/* loaded from: classes4.dex */
public final class p1<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableIgnoreElements.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79920a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79921b;

        a(io.reactivex.rxjava3.core.n0<? super T> t9) {
            this.f79920a = t9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79921b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79921b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79920a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f79920a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T v9) {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79921b = d4;
            this.f79920a.onSubscribe(this);
        }
    }

    public p1(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(final io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9));
    }
}
