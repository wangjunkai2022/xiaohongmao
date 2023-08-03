package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public final class AsyncSubscription extends AtomicLong implements e, c {

    /* renamed from: c  reason: collision with root package name */
    private static final long f75861c = 7028635084060361255L;

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<e> f75862a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<c> f75863b;

    public AsyncSubscription() {
        this.f75863b = new AtomicReference<>();
        this.f75862a = new AtomicReference<>();
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this.f75862a);
        DisposableHelper.dispose(this.f75863b);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75862a.get() == SubscriptionHelper.CANCELLED;
    }

    public boolean replaceResource(c cVar) {
        return DisposableHelper.replace(this.f75863b, cVar);
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        SubscriptionHelper.deferredRequest(this.f75862a, this, j4);
    }

    public boolean setResource(c cVar) {
        return DisposableHelper.set(this.f75863b, cVar);
    }

    public void setSubscription(e eVar) {
        SubscriptionHelper.deferredSetOnce(this.f75862a, this, eVar);
    }

    public AsyncSubscription(c cVar) {
        this();
        this.f75863b.lazySet(cVar);
    }
}
