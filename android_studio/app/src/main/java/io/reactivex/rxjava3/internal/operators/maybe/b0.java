package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapBiSelector.java */
/* loaded from: classes4.dex */
public final class b0<T, U, R> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends U>> f78470b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends R> f78471c;

    /* compiled from: MaybeFlatMapBiSelector.java */
    /* loaded from: classes4.dex */
    static final class a<T, U, R> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends U>> f78472a;

        /* renamed from: b  reason: collision with root package name */
        final C0642a<T, U, R> f78473b;

        /* compiled from: MaybeFlatMapBiSelector.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.b0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0642a<T, U, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<U> {

            /* renamed from: d  reason: collision with root package name */
            private static final long f78474d = -2897979525538174559L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.y<? super R> f78475a;

            /* renamed from: b  reason: collision with root package name */
            final q7.c<? super T, ? super U, ? extends R> f78476b;

            /* renamed from: c  reason: collision with root package name */
            T f78477c;

            C0642a(io.reactivex.rxjava3.core.y<? super R> actual, q7.c<? super T, ? super U, ? extends R> resultSelector) {
                this.f78475a = actual;
                this.f78476b = resultSelector;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78475a.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78475a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(U value) {
                T t9 = this.f78477c;
                this.f78477c = null;
                try {
                    R apply = this.f78476b.apply(t9, value);
                    Objects.requireNonNull(apply, "The resultSelector returned a null value");
                    this.f78475a.onSuccess(apply);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f78475a.onError(th);
                }
            }
        }

        a(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends U>> mapper, q7.c<? super T, ? super U, ? extends R> resultSelector) {
            this.f78473b = new C0642a<>(actual, resultSelector);
            this.f78472a = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f78473b);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f78473b.get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78473b.f78475a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78473b.f78475a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this.f78473b, d4)) {
                this.f78473b.f78475a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.b0<? extends U> apply = this.f78472a.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends U> b0Var = apply;
                if (DisposableHelper.replace(this.f78473b, null)) {
                    C0642a<T, U, R> c0642a = this.f78473b;
                    c0642a.f78477c = value;
                    b0Var.b(c0642a);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78473b.f78475a.onError(th);
            }
        }
    }

    public b0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends U>> mapper, q7.c<? super T, ? super U, ? extends R> resultSelector) {
        super(source);
        this.f78470b = mapper;
        this.f78471c = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f78452a.b(new a(observer, this.f78470b, this.f78471c));
    }
}
