package io.reactivex.internal.operators.completable;

import java.util.concurrent.Callable;

/* compiled from: CompletableFromCallable.java */
/* loaded from: classes3.dex */
public final class r extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<?> f71448a;

    public r(Callable<?> callable) {
        this.f71448a = callable;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        dVar.onSubscribe(b10);
        try {
            this.f71448a.call();
            if (b10.isDisposed()) {
                return;
            }
            dVar.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b10.isDisposed()) {
                dVar.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}
