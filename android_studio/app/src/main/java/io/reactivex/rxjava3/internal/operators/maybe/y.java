package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeErrorCallable.java */
/* loaded from: classes4.dex */
public final class y<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends Throwable> f78806a;

    public y(q7.s<? extends Throwable> errorSupplier) {
        this.f78806a = errorSupplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        observer.onSubscribe(io.reactivex.rxjava3.disposables.e.a());
        try {
            th = (Throwable) io.reactivex.rxjava3.internal.util.g.d(this.f78806a.get(), "Supplier returned a null Throwable.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.rxjava3.exceptions.a.b(th);
        }
        observer.onError(th);
    }
}
