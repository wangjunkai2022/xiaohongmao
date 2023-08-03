package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAny.java */
/* loaded from: classes4.dex */
public final class i<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f77305c;

    /* compiled from: FlowableAny.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f77306p = -2311252482644620661L;

        /* renamed from: m  reason: collision with root package name */
        final q7.r<? super T> f77307m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f77308n;

        /* renamed from: o  reason: collision with root package name */
        boolean f77309o;

        a(org.reactivestreams.d<? super Boolean> actual, q7.r<? super T> predicate) {
            super(actual);
            this.f77307m = predicate;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77308n.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77309o) {
                return;
            }
            this.f77309o = true;
            complete(Boolean.FALSE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77309o) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77309o = true;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77309o) {
                return;
            }
            try {
                if (this.f77307m.test(t9)) {
                    this.f77309o = true;
                    this.f77308n.cancel();
                    complete(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77308n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77308n, s9)) {
                this.f77308n = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public i(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f77305c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super Boolean> s9) {
        this.f76811b.G6(new a(s9, this.f77305c));
    }
}
