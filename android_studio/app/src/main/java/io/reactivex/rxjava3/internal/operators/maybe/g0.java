package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapSingle.java */
/* loaded from: classes4.dex */
public final class g0<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78580a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f78581b;

    /* compiled from: MaybeFlatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78582c = 4827726964688405508L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78583a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f78584b;

        a(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper) {
            this.f78583a = actual;
            this.f78584b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78583a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78583a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78583a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f78584b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                if (isDisposed()) {
                    return;
                }
                v0Var.d(new b(this, this.f78583a));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    /* compiled from: MaybeFlatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class b<R> implements io.reactivex.rxjava3.core.s0<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f78585a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78586b;

        b(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, io.reactivex.rxjava3.core.y<? super R> downstream) {
            this.f78585a = parent;
            this.f78586b = downstream;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(final Throwable e4) {
            this.f78586b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this.f78585a, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(final R value) {
            this.f78586b.onSuccess(value);
        }
    }

    public g0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper) {
        this.f78580a = source;
        this.f78581b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> downstream) {
        this.f78580a.b(new a(downstream, this.f78581b));
    }
}
