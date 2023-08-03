package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: MaybeDefer.java */
/* loaded from: classes3.dex */
public final class j<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.w<? extends T>> f73343a;

    public j(Callable<? extends io.reactivex.w<? extends T>> callable) {
        this.f73343a = callable;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        try {
            ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73343a.call(), "The maybeSupplier returned a null MaybeSource")).b(tVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}
