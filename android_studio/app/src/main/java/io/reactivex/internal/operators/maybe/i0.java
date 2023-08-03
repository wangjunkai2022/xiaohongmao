package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;

/* compiled from: MaybeFromCallable.java */
/* loaded from: classes3.dex */
public final class i0<T> extends io.reactivex.q<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f73331a;

    public i0(Callable<? extends T> callable) {
        this.f73331a = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return this.f73331a.call();
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        tVar.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            Object obj = (T) this.f73331a.call();
            if (b10.isDisposed()) {
                return;
            }
            if (obj == null) {
                tVar.onComplete();
            } else {
                tVar.onSuccess(obj);
            }
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
