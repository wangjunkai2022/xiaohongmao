package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class CallbackCompletableObserver extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f, q7.g<Throwable>, io.reactivex.rxjava3.observers.g {

    /* renamed from: c  reason: collision with root package name */
    private static final long f76437c = -4361286194466301354L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super Throwable> f76438a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f76439b;

    public CallbackCompletableObserver(q7.a onComplete) {
        this.f76438a = this;
        this.f76439b = onComplete;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return this.f76438a != this;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        try {
            this.f76439b.run();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        try {
            this.f76438a.accept(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }

    @Override // q7.g
    public void accept(Throwable e4) {
        io.reactivex.rxjava3.plugins.a.Y(new OnErrorNotImplementedException(e4));
    }

    public CallbackCompletableObserver(q7.g<? super Throwable> onError, q7.a onComplete) {
        this.f76438a = onError;
        this.f76439b = onComplete;
    }
}
