package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableCount.java */
/* loaded from: classes3.dex */
public final class d0<T> extends io.reactivex.internal.operators.flowable.a<T, Long> {

    /* compiled from: FlowableCount.java */
    /* loaded from: classes3.dex */
    static final class a extends DeferredScalarSubscription<Long> implements io.reactivex.o<Object> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71681o = 4973004223787171406L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f71682m;

        /* renamed from: n  reason: collision with root package name */
        long f71683n;

        a(org.reactivestreams.d<? super Long> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f71682m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            complete(Long.valueOf(this.f71683n));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            this.f71683n++;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71682m, eVar)) {
                this.f71682m = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public d0(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super Long> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
