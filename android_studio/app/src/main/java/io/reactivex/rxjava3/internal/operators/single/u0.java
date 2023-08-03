package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleResumeNext.java */
/* loaded from: classes4.dex */
public final class u0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80933a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends T>> f80934b;

    /* compiled from: SingleResumeNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80935c = -5314538511045349925L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80936a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends T>> f80937b;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends T>> nextFunction) {
            this.f80936a = actual;
            this.f80937b = nextFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                io.reactivex.rxjava3.core.v0<? extends T> apply = this.f80937b.apply(e4);
                Objects.requireNonNull(apply, "The nextFunction returned a null SingleSource.");
                apply.d(new io.reactivex.rxjava3.internal.observers.p(this, this.f80936a));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80936a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80936a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80936a.onSuccess(value);
        }
    }

    public u0(io.reactivex.rxjava3.core.v0<? extends T> source, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends T>> nextFunction) {
        this.f80933a = source;
        this.f80934b = nextFunction;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80933a.d(new a(observer, this.f80934b));
    }
}
