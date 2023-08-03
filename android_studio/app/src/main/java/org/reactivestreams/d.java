package org.reactivestreams;

/* compiled from: Subscriber.java */
/* loaded from: classes5.dex */
public interface d<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t9);

    void onSubscribe(e eVar);
}
