package io.reactivex.internal.operators.single;

/* compiled from: SingleMaterialize.java */
@m7.d
/* loaded from: classes4.dex */
public final class l0<T> extends io.reactivex.i0<io.reactivex.y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.i0<T> f75434a;

    public l0(io.reactivex.i0<T> i0Var) {
        this.f75434a = i0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super io.reactivex.y<T>> l0Var) {
        this.f75434a.d(new io.reactivex.internal.operators.mixed.i(l0Var));
    }
}
