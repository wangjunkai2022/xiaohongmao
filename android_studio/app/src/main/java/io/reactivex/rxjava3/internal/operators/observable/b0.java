package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableCountSingle.java */
/* loaded from: classes4.dex */
public final class b0<T> extends io.reactivex.rxjava3.core.p0<Long> implements io.reactivex.rxjava3.internal.fuseable.f<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79205a;

    /* compiled from: ObservableCountSingle.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Long> f79206a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79207b;

        /* renamed from: c  reason: collision with root package name */
        long f79208c;

        a(io.reactivex.rxjava3.core.s0<? super Long> downstream) {
            this.f79206a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79207b.dispose();
            this.f79207b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79207b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79207b = DisposableHelper.DISPOSED;
            this.f79206a.onSuccess(Long.valueOf(this.f79208c));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79207b = DisposableHelper.DISPOSED;
            this.f79206a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            this.f79208c++;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79207b, d4)) {
                this.f79207b = d4;
                this.f79206a.onSubscribe(this);
            }
        }
    }

    public b0(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79205a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super Long> t9) {
        this.f79205a.a(new a(t9));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.f
    public io.reactivex.rxjava3.core.g0<Long> a() {
        return io.reactivex.rxjava3.plugins.a.R(new a0(this.f79205a));
    }
}
