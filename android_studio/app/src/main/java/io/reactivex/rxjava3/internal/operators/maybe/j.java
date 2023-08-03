package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: MaybeDefer.java */
/* loaded from: classes4.dex */
public final class j<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.b0<? extends T>> f78619a;

    public j(q7.s<? extends io.reactivex.rxjava3.core.b0<? extends T>> maybeSupplier) {
        this.f78619a = maybeSupplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        try {
            io.reactivex.rxjava3.core.b0<? extends T> b0Var = this.f78619a.get();
            Objects.requireNonNull(b0Var, "The maybeSupplier returned a null MaybeSource");
            b0Var.b(observer);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
