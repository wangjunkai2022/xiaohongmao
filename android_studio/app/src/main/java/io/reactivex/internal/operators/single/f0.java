package io.reactivex.internal.operators.single;

/* compiled from: SingleFromUnsafeSource.java */
/* loaded from: classes4.dex */
public final class f0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75384a;

    public f0(io.reactivex.o0<T> o0Var) {
        this.f75384a = o0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75384a.d(l0Var);
    }
}
