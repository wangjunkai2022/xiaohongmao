package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.internal.fuseable.n;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.d;
import p7.f;

/* loaded from: classes4.dex */
public final class ScalarSubscription<T> extends AtomicInteger implements n<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final long f81294c = -3830916580126663321L;

    /* renamed from: d  reason: collision with root package name */
    static final int f81295d = 0;

    /* renamed from: e  reason: collision with root package name */
    static final int f81296e = 1;

    /* renamed from: f  reason: collision with root package name */
    static final int f81297f = 2;

    /* renamed from: a  reason: collision with root package name */
    final T f81298a;

    /* renamed from: b  reason: collision with root package name */
    final d<? super T> f81299b;

    public ScalarSubscription(d<? super T> subscriber, T value) {
        this.f81299b = subscriber;
        this.f81298a = value;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        lazySet(2);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(T e4) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    @f
    public T poll() {
        if (get() == 0) {
            lazySet(1);
            return this.f81298a;
        }
        return null;
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        if (SubscriptionHelper.validate(n9) && compareAndSet(0, 1)) {
            d<? super T> dVar = this.f81299b;
            dVar.onNext((T) this.f81298a);
            if (get() != 2) {
                dVar.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public int requestFusion(int mode) {
        return mode & 1;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(T v12, T v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
