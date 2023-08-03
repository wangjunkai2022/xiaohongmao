package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: CompletableErrorSupplier.java */
/* loaded from: classes3.dex */
public final class p extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f71438a;

    public p(Callable<? extends Throwable> callable) {
        this.f71438a = callable;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        try {
            th = (Throwable) io.reactivex.internal.functions.b.g(this.f71438a.call(), "The error returned is null");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, dVar);
    }
}
