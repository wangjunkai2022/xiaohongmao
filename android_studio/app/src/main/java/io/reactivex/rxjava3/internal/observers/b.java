package io.reactivex.rxjava3.internal.observers;

/* compiled from: BasicQueueDisposable.java */
/* loaded from: classes4.dex */
public abstract class b<T> implements io.reactivex.rxjava3.internal.fuseable.l<T> {
    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T e4) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(T v12, T v22) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
