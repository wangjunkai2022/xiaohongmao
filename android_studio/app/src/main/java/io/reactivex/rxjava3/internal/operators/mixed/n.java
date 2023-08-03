package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.d0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaterializeSingleObserver.java */
/* loaded from: classes4.dex */
public final class n<T> implements s0<T>, y<T>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final s0<? super d0<T>> f78976a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.rxjava3.disposables.f f78977b;

    public n(s0<? super d0<T>> downstream) {
        this.f78976a = downstream;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f78977b.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f78977b.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        this.f78976a.onSuccess(d0.a());
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        this.f78976a.onSuccess(d0.b(e4));
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.validate(this.f78977b, d4)) {
            this.f78977b = d4;
            this.f78976a.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(T t9) {
        this.f78976a.onSuccess(d0.c(t9));
    }
}
