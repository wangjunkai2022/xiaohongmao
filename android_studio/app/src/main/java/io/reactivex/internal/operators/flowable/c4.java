package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeLastOne.java */
/* loaded from: classes3.dex */
public final class c4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableTakeLastOne.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f71674n = -5467847744262967226L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f71675m;

        a(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f71675m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            T t9 = this.f75877c;
            if (t9 != null) {
                complete(t9);
            } else {
                this.f75876b.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75877c = null;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75877c = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71675m, eVar)) {
                this.f71675m = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public c4(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
