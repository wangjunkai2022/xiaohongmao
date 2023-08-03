package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableFromCompletable.java */
/* loaded from: classes4.dex */
public final class f1<T> extends io.reactivex.rxjava3.core.g0<T> implements io.reactivex.rxjava3.internal.fuseable.g {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f79413a;

    /* compiled from: ObservableFromCompletable.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends io.reactivex.rxjava3.internal.fuseable.a<T> implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79414a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79415b;

        public a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79414a = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.a, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79415b.dispose();
            this.f79415b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.a, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79415b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f79415b = DisposableHelper.DISPOSED;
            this.f79414a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f79415b = DisposableHelper.DISPOSED;
            this.f79414a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79415b, d4)) {
                this.f79415b = d4;
                this.f79414a.onSubscribe(this);
            }
        }
    }

    public f1(io.reactivex.rxjava3.core.g source) {
        this.f79413a = source;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79413a.d(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.g
    public io.reactivex.rxjava3.core.g source() {
        return this.f79413a;
    }
}
