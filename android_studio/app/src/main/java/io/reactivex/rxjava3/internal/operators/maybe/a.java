package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: AbstractMaybeWithUpstream.java */
/* loaded from: classes4.dex */
abstract class a<T, R> extends io.reactivex.rxjava3.core.v<R> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.rxjava3.core.b0<T> f78452a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78452a = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public final io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78452a;
    }
}
