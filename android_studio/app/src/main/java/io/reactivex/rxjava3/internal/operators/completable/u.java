package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableFromRunnable.java */
/* loaded from: classes4.dex */
public final class u extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f76734a;

    public u(Runnable runnable) {
        this.f76734a = runnable;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            this.f76734a.run();
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
