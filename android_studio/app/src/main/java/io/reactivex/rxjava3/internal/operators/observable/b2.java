package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableMaterialize.java */
/* loaded from: classes4.dex */
public final class b2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.d0<T>> {

    /* compiled from: ObservableMaterialize.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.d0<T>> f79213a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79214b;

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.d0<T>> downstream) {
            this.f79213a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79214b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79214b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79213a.onNext(io.reactivex.rxjava3.core.d0.a());
            this.f79213a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79213a.onNext(io.reactivex.rxjava3.core.d0.b(t9));
            this.f79213a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79213a.onNext(io.reactivex.rxjava3.core.d0.c(t9));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79214b, d4)) {
                this.f79214b = d4;
                this.f79213a.onSubscribe(this);
            }
        }
    }

    public b2(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.d0<T>> t9) {
        this.f79141a.a(new a(t9));
    }
}
