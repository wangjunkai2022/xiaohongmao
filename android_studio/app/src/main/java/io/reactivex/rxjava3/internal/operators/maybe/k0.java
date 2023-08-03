package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeFromCompletable.java */
/* loaded from: classes4.dex */
public final class k0<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.g {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f78639a;

    /* compiled from: MaybeFromCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78640a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78641b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78640a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78641b.dispose();
            this.f78641b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78641b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78641b = DisposableHelper.DISPOSED;
            this.f78640a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78641b = DisposableHelper.DISPOSED;
            this.f78640a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78641b, d4)) {
                this.f78641b = d4;
                this.f78640a.onSubscribe(this);
            }
        }
    }

    public k0(io.reactivex.rxjava3.core.g source) {
        this.f78639a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78639a.d(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.g
    public io.reactivex.rxjava3.core.g source() {
        return this.f78639a;
    }
}
