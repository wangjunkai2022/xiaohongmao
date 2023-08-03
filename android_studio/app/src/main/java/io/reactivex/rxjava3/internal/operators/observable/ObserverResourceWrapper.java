package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ObserverResourceWrapper<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: c  reason: collision with root package name */
    private static final long f79138c = -8612022020200669122L;

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.n0<? super T> f79139a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f79140b = new AtomicReference<>();

    public ObserverResourceWrapper(io.reactivex.rxjava3.core.n0<? super T> downstream) {
        this.f79139a = downstream;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        DisposableHelper.dispose(this.f79140b);
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f79140b.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        dispose();
        this.f79139a.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        dispose();
        this.f79139a.onError(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        this.f79139a.onNext(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.setOnce(this.f79140b, d4)) {
            this.f79139a.onSubscribe(this);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.f resource) {
        DisposableHelper.set(this, resource);
    }
}
