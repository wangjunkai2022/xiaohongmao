package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public class StrictSubscriber<T> extends AtomicInteger implements o<T>, org.reactivestreams.e {

    /* renamed from: g  reason: collision with root package name */
    private static final long f75804g = -4945028590049415624L;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f75805a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicThrowable f75806b = new AtomicThrowable();

    /* renamed from: c  reason: collision with root package name */
    final AtomicLong f75807c = new AtomicLong();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f75808d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f75809e = new AtomicBoolean();

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f75810f;

    public StrictSubscriber(org.reactivestreams.d<? super T> dVar) {
        this.f75805a = dVar;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        if (this.f75810f) {
            return;
        }
        SubscriptionHelper.cancel(this.f75808d);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f75810f = true;
        io.reactivex.internal.util.h.b(this.f75805a, this, this.f75806b);
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        this.f75810f = true;
        io.reactivex.internal.util.h.d(this.f75805a, th, this, this.f75806b);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.util.h.f(this.f75805a, t9, this, this.f75806b);
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (this.f75809e.compareAndSet(false, true)) {
            this.f75805a.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.f75808d, this.f75807c, eVar);
            return;
        }
        eVar.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        if (j4 <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j4));
            return;
        }
        SubscriptionHelper.deferredRequest(this.f75808d, this.f75807c, j4);
    }
}
