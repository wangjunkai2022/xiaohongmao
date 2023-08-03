package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDelayWithPublisher.java */
/* loaded from: classes4.dex */
public final class i<T, U> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75407a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f75408b;

    /* compiled from: SingleDelayWithPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.o<U>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75409e = -8565274649390031272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75410a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.o0<T> f75411b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75412c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f75413d;

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<T> o0Var) {
            this.f75410a = l0Var;
            this.f75411b = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75413d.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75412c) {
                return;
            }
            this.f75412c = true;
            this.f75411b.d(new io.reactivex.internal.observers.o(this, this.f75410a));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75412c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75412c = true;
            this.f75410a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(U u9) {
            this.f75413d.cancel();
            onComplete();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75413d, eVar)) {
                this.f75413d = eVar;
                this.f75410a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public i(io.reactivex.o0<T> o0Var, org.reactivestreams.c<U> cVar) {
        this.f75407a = o0Var;
        this.f75408b = cVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75408b.i(new a(l0Var, this.f75407a));
    }
}
