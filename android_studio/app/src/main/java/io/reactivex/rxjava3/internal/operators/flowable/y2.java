package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableReduce.java */
/* loaded from: classes4.dex */
public final class y2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.c<T, T, T> f78333c;

    /* compiled from: FlowableReduce.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f78334o = -4663883003264602070L;

        /* renamed from: m  reason: collision with root package name */
        final q7.c<T, T, T> f78335m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f78336n;

        a(org.reactivestreams.d<? super T> actual, q7.c<T, T, T> reducer) {
            super(actual);
            this.f78335m = reducer;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f78336n.cancel();
            this.f78336n = SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = this.f78336n;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar == subscriptionHelper) {
                return;
            }
            this.f78336n = subscriptionHelper;
            T t9 = this.f81292c;
            if (t9 != null) {
                complete(t9);
            } else {
                this.f81291b.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            org.reactivestreams.e eVar = this.f78336n;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar == subscriptionHelper) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78336n = subscriptionHelper;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78336n == SubscriptionHelper.CANCELLED) {
                return;
            }
            T t10 = this.f81292c;
            if (t10 == null) {
                this.f81292c = t9;
                return;
            }
            try {
                T apply = this.f78335m.apply(t10, t9);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f81292c = apply;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78336n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78336n, s9)) {
                this.f78336n = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public y2(io.reactivex.rxjava3.core.m<T> source, q7.c<T, T, T> reducer) {
        super(source);
        this.f78333c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78333c));
    }
}
