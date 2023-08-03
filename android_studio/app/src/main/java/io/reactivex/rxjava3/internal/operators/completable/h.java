package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: CompletableDefer.java */
/* loaded from: classes4.dex */
public final class h extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends io.reactivex.rxjava3.core.g> f76613a;

    public h(q7.s<? extends io.reactivex.rxjava3.core.g> completableSupplier) {
        this.f76613a = completableSupplier;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        try {
            io.reactivex.rxjava3.core.g gVar = this.f76613a.get();
            Objects.requireNonNull(gVar, "The completableSupplier returned a null CompletableSource");
            gVar.d(observer);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
