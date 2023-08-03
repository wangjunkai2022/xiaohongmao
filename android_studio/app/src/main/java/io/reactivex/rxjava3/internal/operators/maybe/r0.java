package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeIgnoreElementCompletable.java */
/* loaded from: classes4.dex */
public final class r0<T> extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.internal.fuseable.e<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78737a;

    /* compiled from: MaybeIgnoreElementCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78738a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78739b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f78738a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78739b.dispose();
            this.f78739b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78739b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78739b = DisposableHelper.DISPOSED;
            this.f78738a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78739b = DisposableHelper.DISPOSED;
            this.f78738a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78739b, d4)) {
                this.f78739b = d4;
                this.f78738a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78739b = DisposableHelper.DISPOSED;
            this.f78738a.onComplete();
        }
    }

    public r0(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78737a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f78737a.b(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.e
    public io.reactivex.rxjava3.core.v<T> b() {
        return io.reactivex.rxjava3.plugins.a.Q(new q0(this.f78737a));
    }
}
