package io.reactivex.internal.operators.maybe;

/* compiled from: AbstractMaybeWithUpstream.java */
/* loaded from: classes3.dex */
abstract class a<T, R> extends io.reactivex.q<R> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.w<T> f73172a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.w<T> wVar) {
        this.f73172a = wVar;
    }

    @Override // o7.f
    public final io.reactivex.w<T> source() {
        return this.f73172a;
    }
}
