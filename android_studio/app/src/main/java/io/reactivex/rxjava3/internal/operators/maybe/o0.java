package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeFromSupplier.java */
/* loaded from: classes4.dex */
public final class o0<T> extends io.reactivex.rxjava3.core.v<T> implements q7.s<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends T> f78710a;

    public o0(q7.s<? extends T> supplier) {
        this.f78710a = supplier;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            Object obj = (T) this.f78710a.get();
            if (b10.isDisposed()) {
                return;
            }
            if (obj == null) {
                observer.onComplete();
            } else {
                observer.onSuccess(obj);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (!b10.isDisposed()) {
                observer.onError(th);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    @Override // q7.s
    public T get() throws Throwable {
        return this.f78710a.get();
    }
}
