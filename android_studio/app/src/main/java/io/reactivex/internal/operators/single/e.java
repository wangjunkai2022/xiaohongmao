package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: SingleDefer.java */
/* loaded from: classes4.dex */
public final class e<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.o0<? extends T>> f75365a;

    public e(Callable<? extends io.reactivex.o0<? extends T>> callable) {
        this.f75365a = callable;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        try {
            ((io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f75365a.call(), "The singleSupplier returned a null SingleSource")).d(l0Var);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
