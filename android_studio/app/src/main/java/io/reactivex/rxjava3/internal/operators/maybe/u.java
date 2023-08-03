package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: MaybeDoOnTerminate.java */
/* loaded from: classes4.dex */
public final class u<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78769a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f78770b;

    /* compiled from: MaybeDoOnTerminate.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78771a;

        a(io.reactivex.rxjava3.core.y<? super T> observer) {
            this.f78771a = observer;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            try {
                u.this.f78770b.run();
                this.f78771a.onComplete();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78771a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                u.this.f78770b.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f78771a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78771a.onSubscribe(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                u.this.f78770b.run();
                this.f78771a.onSuccess(value);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78771a.onError(th);
            }
        }
    }

    public u(io.reactivex.rxjava3.core.b0<T> source, q7.a onTerminate) {
        this.f78769a = source;
        this.f78770b = onTerminate;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78769a.b(new a(observer));
    }
}
