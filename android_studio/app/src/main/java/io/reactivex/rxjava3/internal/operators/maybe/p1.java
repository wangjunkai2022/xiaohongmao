package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;

/* compiled from: MaybeToObservable.java */
/* loaded from: classes4.dex */
public final class p1<T> extends io.reactivex.rxjava3.core.g0<T> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78718a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeToObservable.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends DeferredScalarDisposable<T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f78719k = 7603343402964826922L;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78720j;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            super.dispose();
            this.f78720j.dispose();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            error(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78720j, d4)) {
                this.f78720j = d4;
                this.f76449b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            complete(value);
        }
    }

    public p1(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78718a = source;
    }

    public static <T> io.reactivex.rxjava3.core.y<T> A8(io.reactivex.rxjava3.core.n0<? super T> downstream) {
        return new a(downstream);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f78718a.b(A8(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78718a;
    }
}
