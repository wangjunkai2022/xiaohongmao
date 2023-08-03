package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: DisposableLambdaObserver.java */
/* loaded from: classes3.dex */
public final class g<T> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final g0<? super T> f71224a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f71225b;

    /* renamed from: c  reason: collision with root package name */
    final n7.a f71226c;

    /* renamed from: d  reason: collision with root package name */
    io.reactivex.disposables.c f71227d;

    public g(g0<? super T> g0Var, n7.g<? super io.reactivex.disposables.c> gVar, n7.a aVar) {
        this.f71224a = g0Var;
        this.f71225b = gVar;
        this.f71226c = aVar;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        io.reactivex.disposables.c cVar = this.f71227d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            this.f71227d = disposableHelper;
            try {
                this.f71226c.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            cVar.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f71227d.isDisposed();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        io.reactivex.disposables.c cVar = this.f71227d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            this.f71227d = disposableHelper;
            this.f71224a.onComplete();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.disposables.c cVar = this.f71227d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            this.f71227d = disposableHelper;
            this.f71224a.onError(th);
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        this.f71224a.onNext(t9);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        try {
            this.f71225b.accept(cVar);
            if (DisposableHelper.validate(this.f71227d, cVar)) {
                this.f71227d = cVar;
                this.f71224a.onSubscribe(this);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            cVar.dispose();
            this.f71227d = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, this.f71224a);
        }
    }
}
