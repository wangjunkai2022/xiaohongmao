package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: SingleLift.java */
/* loaded from: classes4.dex */
public final class n0<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80876a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.u0<? extends R, ? super T> f80877b;

    public n0(io.reactivex.rxjava3.core.v0<T> source, io.reactivex.rxjava3.core.u0<? extends R, ? super T> onLift) {
        this.f80876a = source;
        this.f80877b = onLift;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        try {
            io.reactivex.rxjava3.core.s0<? super Object> a10 = this.f80877b.a(observer);
            Objects.requireNonNull(a10, "The onLift returned a null SingleObserver");
            this.f80876a.d(a10);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
