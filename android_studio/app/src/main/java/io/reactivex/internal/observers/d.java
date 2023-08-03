package io.reactivex.internal.observers;

/* compiled from: BlockingFirstObserver.java */
/* loaded from: classes3.dex */
public final class d<T> extends c<T> {
    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f71216a == null) {
            this.f71217b = th;
        }
        countDown();
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        if (this.f71216a == null) {
            this.f71216a = t9;
            this.f71218c.dispose();
            countDown();
        }
    }
}
