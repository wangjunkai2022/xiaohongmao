package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BlockingSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements o<T>, org.reactivestreams.e {
    public static final Object TERMINATED = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final long f75766b = -4875965440900746268L;

    /* renamed from: a  reason: collision with root package name */
    final Queue<Object> f75767a;

    public BlockingSubscriber(Queue<Object> queue) {
        this.f75767a = queue;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        if (SubscriptionHelper.cancel(this)) {
            this.f75767a.offer(TERMINATED);
        }
    }

    public boolean isCancelled() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f75767a.offer(NotificationLite.complete());
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        this.f75767a.offer(NotificationLite.error(th));
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f75767a.offer(NotificationLite.next(t9));
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.setOnce(this, eVar)) {
            this.f75767a.offer(NotificationLite.subscription(this));
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        get().request(j4);
    }
}
