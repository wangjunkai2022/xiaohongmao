package io.reactivex.internal.operators.flowable;

/* compiled from: AbstractFlowableWithUpstream.java */
/* loaded from: classes3.dex */
abstract class a<T, R> extends io.reactivex.j<R> implements o7.h<T> {

    /* renamed from: b  reason: collision with root package name */
    protected final io.reactivex.j<T> f71538b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(io.reactivex.j<T> jVar) {
        this.f71538b = (io.reactivex.j) io.reactivex.internal.functions.b.g(jVar, "source is null");
    }

    @Override // o7.h
    public final org.reactivestreams.c<T> source() {
        return this.f71538b;
    }
}
