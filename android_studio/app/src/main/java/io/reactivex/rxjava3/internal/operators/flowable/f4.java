package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeLastOne.java */
/* loaded from: classes4.dex */
public final class f4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableTakeLastOne.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f77157n = -5467847744262967226L;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f77158m;

        a(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77158m.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            T t9 = this.f81292c;
            if (t9 != null) {
                complete(t9);
            } else {
                this.f81291b.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f81292c = null;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f81292c = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77158m, s9)) {
                this.f77158m = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public f4(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9));
    }
}
