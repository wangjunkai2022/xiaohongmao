package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BoundedSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements r<T>, org.reactivestreams.e, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: h  reason: collision with root package name */
    private static final long f81183h = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super T> f81184a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f81185b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f81186c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super org.reactivestreams.e> f81187d;

    /* renamed from: e  reason: collision with root package name */
    final int f81188e;

    /* renamed from: f  reason: collision with root package name */
    int f81189f;

    /* renamed from: g  reason: collision with root package name */
    final int f81190g;

    public BoundedSubscriber(q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.g<? super org.reactivestreams.e> onSubscribe, int bufferSize) {
        this.f81184a = onNext;
        this.f81185b = onError;
        this.f81186c = onComplete;
        this.f81187d = onSubscribe;
        this.f81188e = bufferSize;
        this.f81190g = bufferSize - (bufferSize >> 2);
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return this.f81185b != io.reactivex.rxjava3.internal.functions.a.f76185f;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == SubscriptionHelper.CANCELLED;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        org.reactivestreams.e eVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (eVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f81186c.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        org.reactivestreams.e eVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (eVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f81185b.accept(t9);
                return;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(new CompositeException(t9, th));
                return;
            }
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f81184a.accept(t9);
            int i4 = this.f81189f + 1;
            if (i4 == this.f81190g) {
                this.f81189f = 0;
                get().request(this.f81190g);
            } else {
                this.f81189f = i4;
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            get().cancel();
            onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this, s9)) {
            try {
                this.f81187d.accept(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                s9.cancel();
                onError(th);
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        get().request(n9);
    }
}
