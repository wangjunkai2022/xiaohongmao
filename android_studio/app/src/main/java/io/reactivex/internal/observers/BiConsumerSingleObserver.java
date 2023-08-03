package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class BiConsumerSingleObserver<T> extends AtomicReference<io.reactivex.disposables.c> implements l0<T>, io.reactivex.disposables.c {

    /* renamed from: b  reason: collision with root package name */
    private static final long f71174b = 4943102778943297569L;

    /* renamed from: a  reason: collision with root package name */
    final n7.b<? super T, ? super Throwable> f71175a;

    public BiConsumerSingleObserver(n7.b<? super T, ? super Throwable> bVar) {
        this.f71175a = bVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f71175a.accept(null, th);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            io.reactivex.plugins.a.Y(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.f71175a.accept(t9, null);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
