package io.reactivex.rxjava3.internal.operators.single;

import java.util.Objects;

/* compiled from: SingleFromSupplier.java */
/* loaded from: classes4.dex */
public final class i0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends T> f80841a;

    public i0(q7.s<? extends T> supplier) {
        this.f80841a = supplier;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            Object obj = (T) this.f80841a.get();
            Objects.requireNonNull(obj, "The supplier returned a null value");
            if (b10.isDisposed()) {
                return;
            }
            observer.onSuccess(obj);
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
