package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* compiled from: MaybeLift.java */
/* loaded from: classes4.dex */
public final class v0<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.a0<? extends R, ? super T> f78786b;

    public v0(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.a0<? extends R, ? super T> operator) {
        super(source);
        this.f78786b = operator;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        try {
            io.reactivex.rxjava3.core.y<? super Object> a10 = this.f78786b.a(observer);
            Objects.requireNonNull(a10, "The operator returned a null MaybeObserver");
            this.f78452a.b(a10);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
