package io.reactivex.internal.subscribers;

/* compiled from: BlockingLastSubscriber.java */
/* loaded from: classes4.dex */
public final class e<T> extends c<T> {
    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        this.f75824a = null;
        this.f75825b = th;
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f75824a = t9;
    }
}
