package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.f;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class SequentialDisposable extends AtomicReference<f> implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76177a = -754898800686245608L;

    public SequentialDisposable() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(f next) {
        return DisposableHelper.replace(this, next);
    }

    public boolean update(f next) {
        return DisposableHelper.set(this, next);
    }

    public SequentialDisposable(f initial) {
        lazySet(initial);
    }
}
