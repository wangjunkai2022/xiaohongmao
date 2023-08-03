package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatten.java */
/* loaded from: classes4.dex */
public final class h0<T, R> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78596b;

    /* compiled from: MaybeFlatten.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78597d = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78598a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f78599b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78600c;

        /* compiled from: MaybeFlatten.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.h0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0646a implements io.reactivex.rxjava3.core.y<R> {
            C0646a() {
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.f78598a.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.f78598a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(a.this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.f78598a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.y<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper) {
            this.f78598a = actual;
            this.f78599b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f78600c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78598a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78598a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78600c, d4)) {
                this.f78600c = d4;
                this.f78598a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f78599b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                if (isDisposed()) {
                    return;
                }
                b0Var.b(new C0646a());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78598a.onError(th);
            }
        }
    }

    public h0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper) {
        super(source);
        this.f78596b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        this.f78452a.b(new a(observer, this.f78596b));
    }
}
