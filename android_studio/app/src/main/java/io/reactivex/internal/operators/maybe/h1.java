package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTakeUntilPublisher.java */
/* loaded from: classes3.dex */
public final class h1<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f73322b;

    /* compiled from: MaybeTakeUntilPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73323c = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73324a;

        /* renamed from: b  reason: collision with root package name */
        final C0570a<U> f73325b = new C0570a<>(this);

        /* compiled from: MaybeTakeUntilPublisher.java */
        /* renamed from: io.reactivex.internal.operators.maybe.h1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0570a<U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73326b = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f73327a;

            C0570a(a<?, U> aVar) {
                this.f73327a = aVar;
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                this.f73327a.a();
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                this.f73327a.b(th);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                this.f73327a.a();
            }

            @Override // io.reactivex.o, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e eVar) {
                SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
            }
        }

        a(io.reactivex.t<? super T> tVar) {
            this.f73324a = tVar;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f73324a.onComplete();
            }
        }

        void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f73324a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f73325b);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            SubscriptionHelper.cancel(this.f73325b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73324a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f73325b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73324a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            SubscriptionHelper.cancel(this.f73325b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73324a.onSuccess(t9);
            }
        }
    }

    public h1(io.reactivex.w<T> wVar, org.reactivestreams.c<U> cVar) {
        super(wVar);
        this.f73322b = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        this.f73322b.i(aVar.f73325b);
        this.f73172a.b(aVar);
    }
}
