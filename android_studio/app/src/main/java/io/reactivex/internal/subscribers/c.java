package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingBaseSubscriber.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends CountDownLatch implements o<T> {

    /* renamed from: a  reason: collision with root package name */
    T f75824a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f75825b;

    /* renamed from: c  reason: collision with root package name */
    org.reactivestreams.e f75826c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f75827d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                org.reactivestreams.e eVar = this.f75826c;
                this.f75826c = SubscriptionHelper.CANCELLED;
                if (eVar != null) {
                    eVar.cancel();
                }
                throw io.reactivex.internal.util.g.f(e4);
            }
        }
        Throwable th = this.f75825b;
        if (th == null) {
            return this.f75824a;
        }
        throw io.reactivex.internal.util.g.f(th);
    }

    @Override // org.reactivestreams.d
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f75826c, eVar)) {
            this.f75826c = eVar;
            if (this.f75827d) {
                return;
            }
            eVar.request(Long.MAX_VALUE);
            if (this.f75827d) {
                this.f75826c = SubscriptionHelper.CANCELLED;
                eVar.cancel();
            }
        }
    }
}
