package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class BiConsumerSingleObserver<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: b  reason: collision with root package name */
    private static final long f76433b = 4943102778943297569L;

    /* renamed from: a  reason: collision with root package name */
    final q7.b<? super T, ? super Throwable> f76434a;

    public BiConsumerSingleObserver(q7.b<? super T, ? super Throwable> onCallback) {
        this.f76434a = onCallback;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f76434a.accept(null, e4);
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
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f76434a.accept(value, null);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
