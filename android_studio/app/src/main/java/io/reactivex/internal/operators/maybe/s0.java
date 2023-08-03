package io.reactivex.internal.operators.maybe;

/* compiled from: MaybeJust.java */
/* loaded from: classes3.dex */
public final class s0<T> extends io.reactivex.q<T> implements o7.m<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f73468a;

    public s0(T t9) {
        this.f73468a = t9;
    }

    @Override // o7.m, java.util.concurrent.Callable
    public T call() {
        return this.f73468a;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.d.a());
        tVar.onSuccess((T) this.f73468a);
    }
}
