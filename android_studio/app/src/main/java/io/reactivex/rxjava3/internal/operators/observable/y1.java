package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;

/* compiled from: ObservableLift.java */
/* loaded from: classes4.dex */
public final class y1<R, T> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.k0<? extends R, ? super T> f80438b;

    public y1(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.k0<? extends R, ? super T> operator) {
        super(source);
        this.f80438b = operator;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        try {
            io.reactivex.rxjava3.core.n0<? super Object> a10 = this.f80438b.a(observer);
            Objects.requireNonNull(a10, "Operator " + this.f80438b + " returned a null Observer");
            this.f79141a.a(a10);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
