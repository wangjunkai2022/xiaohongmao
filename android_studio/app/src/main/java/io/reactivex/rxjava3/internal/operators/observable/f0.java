package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: ObservableDefer.java */
/* loaded from: classes4.dex */
public final class f0<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.l0<? extends T>> f79412a;

    public f0(q7.s<? extends io.reactivex.rxjava3.core.l0<? extends T>> supplier) {
        this.f79412a = supplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            io.reactivex.rxjava3.core.l0<? extends T> l0Var = this.f79412a.get();
            Objects.requireNonNull(l0Var, "The supplier returned a null ObservableSource");
            l0Var.a(observer);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
