package io.reactivex.rxjava3.internal.operators.maybe;

/* compiled from: MaybeFromRunnable.java */
/* loaded from: classes4.dex */
public final class m0<T> extends io.reactivex.rxjava3.core.v<T> implements q7.s<T> {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f78679a;

    public m0(Runnable runnable) {
        this.f78679a = runnable;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            this.f78679a.run();
            if (b10.isDisposed()) {
                return;
            }
            observer.onComplete();
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
    public T get() {
        this.f78679a.run();
        return null;
    }
}
