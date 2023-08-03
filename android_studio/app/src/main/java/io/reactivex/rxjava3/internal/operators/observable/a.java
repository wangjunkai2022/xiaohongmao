package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: AbstractObservableWithUpstream.java */
/* loaded from: classes4.dex */
abstract class a<T, U> extends io.reactivex.rxjava3.core.g0<U> implements io.reactivex.rxjava3.internal.fuseable.i<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.rxjava3.core.l0<T> f79141a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79141a = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.i
    public final io.reactivex.rxjava3.core.l0<T> source() {
        return this.f79141a;
    }
}
