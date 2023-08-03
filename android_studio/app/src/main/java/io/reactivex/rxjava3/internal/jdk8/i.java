package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: FlowableLastStageSubscriber.java */
/* loaded from: classes4.dex */
public final class i<T> extends l<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76344c;

    /* renamed from: d  reason: collision with root package name */
    final T f76345d;

    public i(boolean hasDefault, T defaultItem) {
        this.f76344c = hasDefault;
        this.f76345d = defaultItem;
    }

    @Override // io.reactivex.rxjava3.internal.jdk8.l
    protected void a(org.reactivestreams.e s9) {
        s9.request(Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (isDone()) {
            return;
        }
        T t9 = this.f76353b;
        c();
        if (t9 != null) {
            complete(t9);
        } else if (this.f76344c) {
            complete(this.f76345d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        this.f76353b = t9;
    }
}
