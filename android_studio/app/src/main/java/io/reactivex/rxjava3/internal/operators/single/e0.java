package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapNotification.java */
/* loaded from: classes4.dex */
public final class e0<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80774a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80775b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80776c;

    /* compiled from: SingleFlatMapNotification.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80777e = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f80778a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80779b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f80780c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80781d;

        /* compiled from: SingleFlatMapNotification.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.single.e0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0686a implements io.reactivex.rxjava3.core.s0<R> {
            C0686a() {
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.f80778a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(a.this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.f80778a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> onSuccessMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends R>> onErrorMapper) {
            this.f80778a = actual;
            this.f80779b = onSuccessMapper;
            this.f80780c = onErrorMapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f80781d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f80780c.apply(e4);
                Objects.requireNonNull(apply, "The onErrorMapper returned a null SingleSource");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                if (isDisposed()) {
                    return;
                }
                v0Var.d(new C0686a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80778a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80781d, d4)) {
                this.f80781d = d4;
                this.f80778a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f80779b.apply(value);
                Objects.requireNonNull(apply, "The onSuccessMapper returned a null SingleSource");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                if (isDisposed()) {
                    return;
                }
                v0Var.d(new C0686a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80778a.onError(th);
            }
        }
    }

    public e0(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> onSuccessMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.v0<? extends R>> onErrorMapper) {
        this.f80774a = source;
        this.f80775b = onSuccessMapper;
        this.f80776c = onErrorMapper;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        this.f80774a.d(new a(observer, this.f80775b, this.f80776c));
    }
}
