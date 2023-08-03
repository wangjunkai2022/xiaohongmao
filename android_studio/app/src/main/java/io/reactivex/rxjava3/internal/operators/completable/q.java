package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableFromAction.java */
/* loaded from: classes4.dex */
public final class q extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final q7.a f76711a;

    public q(q7.a run) {
        this.f76711a = run;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            this.f76711a.run();
            if (b10.isDisposed()) {
                return;
            }
            observer.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (!b10.isDisposed()) {
                observer.onError(th);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }
}
