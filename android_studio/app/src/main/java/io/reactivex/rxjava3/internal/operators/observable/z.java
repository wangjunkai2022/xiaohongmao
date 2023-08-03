package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithSingle.java */
/* loaded from: classes4.dex */
public final class z<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80468b;

    /* compiled from: ObservableConcatWithSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80469d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80470a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.core.v0<? extends T> f80471b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80472c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.v0<? extends T> other) {
            this.f80470a = actual;
            this.f80471b = other;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80472c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.rxjava3.core.v0<? extends T> v0Var = this.f80471b;
            this.f80471b = null;
            v0Var.d(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f80470a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80470a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (!DisposableHelper.setOnce(this, d4) || this.f80472c) {
                return;
            }
            this.f80470a.onSubscribe(this);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f80470a.onNext(t9);
            this.f80470a.onComplete();
        }
    }

    public z(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.v0<? extends T> other) {
        super(source);
        this.f80468b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80468b));
    }
}
