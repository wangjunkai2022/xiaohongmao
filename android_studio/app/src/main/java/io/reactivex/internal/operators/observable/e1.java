package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableFromFuture.java */
/* loaded from: classes3.dex */
public final class e1<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f74030a;

    /* renamed from: b  reason: collision with root package name */
    final long f74031b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74032c;

    public e1(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f74030a = future;
        this.f74031b = j4;
        this.f74032c = timeUnit;
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
            TimeUnit timeUnit = this.f74032c;
            deferredScalarDisposable.complete(io.reactivex.internal.functions.b.g(timeUnit != null ? this.f74030a.get(this.f74031b, timeUnit) : this.f74030a.get(), "Future returned null"));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            g0Var.onError(th);
        }
    }
}
