package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SingleDoOnEvent.java */
/* loaded from: classes4.dex */
public final class r<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80899a;

    /* renamed from: b  reason: collision with root package name */
    final q7.b<? super T, ? super Throwable> f80900b;

    /* compiled from: SingleDoOnEvent.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.s0<? super T> f80901a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80901a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                r.this.f80900b.accept(null, e4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f80901a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80901a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                r.this.f80900b.accept(value, null);
                this.f80901a.onSuccess(value);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80901a.onError(th);
            }
        }
    }

    public r(io.reactivex.rxjava3.core.v0<T> source, q7.b<? super T, ? super Throwable> onEvent) {
        this.f80899a = source;
        this.f80900b = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80899a.d(new a(observer));
    }
}
