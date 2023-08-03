package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<T>, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.observers.g {

    /* renamed from: c  reason: collision with root package name */
    private static final long f76440c = -7012088219455310787L;

    /* renamed from: a  reason: collision with root package name */
    final q7.g<? super T> f76441a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super Throwable> f76442b;

    public ConsumerSingleObserver(q7.g<? super T> onSuccess, q7.g<? super Throwable> onError) {
        this.f76441a = onSuccess;
        this.f76442b = onError;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.observers.g
    public boolean hasCustomOnError() {
        return this.f76442b != io.reactivex.rxjava3.internal.functions.a.f76185f;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f76442b.accept(e4);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(new CompositeException(e4, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this, d4);
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f76441a.accept(value);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
