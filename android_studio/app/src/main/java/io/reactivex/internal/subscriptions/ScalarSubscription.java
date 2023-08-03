package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicInteger;
import m7.f;
import o7.l;
import org.reactivestreams.d;

/* loaded from: classes4.dex */
public final class ScalarSubscription<T> extends AtomicInteger implements l<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final long f75879c = -3830916580126663321L;

    /* renamed from: d  reason: collision with root package name */
    static final int f75880d = 0;

    /* renamed from: e  reason: collision with root package name */
    static final int f75881e = 1;

    /* renamed from: f  reason: collision with root package name */
    static final int f75882f = 2;

    /* renamed from: a  reason: collision with root package name */
    final T f75883a;

    /* renamed from: b  reason: collision with root package name */
    final d<? super T> f75884b;

    public ScalarSubscription(d<? super T> dVar, T t9) {
        this.f75884b = dVar;
        this.f75883a = t9;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        lazySet(2);
    }

    @Override // o7.o
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override // o7.o
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // o7.o
    public boolean offer(T t9) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // o7.o
    @f
    public T poll() {
        if (get() == 0) {
            lazySet(1);
            return this.f75883a;
        }
        return null;
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        if (SubscriptionHelper.validate(j4) && compareAndSet(0, 1)) {
            d<? super T> dVar = this.f75884b;
            dVar.onNext((T) this.f75883a);
            if (get() != 2) {
                dVar.onComplete();
            }
        }
    }

    @Override // o7.k
    public int requestFusion(int i4) {
        return i4 & 1;
    }

    @Override // o7.o
    public boolean offer(T t9, T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
