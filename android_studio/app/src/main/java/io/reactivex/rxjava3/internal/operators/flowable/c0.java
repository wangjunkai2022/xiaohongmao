package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableCount.java */
/* loaded from: classes4.dex */
public final class c0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, Long> {

    /* compiled from: FlowableCount.java */
    /* loaded from: classes4.dex */
    static final class a extends DeferredScalarSubscription<Long> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f76928o = 4973004223787171406L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f76929m;

        /* renamed from: n  reason: collision with root package name */
        long f76930n;

        a(org.reactivestreams.d<? super Long> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f76929m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            complete(Long.valueOf(this.f76930n));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            this.f76930n++;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76929m, s9)) {
                this.f76929m = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public c0(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super Long> s9) {
        this.f76811b.G6(new a(s9));
    }
}
