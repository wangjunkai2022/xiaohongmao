package io.reactivex.internal.operators.observable;

/* compiled from: AbstractObservableWithUpstream.java */
/* loaded from: classes3.dex */
abstract class a<T, U> extends io.reactivex.z<U> implements o7.g<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.e0<T> f73827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.e0<T> e0Var) {
        this.f73827a = e0Var;
    }

    @Override // o7.g
    public final io.reactivex.e0<T> source() {
        return this.f73827a;
    }
}
