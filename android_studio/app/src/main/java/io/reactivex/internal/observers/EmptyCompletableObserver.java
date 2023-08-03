package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class EmptyCompletableObserver extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c, io.reactivex.observers.f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71194a = -7545121636549663526L;

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.observers.f
    public boolean hasCustomOnError() {
        return false;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.d
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        io.reactivex.plugins.a.Y(new OnErrorNotImplementedException(th));
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }
}
