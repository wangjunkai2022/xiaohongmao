package io.reactivex.internal.subscribers;

/* compiled from: BlockingFirstSubscriber.java */
/* loaded from: classes4.dex */
public final class d<T> extends c<T> {
    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f75824a == null) {
            this.f75825b = th;
        } else {
            io.reactivex.plugins.a.Y(th);
        }
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f75824a == null) {
            this.f75824a = t9;
            this.f75826c.cancel();
            countDown();
        }
    }
}
