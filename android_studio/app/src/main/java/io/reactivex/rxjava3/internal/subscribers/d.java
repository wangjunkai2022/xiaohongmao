package io.reactivex.rxjava3.internal.subscribers;

/* compiled from: BlockingFirstSubscriber.java */
/* loaded from: classes4.dex */
public final class d<T> extends c<T> {
    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81239a == null) {
            this.f81240b = t9;
        } else {
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81239a == null) {
            this.f81239a = t9;
            this.f81241c.cancel();
            countDown();
        }
    }
}
