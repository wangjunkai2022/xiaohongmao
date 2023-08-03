package io.reactivex.internal.operators.maybe;

/* compiled from: MaybeError.java */
/* loaded from: classes3.dex */
public final class v<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f73488a;

    public v(Throwable th) {
        this.f73488a = th;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        tVar.onSubscribe(io.reactivex.disposables.d.a());
        tVar.onError(this.f73488a);
    }
}
