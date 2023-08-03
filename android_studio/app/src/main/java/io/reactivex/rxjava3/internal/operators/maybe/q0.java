package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeIgnoreElement.java */
/* loaded from: classes4.dex */
public final class q0<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeIgnoreElement.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78725a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78726b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78725a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78726b.dispose();
            this.f78726b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78726b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78726b = DisposableHelper.DISPOSED;
            this.f78725a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78726b = DisposableHelper.DISPOSED;
            this.f78725a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78726b, d4)) {
                this.f78726b = d4;
                this.f78725a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78726b = DisposableHelper.DISPOSED;
            this.f78725a.onComplete();
        }
    }

    public q0(io.reactivex.rxjava3.core.b0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer));
    }
}
