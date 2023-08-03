package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: SingleDematerialize.java */
/* loaded from: classes4.dex */
public final class k<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.p0<T> f80848a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> f80849b;

    /* compiled from: SingleDematerialize.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f80850a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> f80851b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80852c;

        a(io.reactivex.rxjava3.core.y<? super R> downstream, q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> selector) {
            this.f80850a = downstream;
            this.f80851b = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80852c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80852c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80850a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80852c, d4)) {
                this.f80852c = d4;
                this.f80850a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            try {
                io.reactivex.rxjava3.core.d0<R> apply = this.f80851b.apply(t9);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                io.reactivex.rxjava3.core.d0<R> d0Var = apply;
                if (d0Var.h()) {
                    this.f80850a.onSuccess(d0Var.e());
                } else if (d0Var.f()) {
                    this.f80850a.onComplete();
                } else {
                    this.f80850a.onError(d0Var.d());
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80850a.onError(th);
            }
        }
    }

    public k(io.reactivex.rxjava3.core.p0<T> source, q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> selector) {
        this.f80848a = source;
        this.f80849b = selector;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f80848a.d(new a(observer, this.f80849b));
    }
}
