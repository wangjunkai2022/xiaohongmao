package io.reactivex.rxjava3.internal.subscribers;

/* compiled from: BlockingLastSubscriber.java */
/* loaded from: classes4.dex */
public final class e<T> extends c<T> {
    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        this.f81239a = null;
        this.f81240b = t9;
        countDown();
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f81239a = t9;
    }
}
