package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class LambdaSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements r<T>, org.reactivestreams.e, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: e  reason: collision with root package name */
    private static final long f81207e = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super T> f81208a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f81209b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f81210c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super org.reactivestreams.e> f81211d;

    public LambdaSubscriber(q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.g<? super org.reactivestreams.e> onSubscribe) {
        this.f81208a = onNext;
        this.f81209b = onError;
        this.f81210c = onComplete;
        this.f81211d = onSubscribe;
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
        return this.f81209b != io.reactivex.rxjava3.internal.functions.a.f76185f;
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
                this.f81210c.run();
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
                this.f81209b.accept(t9);
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
            this.f81208a.accept(t9);
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
                this.f81211d.accept(this);
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
