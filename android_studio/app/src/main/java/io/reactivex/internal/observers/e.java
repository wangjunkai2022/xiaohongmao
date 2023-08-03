package io.reactivex.internal.observers;

/* compiled from: BlockingLastObserver.java */
/* loaded from: classes3.dex */
public final class e<T> extends c<T> {
    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f71216a = null;
        this.f71217b = th;
        countDown();
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        this.f71216a = t9;
    }
}
