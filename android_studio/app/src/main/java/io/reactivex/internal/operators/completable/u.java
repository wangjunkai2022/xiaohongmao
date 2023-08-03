package io.reactivex.internal.operators.completable;

/* compiled from: CompletableFromRunnable.java */
/* loaded from: classes3.dex */
public final class u extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f71463a;

    public u(Runnable runnable) {
        this.f71463a = runnable;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        dVar.onSubscribe(b10);
        try {
            this.f71463a.run();
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
