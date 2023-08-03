package io.reactivex.internal.operators.completable;

/* compiled from: CompletableFromAction.java */
/* loaded from: classes3.dex */
public final class q extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final n7.a f71442a;

    public q(n7.a aVar) {
        this.f71442a = aVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        dVar.onSubscribe(b10);
        try {
            this.f71442a.run();
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
