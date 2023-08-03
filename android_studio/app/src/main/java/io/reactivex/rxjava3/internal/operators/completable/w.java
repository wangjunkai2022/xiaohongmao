package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableFromSupplier.java */
/* loaded from: classes4.dex */
public final class w extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<?> f76737a;

    public w(q7.s<?> supplier) {
        this.f76737a = supplier;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        try {
            this.f76737a.get();
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
