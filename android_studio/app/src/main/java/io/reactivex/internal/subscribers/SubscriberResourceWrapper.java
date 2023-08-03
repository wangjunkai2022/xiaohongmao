package io.reactivex.internal.subscribers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class SubscriberResourceWrapper<T> extends AtomicReference<io.reactivex.disposables.c> implements o<T>, io.reactivex.disposables.c, org.reactivestreams.e {

    /* renamed from: c  reason: collision with root package name */
    private static final long f75811c = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f75812a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f75813b = new AtomicReference<>();

    public SubscriberResourceWrapper(org.reactivestreams.d<? super T> dVar) {
        this.f75812a = dVar;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        SubscriptionHelper.cancel(this.f75813b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f75813b.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.f75812a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.f75812a.onError(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f75812a.onNext(t9);
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.setOnce(this.f75813b, eVar)) {
            this.f75812a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        if (SubscriptionHelper.validate(j4)) {
            this.f75813b.get().request(j4);
        }
    }

    public void setResource(io.reactivex.disposables.c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
