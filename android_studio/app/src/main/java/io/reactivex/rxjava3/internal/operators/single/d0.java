package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapMaybe.java */
/* loaded from: classes4.dex */
public final class d0<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80757a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f80758b;

    /* compiled from: SingleFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<R> implements io.reactivex.rxjava3.core.y<R> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f80759a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f80760b;

        a(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, io.reactivex.rxjava3.core.y<? super R> downstream) {
            this.f80759a = parent;
            this.f80760b = downstream;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f80760b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(final Throwable e4) {
            this.f80760b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this.f80759a, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(final R value) {
            this.f80760b.onSuccess(value);
        }
    }

    /* compiled from: SingleFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80761c = -5843758257109742742L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f80762a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f80763b;

        b(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper) {
            this.f80762a = actual;
            this.f80763b = mapper;
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
            this.f80762a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80762a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f80763b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                if (isDisposed()) {
                    return;
                }
                b0Var.b(new a(this, this.f80762a));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public d0(io.reactivex.rxjava3.core.v0<? extends T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper) {
        this.f80758b = mapper;
        this.f80757a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> downstream) {
        this.f80757a.d(new b(downstream, this.f80758b));
    }
}
