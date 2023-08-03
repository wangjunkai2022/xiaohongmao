package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: SingleDetach.java */
/* loaded from: classes4.dex */
public final class l<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80856a;

    /* compiled from: SingleDetach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.rxjava3.core.s0<? super T> f80857a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80858b;

        a(io.reactivex.rxjava3.core.s0<? super T> downstream) {
            this.f80857a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80857a = null;
            this.f80858b.dispose();
            this.f80858b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80858b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80858b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.s0<? super T> s0Var = this.f80857a;
            if (s0Var != null) {
                this.f80857a = null;
                s0Var.onError(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80858b, d4)) {
                this.f80858b = d4;
                this.f80857a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80858b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.s0<? super T> s0Var = this.f80857a;
            if (s0Var != null) {
                this.f80857a = null;
                s0Var.onSuccess(value);
            }
        }
    }

    public l(io.reactivex.rxjava3.core.v0<T> source) {
        this.f80856a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80856a.d(new a(observer));
    }
}
