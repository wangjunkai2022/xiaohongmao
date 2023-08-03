package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;

/* compiled from: MaybeFromRunnable.java */
/* loaded from: classes3.dex */
public final class l0<T> extends io.reactivex.q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f73384a;

    public l0(Runnable runnable) {
        this.f73384a = runnable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f73384a.run();
        return null;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        tVar.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            this.f73384a.run();
            if (b10.isDisposed()) {
                return;
            }
            tVar.onComplete();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            if (!b10.isDisposed()) {
                tVar.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }
    }
}
