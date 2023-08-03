package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeIsEmptySingle.java */
/* loaded from: classes4.dex */
public final class t0<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.h<T>, io.reactivex.rxjava3.internal.fuseable.e<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78757a;

    /* compiled from: MaybeIsEmptySingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f78758a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78759b;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> downstream) {
            this.f78758a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78759b.dispose();
            this.f78759b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78759b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78759b = DisposableHelper.DISPOSED;
            this.f78758a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78759b = DisposableHelper.DISPOSED;
            this.f78758a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78759b, d4)) {
                this.f78759b = d4;
                this.f78758a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78759b = DisposableHelper.DISPOSED;
            this.f78758a.onSuccess(Boolean.FALSE);
        }
    }

    public t0(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78757a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        this.f78757a.b(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.e
    public io.reactivex.rxjava3.core.v<Boolean> b() {
        return io.reactivex.rxjava3.plugins.a.Q(new s0(this.f78757a));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78757a;
    }
}
