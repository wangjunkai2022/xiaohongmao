package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableLastMaybe.java */
/* loaded from: classes4.dex */
public final class w1<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80363a;

    /* compiled from: ObservableLastMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f80364a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80365b;

        /* renamed from: c  reason: collision with root package name */
        T f80366c;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f80364a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80365b.dispose();
            this.f80365b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80365b == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80365b = DisposableHelper.DISPOSED;
            T t9 = this.f80366c;
            if (t9 != null) {
                this.f80366c = null;
                this.f80364a.onSuccess(t9);
                return;
            }
            this.f80364a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80365b = DisposableHelper.DISPOSED;
            this.f80366c = null;
            this.f80364a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80366c = t9;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80365b, d4)) {
                this.f80365b = d4;
                this.f80364a.onSubscribe(this);
            }
        }
    }

    public w1(io.reactivex.rxjava3.core.l0<T> source) {
        this.f80363a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f80363a.a(new a(observer));
    }
}
