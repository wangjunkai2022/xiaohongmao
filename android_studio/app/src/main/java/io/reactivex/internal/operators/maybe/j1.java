package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimeoutPublisher.java */
/* loaded from: classes3.dex */
public final class j1<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f73347b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f73348c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73349b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73350a;

        a(io.reactivex.t<? super T> tVar) {
            this.f73350a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73350a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73350a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73350a.onSuccess(t9);
        }
    }

    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73351e = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73352a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f73353b = new c<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.w<? extends T> f73354c;

        /* renamed from: d  reason: collision with root package name */
        final a<T> f73355d;

        b(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f73352a = tVar;
            this.f73354c = wVar;
            this.f73355d = wVar != null ? new a<>(tVar) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.w<? extends T> wVar = this.f73354c;
                if (wVar == null) {
                    this.f73352a.onError(new TimeoutException());
                } else {
                    wVar.b(this.f73355d);
                }
            }
        }

        public void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f73352a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f73353b);
            a<T> aVar = this.f73355d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            SubscriptionHelper.cancel(this.f73353b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73352a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f73353b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73352a.onError(th);
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
            SubscriptionHelper.cancel(this.f73353b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73352a.onSuccess(t9);
            }
        }
    }

    /* compiled from: MaybeTimeoutPublisher.java */
    /* loaded from: classes3.dex */
    static final class c<T, U> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73356b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f73357a;

        c(b<T, U> bVar) {
            this.f73357a = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73357a.a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73357a.b(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            get().cancel();
            this.f73357a.a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public j1(io.reactivex.w<T> wVar, org.reactivestreams.c<U> cVar, io.reactivex.w<? extends T> wVar2) {
        super(wVar);
        this.f73347b = cVar;
        this.f73348c = wVar2;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        b bVar = new b(tVar, this.f73348c);
        tVar.onSubscribe(bVar);
        this.f73347b.i(bVar.f73353b);
        this.f73172a.b(bVar);
    }
}
