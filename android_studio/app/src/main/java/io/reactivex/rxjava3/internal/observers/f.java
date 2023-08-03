package io.reactivex.rxjava3.internal.observers;

/* compiled from: BlockingLastObserver.java */
/* loaded from: classes4.dex */
public final class f<T> extends c<T> {
    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        this.f76475a = null;
        this.f76476b = t9;
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        this.f76475a = t9;
    }
}
