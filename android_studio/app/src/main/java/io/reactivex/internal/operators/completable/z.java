package io.reactivex.internal.operators.completable;

/* compiled from: CompletableMaterialize.java */
@m7.d
/* loaded from: classes3.dex */
public final class z<T> extends io.reactivex.i0<io.reactivex.y<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.a f71472a;

    public z(io.reactivex.a aVar) {
        this.f71472a = aVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super io.reactivex.y<T>> l0Var) {
        this.f71472a.d(new io.reactivex.internal.operators.mixed.i(l0Var));
    }
}
