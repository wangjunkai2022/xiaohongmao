package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* loaded from: classes4.dex */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements r<T> {

    /* renamed from: o  reason: collision with root package name */
    private static final long f81191o = 2984505488220891551L;

    /* renamed from: m  reason: collision with root package name */
    protected org.reactivestreams.e f81192m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f81193n;

    public DeferredScalarSubscriber(org.reactivestreams.d<? super R> downstream) {
        super(downstream);
    }

    @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
    public void cancel() {
        super.cancel();
        this.f81192m.cancel();
    }

    public void onComplete() {
        if (this.f81193n) {
            complete(this.f81292c);
        } else {
            this.f81291b.onComplete();
        }
    }

    public void onError(Throwable t9) {
        this.f81292c = null;
        this.f81291b.onError(t9);
    }

    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81192m, s9)) {
            this.f81192m = s9;
            this.f81291b.onSubscribe(this);
            s9.request(Long.MAX_VALUE);
        }
    }
}
