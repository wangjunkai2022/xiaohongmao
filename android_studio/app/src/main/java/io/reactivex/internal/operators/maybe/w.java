package io.reactivex.internal.operators.maybe;

import java.util.concurrent.Callable;

/* compiled from: MaybeErrorCallable.java */
/* loaded from: classes3.dex */
public final class w<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f73490a;

    public w(Callable<? extends Throwable> callable) {
        this.f73490a = callable;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.d.a());
        try {
            th = (Throwable) io.reactivex.internal.functions.b.g(this.f73490a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        tVar.onError(th);
    }
}
