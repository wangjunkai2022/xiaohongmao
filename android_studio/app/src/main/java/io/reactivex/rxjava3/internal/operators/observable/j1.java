package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableFromRunnable.java */
/* loaded from: classes4.dex */
public final class j1<T> extends io.reactivex.rxjava3.core.g0<T> implements q7.s<T> {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f79581a;

    public j1(Runnable run) {
        this.f79581a = run;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        io.reactivex.rxjava3.internal.fuseable.b bVar = new io.reactivex.rxjava3.internal.fuseable.b();
        observer.onSubscribe(bVar);
        if (bVar.isDisposed()) {
            return;
        }
        try {
            this.f79581a.run();
            if (bVar.isDisposed()) {
                return;
            }
            observer.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (!bVar.isDisposed()) {
                observer.onError(th);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    @Override // q7.s
    public T get() throws Throwable {
        this.f79581a.run();
        return null;
    }
}
