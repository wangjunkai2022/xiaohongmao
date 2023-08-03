package io.reactivex.rxjava3.internal.operators.single;

/* compiled from: SingleFromUnsafeSource.java */
/* loaded from: classes4.dex */
public final class j0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80847a;

    public j0(io.reactivex.rxjava3.core.v0<T> source) {
        this.f80847a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80847a.d(observer);
    }
}
