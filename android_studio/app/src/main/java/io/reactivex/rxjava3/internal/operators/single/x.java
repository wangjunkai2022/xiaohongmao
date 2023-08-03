package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: SingleError.java */
/* loaded from: classes4.dex */
public final class x<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends Throwable> f80962a;

    public x(q7.s<? extends Throwable> errorSupplier) {
        this.f80962a = errorSupplier;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        try {
            th = (Throwable) io.reactivex.rxjava3.internal.util.g.d(this.f80962a.get(), "Supplier returned a null Throwable.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, observer);
    }
}
