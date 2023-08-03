package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeJust.java */
/* loaded from: classes4.dex */
public final class u0<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.o<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f78773a;

    public u0(T value) {
        this.f78773a = value;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        observer.onSubscribe(io.reactivex.rxjava3.disposables.e.a());
        observer.onSuccess((T) this.f78773a);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.o, q7.s
    public T get() {
        return this.f78773a;
    }
}
