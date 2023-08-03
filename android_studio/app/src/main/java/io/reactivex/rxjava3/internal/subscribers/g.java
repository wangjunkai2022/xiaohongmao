package io.reactivex.rxjava3.internal.subscribers;

/* compiled from: InnerQueuedSubscriberSupport.java */
/* loaded from: classes4.dex */
public interface g<T> {
    void a(InnerQueuedSubscriber<T> inner);

    void b();

    void c(InnerQueuedSubscriber<T> inner, Throwable e4);

    void d(InnerQueuedSubscriber<T> inner, T value);
}
