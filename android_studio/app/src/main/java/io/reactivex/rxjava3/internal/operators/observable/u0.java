package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: ObservableError.java */
/* loaded from: classes4.dex */
public final class u0<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends Throwable> f80184a;

    public u0(q7.s<? extends Throwable> errorSupplier) {
        this.f80184a = errorSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            th = (Throwable) io.reactivex.rxjava3.internal.util.g.d(this.f80184a.get(), "Supplier returned a null Throwable.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, observer);
    }
}
