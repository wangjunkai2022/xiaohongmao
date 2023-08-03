package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableFromCallable.java */
/* loaded from: classes4.dex */
public final class e1<T> extends io.reactivex.rxjava3.core.g0<T> implements q7.s<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f79367a;

    public e1(Callable<? extends T> callable) {
        this.f79367a = callable;
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
            deferredScalarDisposable.complete(io.reactivex.rxjava3.internal.util.g.d(this.f79367a.call(), "Callable returned a null value."));
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
        return (T) io.reactivex.rxjava3.internal.util.g.d(this.f79367a.call(), "The Callable returned a null value.");
    }
}
