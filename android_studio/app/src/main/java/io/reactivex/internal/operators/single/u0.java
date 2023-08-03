package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;

/* compiled from: SingleToFlowable.java */
/* loaded from: classes4.dex */
public final class u0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75527b;

    /* compiled from: SingleToFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.l0<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f75528n = 187782011903685568L;

        /* renamed from: m  reason: collision with root package name */
        io.reactivex.disposables.c f75529m;

        a(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f75529m.dispose();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75876b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75529m, cVar)) {
                this.f75529m = cVar;
                this.f75876b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            complete(t9);
        }
    }

    public u0(io.reactivex.o0<? extends T> o0Var) {
        this.f75527b = o0Var;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        this.f75527b.d(new a(dVar));
    }
}
