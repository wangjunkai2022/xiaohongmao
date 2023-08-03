package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: MaybeDematerialize.java */
/* loaded from: classes4.dex */
public final class o<T, R> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> f78706b;

    /* compiled from: MaybeDematerialize.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78707a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> f78708b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78709c;

        a(io.reactivex.rxjava3.core.y<? super R> downstream, q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> selector) {
            this.f78707a = downstream;
            this.f78708b = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78709c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78709c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78707a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78707a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78709c, d4)) {
                this.f78709c = d4;
                this.f78707a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            try {
                io.reactivex.rxjava3.core.d0<R> apply = this.f78708b.apply(t9);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                io.reactivex.rxjava3.core.d0<R> d0Var = apply;
                if (d0Var.h()) {
                    this.f78707a.onSuccess(d0Var.e());
                } else if (d0Var.f()) {
                    this.f78707a.onComplete();
                } else {
                    this.f78707a.onError(d0Var.d());
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78707a.onError(th);
            }
        }
    }

    public o(io.reactivex.rxjava3.core.v<T> source, q7.o<? super T, io.reactivex.rxjava3.core.d0<R>> selector) {
        super(source);
        this.f78706b = selector;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f78452a.b(new a(observer, this.f78706b));
    }
}
