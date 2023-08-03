package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;

/* loaded from: classes4.dex */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements o<T> {

    /* renamed from: o  reason: collision with root package name */
    private static final long f75776o = 2984505488220891551L;

    /* renamed from: m  reason: collision with root package name */
    protected org.reactivestreams.e f75777m;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f75778n;

    public DeferredScalarSubscriber(org.reactivestreams.d<? super R> dVar) {
        super(dVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
    public void cancel() {
        super.cancel();
        this.f75777m.cancel();
    }

    public void onComplete() {
        if (this.f75778n) {
            complete(this.f75877c);
        } else {
            this.f75876b.onComplete();
        }
    }

    public void onError(Throwable th) {
        this.f75877c = null;
        this.f75876b.onError(th);
    }

    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f75777m, eVar)) {
            this.f75777m = eVar;
            this.f75876b.onSubscribe(this);
            eVar.request(Long.MAX_VALUE);
        }
    }
}
