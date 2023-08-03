package io.reactivex.rxjava3.internal.fuseable;

/* compiled from: SimpleQueue.java */
/* loaded from: classes4.dex */
public interface q<T> {
    void clear();

    boolean isEmpty();

    boolean offer(@p7.e T value);

    boolean offer(@p7.e T v12, @p7.e T v22);

    @p7.f
    T poll() throws Throwable;
}
