package io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements o7.j<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71173a = -1001730202384742097L;

    @Override // o7.o
    public final boolean offer(T t9) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // o7.o
    public final boolean offer(T t9, T t10) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
