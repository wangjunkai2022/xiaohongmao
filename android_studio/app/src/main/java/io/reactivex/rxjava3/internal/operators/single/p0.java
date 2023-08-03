package io.reactivex.rxjava3.internal.operators.single;

/* compiled from: SingleMaterialize.java */
/* loaded from: classes4.dex */
public final class p0<T> extends io.reactivex.rxjava3.core.p0<io.reactivex.rxjava3.core.d0<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.p0<T> f80893a;

    public p0(io.reactivex.rxjava3.core.p0<T> source) {
        this.f80893a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.core.d0<T>> observer) {
        this.f80893a.d(new io.reactivex.rxjava3.internal.operators.mixed.n(observer));
    }
}
