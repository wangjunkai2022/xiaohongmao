package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableIgnoreElementsCompletable.java */
/* loaded from: classes4.dex */
public final class q1<T> extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.internal.fuseable.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79988a;

    /* compiled from: ObservableIgnoreElementsCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f79989a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79990b;

        a(io.reactivex.rxjava3.core.d t9) {
            this.f79989a = t9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79990b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79990b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79989a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f79989a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T v9) {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79990b = d4;
            this.f79989a.onSubscribe(this);
        }
    }

    public q1(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79988a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d t9) {
        this.f79988a.a(new a(t9));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<T> a() {
        return io.reactivex.rxjava3.plugins.a.R(new p1(this.f79988a));
    }
}
