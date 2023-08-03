package io.reactivex.internal.operators.observable;

/* compiled from: ObservableDoOnLifecycle.java */
/* loaded from: classes3.dex */
public final class p0<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    private final n7.g<? super io.reactivex.disposables.c> f74566b;

    /* renamed from: c  reason: collision with root package name */
    private final n7.a f74567c;

    public p0(io.reactivex.z<T> zVar, n7.g<? super io.reactivex.disposables.c> gVar, n7.a aVar) {
        super(zVar);
        this.f74566b = gVar;
        this.f74567c = aVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new io.reactivex.internal.observers.g(g0Var, this.f74566b, this.f74567c));
    }
}
