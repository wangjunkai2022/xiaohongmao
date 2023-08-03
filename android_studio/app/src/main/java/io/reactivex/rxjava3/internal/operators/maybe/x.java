package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeError.java */
/* loaded from: classes4.dex */
public final class x<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final Throwable f78804a;

    public x(Throwable error) {
        this.f78804a = error;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        observer.onSubscribe(io.reactivex.rxjava3.disposables.e.a());
        observer.onError(this.f78804a);
    }
}
