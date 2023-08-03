package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class SequentialDisposable extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71124a = -754898800686245608L;

    public SequentialDisposable() {
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(io.reactivex.disposables.c cVar) {
        return DisposableHelper.replace(this, cVar);
    }

    public boolean update(io.reactivex.disposables.c cVar) {
        return DisposableHelper.set(this, cVar);
    }

    public SequentialDisposable(io.reactivex.disposables.c cVar) {
        lazySet(cVar);
    }
}
