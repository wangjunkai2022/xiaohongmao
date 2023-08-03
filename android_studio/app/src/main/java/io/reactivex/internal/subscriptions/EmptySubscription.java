package io.reactivex.internal.subscriptions;

import m7.f;
import o7.l;
import org.reactivestreams.d;

/* loaded from: classes4.dex */
public enum EmptySubscription implements l<Object> {
    INSTANCE;

    public static void complete(d<?> dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onComplete();
    }

    public static void error(Throwable th, d<?> dVar) {
        dVar.onSubscribe(INSTANCE);
        dVar.onError(th);
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // o7.o
    public void clear() {
    }

    @Override // o7.o
    public boolean isEmpty() {
        return true;
    }

    @Override // o7.o
    public boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // o7.o
    @f
    public Object poll() {
        return null;
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        SubscriptionHelper.validate(j4);
    }

    @Override // o7.k
    public int requestFusion(int i4) {
        return i4 & 2;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "EmptySubscription";
    }

    @Override // o7.o
    public boolean offer(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
