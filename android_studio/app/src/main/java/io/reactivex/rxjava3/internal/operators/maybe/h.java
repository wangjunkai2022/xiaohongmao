package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeCount.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.core.p0<Long> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78593a;

    /* compiled from: MaybeCount.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.y<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Long> f78594a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78595b;

        a(io.reactivex.rxjava3.core.s0<? super Long> downstream) {
            this.f78594a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78595b.dispose();
            this.f78595b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78595b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78595b = DisposableHelper.DISPOSED;
            this.f78594a.onSuccess(0L);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78595b = DisposableHelper.DISPOSED;
            this.f78594a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78595b, d4)) {
                this.f78595b = d4;
                this.f78594a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(Object value) {
            this.f78595b = DisposableHelper.DISPOSED;
            this.f78594a.onSuccess(1L);
        }
    }

    public h(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78593a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Long> observer) {
        this.f78593a.b(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78593a;
    }
}
