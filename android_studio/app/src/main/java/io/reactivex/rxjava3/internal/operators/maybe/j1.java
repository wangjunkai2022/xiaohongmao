package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTakeUntilPublisher.java */
/* loaded from: classes4.dex */
public final class j1<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f78621b;

    /* compiled from: MaybeTakeUntilPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78622c = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78623a;

        /* renamed from: b  reason: collision with root package name */
        final C0649a<U> f78624b = new C0649a<>(this);

        /* compiled from: MaybeTakeUntilPublisher.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.j1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0649a<U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78625b = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f78626a;

            C0649a(a<?, U> parent) {
                this.f78626a = parent;
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                this.f78626a.a();
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable e4) {
                this.f78626a.b(e4);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object value) {
                SubscriptionHelper.cancel(this);
                this.f78626a.a();
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
            }
        }

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78623a = downstream;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f78623a.onComplete();
            }
        }

        void b(Throwable e4) {
            if (DisposableHelper.dispose(this)) {
                this.f78623a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f78624b);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f78624b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78623a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            SubscriptionHelper.cancel(this.f78624b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78623a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            SubscriptionHelper.cancel(this.f78624b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78623a.onSuccess(value);
            }
        }
    }

    public j1(io.reactivex.rxjava3.core.b0<T> source, org.reactivestreams.c<U> other) {
        super(source);
        this.f78621b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f78621b.i(aVar.f78624b);
        this.f78452a.b(aVar);
    }
}
