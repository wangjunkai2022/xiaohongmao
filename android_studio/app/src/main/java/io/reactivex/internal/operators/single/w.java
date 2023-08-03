package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: SingleError.java */
/* loaded from: classes4.dex */
public final class w<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f75540a;

    public w(Callable<? extends Throwable> callable) {
        this.f75540a = callable;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        try {
            th = (Throwable) io.reactivex.internal.functions.b.g(this.f75540a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, l0Var);
    }
}
