package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingBaseSubscriber.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends CountDownLatch implements r<T> {

    /* renamed from: a  reason: collision with root package name */
    T f81239a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f81240b;

    /* renamed from: c  reason: collision with root package name */
    org.reactivestreams.e f81241c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f81242d;

    public c() {
        super(1);
    }

    public final T a() {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.c.b();
                await();
            } catch (InterruptedException e4) {
                org.reactivestreams.e eVar = this.f81241c;
                this.f81241c = SubscriptionHelper.CANCELLED;
                if (eVar != null) {
                    eVar.cancel();
                }
                throw io.reactivex.rxjava3.internal.util.g.i(e4);
            }
        }
        Throwable th = this.f81240b;
        if (th == null) {
            return this.f81239a;
        }
        throw io.reactivex.rxjava3.internal.util.g.i(th);
    }

    @Override // org.reactivestreams.d
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81241c, s9)) {
            this.f81241c = s9;
            if (this.f81242d) {
                return;
            }
            s9.request(Long.MAX_VALUE);
            if (this.f81242d) {
                this.f81241c = SubscriptionHelper.CANCELLED;
                s9.cancel();
            }
        }
    }
}
