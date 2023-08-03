package io.reactivex.rxjava3.internal.operators.single;

/* compiled from: SingleJust.java */
/* loaded from: classes4.dex */
public final class m0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f80870a;

    public m0(T value) {
        this.f80870a = value;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        observer.onSubscribe(io.reactivex.rxjava3.disposables.e.a());
        observer.onSuccess((T) this.f80870a);
    }
}
