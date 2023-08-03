package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class EmptyCompletableObserver extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76453a = -7545121636549663526L;

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        lazySet(DisposableHelper.DISPOSED);
        io.reactivex.rxjava3.plugins.a.Y(new OnErrorNotImplementedException(e4));
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }
}
