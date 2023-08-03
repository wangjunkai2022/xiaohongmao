package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableFromUnsafeSource.java */
/* loaded from: classes4.dex */
public final class l1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79663a;

    public l1(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79663a = source;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79663a.a(observer);
    }
}
