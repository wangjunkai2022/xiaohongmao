package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;

/* compiled from: MaybeToFlowable.java */
/* loaded from: classes3.dex */
public final class l1<T> extends io.reactivex.j<T> implements o7.f<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<T> f73385b;

    /* compiled from: MaybeToFlowable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.t<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f73386n = 7603343402964826922L;

        /* renamed from: m  reason: collision with root package name */
        io.reactivex.disposables.c f73387m;

        a(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f73387m.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f75876b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f75876b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73387m, cVar)) {
                this.f73387m = cVar;
                this.f75876b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            complete(t9);
        }
    }

    public l1(io.reactivex.w<T> wVar) {
        this.f73385b = wVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f73385b.b(new a(dVar));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73385b;
    }
}
