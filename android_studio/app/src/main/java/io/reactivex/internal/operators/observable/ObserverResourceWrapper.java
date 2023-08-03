package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObserverResourceWrapper<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

    /* renamed from: c  reason: collision with root package name */
    private static final long f73824c = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g0<? super T> f73825a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f73826b = new AtomicReference<>();

    public ObserverResourceWrapper(io.reactivex.g0<? super T> g0Var) {
        this.f73825a = g0Var;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this.f73826b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f73826b.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        dispose();
        this.f73825a.onComplete();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        dispose();
        this.f73825a.onError(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        this.f73825a.onNext(t9);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.setOnce(this.f73826b, cVar)) {
            this.f73825a.onSubscribe(this);
        }
    }

    public void setResource(io.reactivex.disposables.c cVar) {
        DisposableHelper.set(this, cVar);
    }
}
