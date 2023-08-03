package io.reactivex.rxjava3.internal.observers;

/* compiled from: InnerQueuedObserverSupport.java */
/* loaded from: classes4.dex */
public interface k<T> {
    void a(InnerQueuedObserver<T> inner, T value);

    void b();

    void c(InnerQueuedObserver<T> inner);

    void d(InnerQueuedObserver<T> inner, Throwable e4);
}
