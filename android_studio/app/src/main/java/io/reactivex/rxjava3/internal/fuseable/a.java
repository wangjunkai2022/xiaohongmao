package io.reactivex.rxjava3.internal.fuseable;

/* compiled from: AbstractEmptyQueueFuseable.java */
/* loaded from: classes4.dex */
public abstract class a<T> implements n<T>, l<T> {
    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final void clear() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return false;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean isEmpty() {
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(@p7.e T value) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final T poll() throws Throwable {
        return null;
    }

    @Override // org.reactivestreams.e
    public final void request(long n9) {
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public final int requestFusion(int mode) {
        return mode & 2;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(@p7.e T v12, @p7.e T v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
