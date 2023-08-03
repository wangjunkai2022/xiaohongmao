package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: FlowableFirstStageSubscriber.java */
/* loaded from: classes4.dex */
public final class e<T> extends l<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76298c;

    /* renamed from: d  reason: collision with root package name */
    final T f76299d;

    public e(boolean hasDefault, T defaultItem) {
        this.f76298c = hasDefault;
        this.f76299d = defaultItem;
    }

    @Override // io.reactivex.rxjava3.internal.jdk8.l
    protected void a(org.reactivestreams.e s9) {
        s9.request(1L);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (isDone()) {
            return;
        }
        c();
        if (this.f76298c) {
            complete(this.f76299d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        complete(t9);
    }
}
