package io.reactivex.internal.operators.maybe;

/* compiled from: MaybeMaterialize.java */
@m7.d
/* loaded from: classes3.dex */
public final class v0<T> extends io.reactivex.i0<io.reactivex.y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.q<T> f73489a;

    public v0(io.reactivex.q<T> qVar) {
        this.f73489a = qVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super io.reactivex.y<T>> l0Var) {
        this.f73489a.b(new io.reactivex.internal.operators.mixed.i(l0Var));
    }
}
