package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BlockingSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements r<T>, org.reactivestreams.e {
    public static final Object TERMINATED = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final long f81181b = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f81182a;

    public BlockingSubscriber(Queue<Object> queue) {
        this.f81182a = queue;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.f81182a.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f81182a.offer(NotificationLite.complete());
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        this.f81182a.offer(NotificationLite.error(t9));
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f81182a.offer(NotificationLite.next(t9));
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this, s9)) {
            this.f81182a.offer(NotificationLite.subscription(this));
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        get().request(n9);
    }
}
