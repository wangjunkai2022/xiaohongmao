package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: SingleDoOnTerminate.java */
/* loaded from: classes4.dex */
public final class v<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80938a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f80939b;

    /* compiled from: SingleDoOnTerminate.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80940a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80940a = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                v.this.f80939b.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f80940a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80940a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                v.this.f80939b.run();
                this.f80940a.onSuccess(value);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80940a.onError(th);
            }
        }
    }

    public v(io.reactivex.rxjava3.core.v0<T> source, q7.a onTerminate) {
        this.f80938a = source;
        this.f80939b = onTerminate;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80938a.d(new a(observer));
    }
}
