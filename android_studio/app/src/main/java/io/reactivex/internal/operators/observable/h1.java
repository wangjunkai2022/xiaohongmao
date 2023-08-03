package io.reactivex.internal.operators.observable;

/* compiled from: ObservableFromUnsafeSource.java */
/* loaded from: classes3.dex */
public final class h1<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74177a;

    public h1(io.reactivex.e0<T> e0Var) {
        this.f74177a = e0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f74177a.subscribe(g0Var);
    }
}
