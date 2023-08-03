package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimeoutPublisher.java */
/* loaded from: classes4.dex */
public final class m1<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f78680b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f78681c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78682b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78683a;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78683a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78683a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78683a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78683a.onSuccess(value);
        }
    }

    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78684e = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78685a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f78686b = new c<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<? extends T> f78687c;

        /* renamed from: d  reason: collision with root package name */
        final a<T> f78688d;

        b(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T> fallback) {
            this.f78685a = actual;
            this.f78687c = fallback;
            this.f78688d = fallback != null ? new a<>(actual) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.rxjava3.core.b0<? extends T> b0Var = this.f78687c;
                if (b0Var == null) {
                    this.f78685a.onError(new TimeoutException());
                } else {
                    b0Var.b(this.f78688d);
                }
            }
        }

        public void b(Throwable e4) {
            if (DisposableHelper.dispose(this)) {
                this.f78685a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f78686b);
            a<T> aVar = this.f78688d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f78686b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78685a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            SubscriptionHelper.cancel(this.f78686b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78685a.onError(e4);
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
            SubscriptionHelper.cancel(this.f78686b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78685a.onSuccess(value);
            }
        }
    }

    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes4.dex */
    static final class c<T, U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78689b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f78690a;

        c(b<T, U> parent) {
            this.f78690a = parent;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78690a.a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            this.f78690a.b(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object value) {
            get().cancel();
            this.f78690a.a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public m1(io.reactivex.rxjava3.core.b0<T> source, org.reactivestreams.c<U> other, io.reactivex.rxjava3.core.b0<? extends T> fallback) {
        super(source);
        this.f78680b = other;
        this.f78681c = fallback;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        b bVar = new b(observer, this.f78681c);
        observer.onSubscribe(bVar);
        this.f78680b.i(bVar.f78686b);
        this.f78452a.b(bVar);
    }
}
