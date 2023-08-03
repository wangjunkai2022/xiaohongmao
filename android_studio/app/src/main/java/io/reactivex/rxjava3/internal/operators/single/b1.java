package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;

/* compiled from: SingleToObservable.java */
/* loaded from: classes4.dex */
public final class b1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80731a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleToObservable.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends DeferredScalarDisposable<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f80732k = 3786543492451018833L;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80733j;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            super.dispose();
            this.f80733j.dispose();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            error(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80733j, d4)) {
                this.f80733j = d4;
                this.f76449b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            complete(value);
        }
    }

    public b1(io.reactivex.rxjava3.core.v0<? extends T> source) {
        this.f80731a = source;
    }

    public static <T> io.reactivex.rxjava3.core.s0<T> A8(io.reactivex.rxjava3.core.n0<? super T> downstream) {
        return new a(downstream);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(final io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f80731a.d(A8(observer));
    }
}
