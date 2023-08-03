package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: CompletableDefer.java */
/* loaded from: classes3.dex */
public final class h extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.g> f71351a;

    public h(Callable<? extends io.reactivex.g> callable) {
        this.f71351a = callable;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        try {
            ((io.reactivex.g) io.reactivex.internal.functions.b.g(this.f71351a.call(), "The completableSupplier returned a null CompletableSource")).d(dVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}
