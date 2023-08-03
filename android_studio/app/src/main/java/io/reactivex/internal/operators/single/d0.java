package io.reactivex.internal.operators.single;

import java.util.concurrent.Callable;

/* compiled from: SingleFromCallable.java */
/* loaded from: classes4.dex */
public final class d0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f75364a;

    public d0(Callable<? extends T> callable) {
        this.f75364a = callable;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        l0Var.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            Object obj = (Object) io.reactivex.internal.functions.b.g(this.f75364a.call(), "The callable returned a null value");
            if (b10.isDisposed()) {
                return;
            }
            l0Var.onSuccess(obj);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b10.isDisposed()) {
                l0Var.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}
