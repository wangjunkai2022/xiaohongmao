package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public final class AsyncSubscription extends AtomicLong implements e, f {

    /* renamed from: c  reason: collision with root package name */
    private static final long f81276c = 7028635084060361255L;

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<e> f81277a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<f> f81278b;

    public AsyncSubscription() {
        this.f81278b = new AtomicReference<>();
        this.f81277a = new AtomicReference<>();
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        SubscriptionHelper.cancel(this.f81277a);
        DisposableHelper.dispose(this.f81278b);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81277a.get() == SubscriptionHelper.CANCELLED;
    }

    public boolean replaceResource(f r9) {
        return DisposableHelper.replace(this.f81278b, r9);
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        SubscriptionHelper.deferredRequest(this.f81277a, this, n9);
    }

    public boolean setResource(f r9) {
        return DisposableHelper.set(this.f81278b, r9);
    }

    public void setSubscription(e s9) {
        SubscriptionHelper.deferredSetOnce(this.f81277a, this, s9);
    }

    public AsyncSubscription(f resource) {
        this();
        this.f81278b.lazySet(resource);
    }
}
