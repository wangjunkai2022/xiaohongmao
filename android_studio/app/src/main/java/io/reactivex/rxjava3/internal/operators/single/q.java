package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SingleDoOnError.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80894a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f80895b;

    /* compiled from: SingleDoOnError.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.s0<? super T> f80896a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80896a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                q.this.f80895b.accept(e4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f80896a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80896a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80896a.onSuccess(value);
        }
    }

    public q(io.reactivex.rxjava3.core.v0<T> source, q7.g<? super Throwable> onError) {
        this.f80894a = source;
        this.f80895b = onError;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80894a.d(new a(observer));
    }
}
