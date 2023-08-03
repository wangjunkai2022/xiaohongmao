package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableFromCallable.java */
/* loaded from: classes3.dex */
public final class d1<T> extends io.reactivex.z<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f73980a;

    public d1(Callable<? extends T> callable) {
        this.f73980a = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) io.reactivex.internal.functions.b.g(this.f73980a.call(), "The callable returned a null value");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(g0Var);
        g0Var.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            deferredScalarDisposable.complete(io.reactivex.internal.functions.b.g(this.f73980a.call(), "Callable returned null"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!deferredScalarDisposable.isDisposed()) {
                g0Var.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}
