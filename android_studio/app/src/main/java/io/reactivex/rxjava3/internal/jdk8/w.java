package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: ObservableLastStageObserver.java */
/* loaded from: classes4.dex */
public final class w<T> extends z<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76423c;

    /* renamed from: d  reason: collision with root package name */
    final T f76424d;

    public w(boolean hasDefault, T defaultItem) {
        this.f76423c = hasDefault;
        this.f76424d = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (isDone()) {
            return;
        }
        T t9 = this.f76431b;
        a();
        if (t9 != null) {
            complete(t9);
        } else if (this.f76423c) {
            complete(this.f76424d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        this.f76431b = t9;
    }
}
