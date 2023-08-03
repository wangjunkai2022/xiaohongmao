package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAll.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f77121c;

    /* compiled from: FlowableAll.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f77122p = -3521127104134758517L;

        /* renamed from: m  reason: collision with root package name */
        final q7.r<? super T> f77123m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f77124n;

        /* renamed from: o  reason: collision with root package name */
        boolean f77125o;

        a(org.reactivestreams.d<? super Boolean> actual, q7.r<? super T> predicate) {
            super(actual);
            this.f77123m = predicate;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77124n.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77125o) {
                return;
            }
            this.f77125o = true;
            complete(Boolean.TRUE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77125o) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77125o = true;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77125o) {
                return;
            }
            try {
                if (this.f77123m.test(t9)) {
                    return;
                }
                this.f77125o = true;
                this.f77124n.cancel();
                complete(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77124n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77124n, s9)) {
                this.f77124n = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public f(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f77121c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super Boolean> s9) {
        this.f76811b.G6(new a(s9, this.f77121c));
    }
}
