package io.reactivex.rxjava3.internal.jdk8;

import java.util.NoSuchElementException;

/* compiled from: ObservableSingleStageObserver.java */
/* loaded from: classes4.dex */
public final class y<T> extends z<T> {

    /* renamed from: c  reason: collision with root package name */
    final boolean f76428c;

    /* renamed from: d  reason: collision with root package name */
    final T f76429d;

    public y(boolean hasDefault, T defaultItem) {
        this.f76428c = hasDefault;
        this.f76429d = defaultItem;
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
        } else if (this.f76428c) {
            complete(this.f76429d);
        } else {
            completeExceptionally(new NoSuchElementException());
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        if (this.f76431b != null) {
            this.f76431b = null;
            completeExceptionally(new IllegalArgumentException("Sequence contains more than one element!"));
            return;
        }
        this.f76431b = t9;
    }
}
