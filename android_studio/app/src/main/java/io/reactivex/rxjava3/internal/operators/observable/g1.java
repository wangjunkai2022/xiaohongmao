package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableFromFuture.java */
/* loaded from: classes4.dex */
public final class g1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f79444a;

    /* renamed from: b  reason: collision with root package name */
    final long f79445b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79446c;

    public g1(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f79444a = future;
        this.f79445b = timeout;
        this.f79446c = unit;
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
            TimeUnit timeUnit = this.f79446c;
            deferredScalarDisposable.complete(io.reactivex.rxjava3.internal.util.g.d(timeUnit != null ? this.f79444a.get(this.f79445b, timeUnit) : this.f79444a.get(), "Future returned a null value."));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            observer.onError(th);
        }
    }
}
