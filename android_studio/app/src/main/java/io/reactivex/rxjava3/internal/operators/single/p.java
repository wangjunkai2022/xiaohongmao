package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDoOnDispose.java */
/* loaded from: classes4.dex */
public final class p<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80888a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f80889b;

    /* compiled from: SingleDoOnDispose.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<q7.a> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80890c = -8583764624474935784L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80891a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80892b;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.a onDispose) {
            this.f80891a = actual;
            lazySet(onDispose);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            q7.a andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
                this.f80892b.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80892b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80891a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80892b, d4)) {
                this.f80892b = d4;
                this.f80891a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80891a.onSuccess(value);
        }
    }

    public p(io.reactivex.rxjava3.core.v0<T> source, q7.a onDispose) {
        this.f80888a = source;
        this.f80889b = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80888a.d(new a(observer, this.f80889b));
    }
}
