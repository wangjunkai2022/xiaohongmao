package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: FlowableSingleStageSubscriber.java */
/* loaded from: classes4.dex */
public final class k<T> extends l<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76350c;

    /* renamed from: d  reason: collision with root package name */
    final T f76351d;

    public k(boolean hasDefault, T defaultItem) {
        this.f76350c = hasDefault;
        this.f76351d = defaultItem;
    }

    @Override // io.reactivex.rxjava3.internal.jdk8.l
    protected void a(org.reactivestreams.e s9) {
        s9.request(2L);
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
        } else if (this.f76350c) {
            complete(this.f76351d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f76353b != null) {
            this.f76353b = null;
            completeExceptionally(new IllegalArgumentException("Sequence contains more than one element!"));
            return;
        }
        this.f76353b = t9;
    }
}
