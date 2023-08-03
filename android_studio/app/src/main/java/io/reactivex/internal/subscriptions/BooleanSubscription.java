package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public final class BooleanSubscription extends AtomicBoolean implements e {

    /* renamed from: a  reason: collision with root package name */
    private static final long f75866a = -8127758972444290902L;

    @Override // org.reactivestreams.e
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        SubscriptionHelper.validate(j4);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + ")";
    }
}
