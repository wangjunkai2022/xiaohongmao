package io.reactivex.internal.operators.single;

/* compiled from: SingleJust.java */
/* loaded from: classes4.dex */
public final class i0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f75414a;

    public i0(T t9) {
        this.f75414a = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        l0Var.onSubscribe(io.reactivex.disposables.d.a());
        l0Var.onSuccess((T) this.f75414a);
    }
}
