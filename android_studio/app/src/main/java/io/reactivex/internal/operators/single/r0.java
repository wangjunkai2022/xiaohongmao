package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTakeUntil.java */
/* loaded from: classes4.dex */
public final class r0<T, U> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75488a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f75489b;

    /* compiled from: SingleTakeUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75490c = -622603812305745221L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75491a;

        /* renamed from: b  reason: collision with root package name */
        final b f75492b = new b(this);

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75491a = l0Var;
        }

        void a(Throwable th) {
            io.reactivex.disposables.c andSet;
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper && (andSet = getAndSet(disposableHelper)) != disposableHelper) {
                if (andSet != null) {
                    andSet.dispose();
                }
                this.f75491a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f75492b.a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75492b.a();
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper && getAndSet(disposableHelper) != disposableHelper) {
                this.f75491a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75492b.a();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f75491a.onSuccess(t9);
            }
        }
    }

    /* compiled from: SingleTakeUntil.java */
    /* loaded from: classes4.dex */
    static final class b extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f75493b = 5170026210238877381L;

        /* renamed from: a  reason: collision with root package name */
        final a<?> f75494a;

        b(a<?> aVar) {
            this.f75494a = aVar;
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
                this.f75494a.a(new CancellationException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75494a.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f75494a.a(new CancellationException());
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public r0(io.reactivex.o0<T> o0Var, org.reactivestreams.c<U> cVar) {
        this.f75488a = o0Var;
        this.f75489b = cVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        a aVar = new a(l0Var);
        l0Var.onSubscribe(aVar);
        this.f75489b.i(aVar.f75492b);
        this.f75488a.d(aVar);
    }
}
