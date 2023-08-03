package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;

/* compiled from: ObservableFromSupplier.java */
/* loaded from: classes4.dex */
public final class k1<T> extends io.reactivex.rxjava3.core.g0<T> implements q7.s<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends T> f79627a;

    public k1(q7.s<? extends T> supplier) {
        this.f79627a = supplier;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.complete(io.reactivex.rxjava3.internal.util.g.d(this.f79627a.get(), "Supplier returned a null value."));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (!deferredScalarDisposable.isDisposed()) {
                observer.onError(th);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    @Override // q7.s
    public T get() throws Throwable {
        return (T) io.reactivex.rxjava3.internal.util.g.d(this.f79627a.get(), "The supplier returned a null value.");
    }
}
