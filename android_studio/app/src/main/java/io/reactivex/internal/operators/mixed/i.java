package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import io.reactivex.t;
import io.reactivex.y;

/* compiled from: MaterializeSingleObserver.java */
@m7.d
/* loaded from: classes3.dex */
public final class i<T> implements l0<T>, t<T>, io.reactivex.d, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final l0<? super y<T>> f73666a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.disposables.c f73667b;

    public i(l0<? super y<T>> l0Var) {
        this.f73666a = l0Var;
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        this.f73667b.dispose();
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f73667b.isDisposed();
    }

    @Override // io.reactivex.t
    public void onComplete() {
        this.f73666a.onSuccess(y.a());
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        this.f73666a.onSuccess(y.b(th));
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f73667b, cVar)) {
            this.f73667b = cVar;
            this.f73666a.onSubscribe(this);
        }
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        this.f73666a.onSuccess(y.c(t9));
    }
}
