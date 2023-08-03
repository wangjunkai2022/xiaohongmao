package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeMaterialize.java */
/* loaded from: classes4.dex */
public final class x0<T> extends io.reactivex.rxjava3.core.p0<io.reactivex.rxjava3.core.d0<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v<T> f78805a;

    public x0(io.reactivex.rxjava3.core.v<T> source) {
        this.f78805a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.core.d0<T>> observer) {
        this.f78805a.b(new io.reactivex.rxjava3.internal.operators.mixed.n(observer));
    }
}
