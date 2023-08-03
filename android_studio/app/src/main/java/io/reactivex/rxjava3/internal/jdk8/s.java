package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: ObservableFirstStageObserver.java */
/* loaded from: classes4.dex */
public final class s<T> extends z<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76402c;

    /* renamed from: d  reason: collision with root package name */
    final T f76403d;

    public s(boolean hasDefault, T defaultItem) {
        this.f76402c = hasDefault;
        this.f76403d = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (isDone()) {
            return;
        }
        a();
        if (this.f76402c) {
            complete(this.f76403d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        complete(t9);
    }
}
