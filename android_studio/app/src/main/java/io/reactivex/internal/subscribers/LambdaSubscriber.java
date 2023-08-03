package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class LambdaSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements o<T>, org.reactivestreams.e, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: e  reason: collision with root package name */
    private static final long f75792e = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super T> f75793a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f75794b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f75795c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super org.reactivestreams.e> f75796d;

    public LambdaSubscriber(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.g<? super org.reactivestreams.e> gVar3) {
        this.f75793a = gVar;
        this.f75794b = gVar2;
        this.f75795c = aVar;
        this.f75796d = gVar3;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return this.f75794b != io.reactivex.internal.functions.a.f71132f;
    }

    @Override // io.reactivex.disposables.c
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
                this.f75795c.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        org.reactivestreams.e eVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (eVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            try {
                this.f75794b.accept(th);
                return;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                io.reactivex.plugins.a.Y(new CompositeException(th, th2));
                return;
            }
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f75793a.accept(t9);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            get().cancel();
            onError(th);
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.setOnce(this, eVar)) {
            try {
                this.f75796d.accept(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                eVar.cancel();
                onError(th);
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        get().request(j4);
    }
}
