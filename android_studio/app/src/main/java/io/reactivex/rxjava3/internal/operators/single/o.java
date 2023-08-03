package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SingleDoFinally.java */
/* loaded from: classes4.dex */
public final class o<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80878a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f80879b;

    /* compiled from: SingleDoFinally.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80880d = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80881a;

        /* renamed from: b  reason: collision with root package name */
        final q7.a f80882b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80883c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.a onFinally) {
            this.f80881a = actual;
            this.f80882b = onFinally;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f80882b.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80883c.dispose();
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80883c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable t9) {
            this.f80881a.onError(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80883c, d4)) {
                this.f80883c = d4;
                this.f80881a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f80881a.onSuccess(t9);
            a();
        }
    }

    public o(io.reactivex.rxjava3.core.v0<T> source, q7.a onFinally) {
        this.f80878a = source;
        this.f80879b = onFinally;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80878a.d(new a(observer, this.f80879b));
    }
}
