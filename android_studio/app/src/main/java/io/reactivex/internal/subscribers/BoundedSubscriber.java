package io.reactivex.internal.subscribers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BoundedSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements o<T>, org.reactivestreams.e, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: h  reason: collision with root package name */
    private static final long f75768h = -7251123623727029452L;

    /* renamed from: a  reason: collision with root package name */
    final n7.g<? super T> f75769a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f75770b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f75771c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super org.reactivestreams.e> f75772d;

    /* renamed from: e  reason: collision with root package name */
    final int f75773e;

    /* renamed from: f  reason: collision with root package name */
    int f75774f;

    /* renamed from: g  reason: collision with root package name */
    final int f75775g;

    public BoundedSubscriber(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.g<? super org.reactivestreams.e> gVar3, int i4) {
        this.f75769a = gVar;
        this.f75770b = gVar2;
        this.f75771c = aVar;
        this.f75772d = gVar3;
        this.f75773e = i4;
        this.f75775g = i4 - (i4 >> 2);
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
        return this.f75770b != io.reactivex.internal.functions.a.f71132f;
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
                this.f75771c.run();
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
                this.f75770b.accept(th);
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
            this.f75769a.accept(t9);
            int i4 = this.f75774f + 1;
            if (i4 == this.f75775g) {
                this.f75774f = 0;
                get().request(this.f75775g);
            } else {
                this.f75774f = i4;
            }
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
                this.f75772d.accept(this);
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
