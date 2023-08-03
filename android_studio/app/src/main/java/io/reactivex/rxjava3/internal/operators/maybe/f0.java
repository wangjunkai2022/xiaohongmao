package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapNotification.java */
/* loaded from: classes4.dex */
public final class f0<T, R> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78559b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78560c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.b0<? extends R>> f78561d;

    /* compiled from: MaybeFlatMapNotification.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: f  reason: collision with root package name */
        private static final long f78562f = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78563a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78564b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78565c;

        /* renamed from: d  reason: collision with root package name */
        final q7.s<? extends io.reactivex.rxjava3.core.b0<? extends R>> f78566d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78567e;

        /* compiled from: MaybeFlatMapNotification.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0644a implements io.reactivex.rxjava3.core.y<R> {
            C0644a() {
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.f78563a.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.f78563a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(a.this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.f78563a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> onSuccessMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends R>> onErrorMapper, q7.s<? extends io.reactivex.rxjava3.core.b0<? extends R>> onCompleteSupplier) {
            this.f78563a = actual;
            this.f78564b = onSuccessMapper;
            this.f78565c = onErrorMapper;
            this.f78566d = onCompleteSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f78567e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = this.f78566d.get();
                Objects.requireNonNull(b0Var, "The onCompleteSupplier returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var2 = b0Var;
                if (isDisposed()) {
                    return;
                }
                b0Var2.b(new C0644a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78563a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f78565c.apply(e4);
                Objects.requireNonNull(apply, "The onErrorMapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                if (isDisposed()) {
                    return;
                }
                b0Var.b(new C0644a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78563a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78567e, d4)) {
                this.f78567e = d4;
                this.f78563a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f78564b.apply(value);
                Objects.requireNonNull(apply, "The onSuccessMapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                if (isDisposed()) {
                    return;
                }
                b0Var.b(new C0644a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78563a.onError(th);
            }
        }
    }

    public f0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> onSuccessMapper, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends R>> onErrorMapper, q7.s<? extends io.reactivex.rxjava3.core.b0<? extends R>> onCompleteSupplier) {
        super(source);
        this.f78559b = onSuccessMapper;
        this.f78560c = onErrorMapper;
        this.f78561d = onCompleteSupplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f78452a.b(new a(observer, this.f78559b, this.f78560c, this.f78561d));
    }
}
