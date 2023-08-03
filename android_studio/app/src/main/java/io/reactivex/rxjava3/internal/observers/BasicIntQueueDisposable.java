package io.reactivex.rxjava3.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.internal.fuseable.l<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76432a = -1001730202384742097L;

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T e4) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T v12, T v22) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
