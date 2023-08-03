package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTakeUntil.java */
/* loaded from: classes4.dex */
public final class w0<T, U> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80955a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f80956b;

    /* compiled from: SingleTakeUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80957c = -622603812305745221L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80958a;

        /* renamed from: b  reason: collision with root package name */
        final b f80959b = new b(this);

        a(io.reactivex.rxjava3.core.s0<? super T> downstream) {
            this.f80958a = downstream;
        }

        void a(Throwable e4) {
            io.reactivex.rxjava3.disposables.f andSet;
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != disposableHelper) {
                if (andSet != null) {
                    andSet.dispose();
                }
                this.f80958a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f80959b.a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80959b.a();
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper && getAndSet(disposableHelper) != disposableHelper) {
                this.f80958a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80959b.a();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f80958a.onSuccess(value);
            }
        }
    }

    /* compiled from: SingleTakeUntil.java */
    /* loaded from: classes4.dex */
    static final class b extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f80960b = 5170026210238877381L;

        /* renamed from: a  reason: collision with root package name */
        final a<?> f80961a;

        b(a<?> parent) {
            this.f80961a = parent;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f80961a.a(new CancellationException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f80961a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            if (SubscriptionHelper.cancel(this)) {
                this.f80961a.a(new CancellationException());
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public w0(io.reactivex.rxjava3.core.v0<T> source, org.reactivestreams.c<U> other) {
        this.f80955a = source;
        this.f80956b = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f80956b.i(aVar.f80959b);
        this.f80955a.d(aVar);
    }
}
