package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMap.java */
/* loaded from: classes4.dex */
public final class y<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80972a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80973b;

    /* compiled from: SingleFlatMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80974c = 3258103020495908596L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f80975a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80976b;

        /* compiled from: SingleFlatMap.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.single.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0688a<R> implements io.reactivex.rxjava3.core.s0<R> {

            /* renamed from: a  reason: collision with root package name */
            final AtomicReference<io.reactivex.rxjava3.disposables.f> f80977a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.rxjava3.core.s0<? super R> f80978b;

            C0688a(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, io.reactivex.rxjava3.core.s0<? super R> downstream) {
                this.f80977a = parent;
                this.f80978b = downstream;
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(final Throwable e4) {
                this.f80978b.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this.f80977a, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(final R value) {
                this.f80978b.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper) {
            this.f80975a = actual;
            this.f80976b = mapper;
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
            this.f80975a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80975a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f80976b.apply(value);
                Objects.requireNonNull(apply, "The single returned by the mapper is null");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                if (isDisposed()) {
                    return;
                }
                v0Var.d(new C0688a(this, this.f80975a));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80975a.onError(th);
            }
        }
    }

    public y(io.reactivex.rxjava3.core.v0<? extends T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper) {
        this.f80973b = mapper;
        this.f80972a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> downstream) {
        this.f80972a.d(new a(downstream, this.f80973b));
    }
}
