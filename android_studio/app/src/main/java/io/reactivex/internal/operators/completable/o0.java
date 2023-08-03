package io.reactivex.internal.operators.completable;

/* compiled from: CompletableToFlowable.java */
/* loaded from: classes3.dex */
public final class o0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f71437b;

    public o0(io.reactivex.g gVar) {
        this.f71437b = gVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71437b.d(new io.reactivex.internal.observers.p(dVar));
    }
}
