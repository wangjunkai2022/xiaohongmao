package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapBiSelector.java */
/* loaded from: classes4.dex */
public final class z<T, U, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80993a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends U>> f80994b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends R> f80995c;

    /* compiled from: SingleFlatMapBiSelector.java */
    /* loaded from: classes4.dex */
    static final class a<T, U, R> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends U>> f80996a;

        /* renamed from: b  reason: collision with root package name */
        final C0690a<T, U, R> f80997b;

        /* compiled from: SingleFlatMapBiSelector.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.single.z$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0690a<T, U, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<U> {

            /* renamed from: d  reason: collision with root package name */
            private static final long f80998d = -2897979525538174559L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.s0<? super R> f80999a;

            /* renamed from: b  reason: collision with root package name */
            final q7.c<? super T, ? super U, ? extends R> f81000b;

            /* renamed from: c  reason: collision with root package name */
            T f81001c;

            C0690a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.c<? super T, ? super U, ? extends R> resultSelector) {
                this.f80999a = actual;
                this.f81000b = resultSelector;
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f80999a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(U value) {
                T t9 = this.f81001c;
                this.f81001c = null;
                try {
                    R apply = this.f81000b.apply(t9, value);
                    Objects.requireNonNull(apply, "The resultSelector returned a null value");
                    this.f80999a.onSuccess(apply);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f80999a.onError(th);
                }
            }
        }

        a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends U>> mapper, q7.c<? super T, ? super U, ? extends R> resultSelector) {
            this.f80997b = new C0690a<>(actual, resultSelector);
            this.f80996a = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f80997b);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f80997b.get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80997b.f80999a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this.f80997b, d4)) {
                this.f80997b.f80999a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.v0<? extends U> apply = this.f80996a.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.v0<? extends U> v0Var = apply;
                if (DisposableHelper.replace(this.f80997b, null)) {
                    C0690a<T, U, R> c0690a = this.f80997b;
                    c0690a.f81001c = value;
                    v0Var.d(c0690a);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80997b.f80999a.onError(th);
            }
        }
    }

    public z(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends U>> mapper, q7.c<? super T, ? super U, ? extends R> resultSelector) {
        this.f80993a = source;
        this.f80994b = mapper;
        this.f80995c = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        this.f80993a.d(new a(observer, this.f80994b, this.f80995c));
    }
}
