package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: CompletableErrorSupplier.java */
/* loaded from: classes4.dex */
public final class p extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends Throwable> f76705a;

    public p(q7.s<? extends Throwable> errorSupplier) {
        this.f76705a = errorSupplier;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        try {
            Throwable th = this.f76705a.get();
            Objects.requireNonNull(th, "The error returned is null");
            th = th;
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, observer);
    }
}
