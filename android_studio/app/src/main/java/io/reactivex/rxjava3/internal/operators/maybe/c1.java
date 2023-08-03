package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeOnErrorNext.java */
/* loaded from: classes4.dex */
public final class c1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends T>> f78495b;

    /* compiled from: MaybeOnErrorNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78496c = 2026620218879969836L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78497a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends T>> f78498b;

        /* compiled from: MaybeOnErrorNext.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.c1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0643a<T> implements io.reactivex.rxjava3.core.y<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.y<? super T> f78499a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.rxjava3.disposables.f> f78500b;

            C0643a(io.reactivex.rxjava3.core.y<? super T> actual, AtomicReference<io.reactivex.rxjava3.disposables.f> d4) {
                this.f78499a = actual;
                this.f78500b = d4;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78499a.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78499a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this.f78500b, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(T value) {
                this.f78499a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends T>> resumeFunction) {
            this.f78497a = actual;
            this.f78498b = resumeFunction;
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
            this.f78497a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            try {
                io.reactivex.rxjava3.core.b0<? extends T> apply = this.f78498b.apply(e4);
                Objects.requireNonNull(apply, "The resumeFunction returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends T> b0Var = apply;
                DisposableHelper.replace(this, null);
                b0Var.b(new C0643a(this.f78497a, this));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78497a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78497a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78497a.onSuccess(value);
        }
    }

    public c1(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.b0<? extends T>> resumeFunction) {
        super(source);
        this.f78495b = resumeFunction;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78495b));
    }
}
