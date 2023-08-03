package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class SubscriberResourceWrapper<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements r<T>, io.reactivex.rxjava3.disposables.f, org.reactivestreams.e {

    /* renamed from: c  reason: collision with root package name */
    private static final long f81226c = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81227a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81228b = new AtomicReference<>();

    public SubscriberResourceWrapper(org.reactivestreams.d<? super T> downstream) {
        this.f81227a = downstream;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        SubscriptionHelper.cancel(this.f81228b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f81228b.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.f81227a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        DisposableHelper.dispose(this);
        this.f81227a.onError(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f81227a.onNext(t9);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this.f81228b, s9)) {
            this.f81227a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        if (SubscriptionHelper.validate(n9)) {
            this.f81228b.get().request(n9);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.f resource) {
        DisposableHelper.set(this, resource);
    }
}
