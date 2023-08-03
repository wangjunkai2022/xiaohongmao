package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableMaterialize.java */
/* loaded from: classes4.dex */
public final class a0<T> extends io.reactivex.rxjava3.core.p0<io.reactivex.rxjava3.core.d0<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.a f76536a;

    public a0(io.reactivex.rxjava3.core.a source) {
        this.f76536a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.core.d0<T>> observer) {
        this.f76536a.d(new io.reactivex.rxjava3.internal.operators.mixed.n(observer));
    }
}
