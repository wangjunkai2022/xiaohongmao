package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.internal.fuseable.n;
import org.reactivestreams.d;
import p7.f;

/* loaded from: classes4.dex */
public enum EmptySubscription implements n<Object> {
    INSTANCE;

    public static void complete(d<?> s9) {
        s9.onSubscribe(INSTANCE);
        s9.onComplete();
    }

    public static void error(Throwable e4, d<?> s9) {
        s9.onSubscribe(INSTANCE);
        s9.onError(e4);
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(Object value) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    @f
    public Object poll() {
        return null;
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        SubscriptionHelper.validate(n9);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public int requestFusion(int mode) {
        return mode & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(Object v12, Object v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
