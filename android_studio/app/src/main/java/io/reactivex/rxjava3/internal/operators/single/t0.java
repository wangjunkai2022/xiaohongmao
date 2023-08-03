package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SingleOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class t0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80924a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends T> f80925b;

    /* renamed from: c  reason: collision with root package name */
    final T f80926c;

    /* compiled from: SingleOnErrorReturn.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.s0<? super T> f80927a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80927a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            T apply;
            t0 t0Var = t0.this;
            q7.o<? super Throwable, ? extends T> oVar = t0Var.f80925b;
            if (oVar != null) {
                try {
                    apply = oVar.apply(e4);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f80927a.onError(new CompositeException(e4, th));
                    return;
                }
            } else {
                apply = t0Var.f80926c;
            }
            if (apply == null) {
                NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                nullPointerException.initCause(e4);
                this.f80927a.onError(nullPointerException);
                return;
            }
            this.f80927a.onSuccess(apply);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80927a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80927a.onSuccess(value);
        }
    }

    public t0(io.reactivex.rxjava3.core.v0<? extends T> source, q7.o<? super Throwable, ? extends T> valueSupplier, T value) {
        this.f80924a = source;
        this.f80925b = valueSupplier;
        this.f80926c = value;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80924a.d(new a(observer));
    }
}
