package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableError.java */
/* loaded from: classes3.dex */
public final class u0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f74816a;

    public u0(Callable<? extends Throwable> callable) {
        this.f74816a = callable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            th = (Throwable) io.reactivex.internal.functions.b.g(this.f74816a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, g0Var);
    }
}
