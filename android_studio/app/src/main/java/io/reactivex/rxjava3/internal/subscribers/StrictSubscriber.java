package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public class StrictSubscriber<T> extends AtomicInteger implements r<T>, org.reactivestreams.e {

    /* renamed from: g  reason: collision with root package name */
    private static final long f81219g = -4945028590049415624L;

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.d<? super T> f81220a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicThrowable f81221b = new AtomicThrowable();

    /* renamed from: c  reason: collision with root package name */
    final AtomicLong f81222c = new AtomicLong();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81223d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f81224e = new AtomicBoolean();

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f81225f;

    public StrictSubscriber(org.reactivestreams.d<? super T> downstream) {
        this.f81220a = downstream;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        if (this.f81225f) {
            return;
        }
        SubscriptionHelper.cancel(this.f81223d);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f81225f = true;
        io.reactivex.rxjava3.internal.util.h.b(this.f81220a, this, this.f81221b);
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        this.f81225f = true;
        io.reactivex.rxjava3.internal.util.h.d(this.f81220a, t9, this, this.f81221b);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.h.f(this.f81220a, t9, this, this.f81221b);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (this.f81224e.compareAndSet(false, true)) {
            this.f81220a.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.f81223d, this.f81222c, s9);
            return;
        }
        s9.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        if (n9 <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + n9));
            return;
        }
        SubscriptionHelper.deferredRequest(this.f81223d, this.f81222c, n9);
    }
}
