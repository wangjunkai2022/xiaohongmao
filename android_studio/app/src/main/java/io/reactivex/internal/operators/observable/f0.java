package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableDefer.java */
/* loaded from: classes3.dex */
public final class f0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.e0<? extends T>> f74071a;

    public f0(Callable<? extends io.reactivex.e0<? extends T>> callable) {
        this.f74071a = callable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            ((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74071a.call(), "null ObservableSource supplied")).subscribe(g0Var);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
