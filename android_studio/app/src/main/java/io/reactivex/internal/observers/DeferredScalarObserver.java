package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;

/* loaded from: classes3.dex */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements g0<T> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f71192k = -266195175408988651L;

    /* renamed from: j  reason: collision with root package name */
    protected io.reactivex.disposables.c f71193j;

    public DeferredScalarObserver(g0<? super R> g0Var) {
        super(g0Var);
    }

    @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.c
    public void dispose() {
        super.dispose();
        this.f71193j.dispose();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        T t9 = this.f71191c;
        if (t9 != null) {
            this.f71191c = null;
            complete(t9);
            return;
        }
        complete();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f71191c = null;
        error(th);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f71193j, cVar)) {
            this.f71193j = cVar;
            this.f71190b.onSubscribe(this);
        }
    }
}
