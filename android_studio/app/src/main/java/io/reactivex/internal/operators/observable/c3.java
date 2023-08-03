package io.reactivex.internal.operators.observable;

/* compiled from: ObservableSerialized.java */
/* loaded from: classes3.dex */
public final class c3<T> extends a<T, T> {
    public c3(io.reactivex.z<T> zVar) {
        super(zVar);
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new io.reactivex.observers.l(g0Var));
    }
}
