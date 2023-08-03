package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableHide.java */
/* loaded from: classes4.dex */
public final class o1<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableHide.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79876a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79877b;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79876a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79877b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79877b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79876a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79876a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79876a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79877b, d4)) {
                this.f79877b = d4;
                this.f79876a.onSubscribe(this);
            }
        }
    }

    public o1(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> o9) {
        this.f79141a.a(new a(o9));
    }
}
