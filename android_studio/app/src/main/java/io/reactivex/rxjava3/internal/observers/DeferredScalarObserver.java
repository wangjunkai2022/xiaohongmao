package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes4.dex */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements n0<T> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f76451k = -266195175408988651L;

    /* renamed from: j  reason: collision with root package name */
    protected io.reactivex.rxjava3.disposables.f f76452j;

    public DeferredScalarObserver(n0<? super R> downstream) {
        super(downstream);
    }

    @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
    public void dispose() {
        super.dispose();
        this.f76452j.dispose();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        T t9 = this.f76450c;
        if (t9 != null) {
            this.f76450c = null;
            complete(t9);
            return;
        }
        complete();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        this.f76450c = null;
        error(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.validate(this.f76452j, d4)) {
            this.f76452j = d4;
            this.f76449b.onSubscribe(this);
        }
    }
}
