package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeFromSingle.java */
/* loaded from: classes4.dex */
public final class n0<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f78698a;

    /* compiled from: MaybeFromSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78699a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78700b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78699a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78700b.dispose();
            this.f78700b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78700b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78700b = DisposableHelper.DISPOSED;
            this.f78699a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78700b, d4)) {
                this.f78700b = d4;
                this.f78699a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78700b = DisposableHelper.DISPOSED;
            this.f78699a.onSuccess(value);
        }
    }

    public n0(io.reactivex.rxjava3.core.v0<T> source) {
        this.f78698a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78698a.d(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.k
    public io.reactivex.rxjava3.core.v0<T> source() {
        return this.f78698a;
    }
}
