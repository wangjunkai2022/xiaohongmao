package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class MaybeCallbackObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: d  reason: collision with root package name */
    private static final long f78447d = -6076952298809384986L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super T> f78448a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f78449b;

    /* renamed from: c  reason: collision with root package name */
    final q7.a f78450c;

    public MaybeCallbackObserver(q7.g<? super T> onSuccess, q7.g<? super Throwable> onError, q7.a onComplete) {
        this.f78448a = onSuccess;
        this.f78449b = onError;
        this.f78450c = onComplete;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return this.f78449b != io.reactivex.rxjava3.internal.functions.a.f76185f;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f78450c.run();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f78449b.accept(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(e4, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f78448a.accept(value);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
