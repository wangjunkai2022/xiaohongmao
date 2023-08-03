package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: SingleDefer.java */
/* loaded from: classes4.dex */
public final class e<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.v0<? extends T>> f80773a;

    public e(q7.s<? extends io.reactivex.rxjava3.core.v0<? extends T>> singleSupplier) {
        this.f80773a = singleSupplier;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        try {
            io.reactivex.rxjava3.core.v0<? extends T> v0Var = this.f80773a.get();
            Objects.requireNonNull(v0Var, "The singleSupplier returned a null SingleSource");
            v0Var.d(observer);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
