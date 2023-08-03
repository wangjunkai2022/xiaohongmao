package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResumeSingleObserver.java */
/* loaded from: classes3.dex */
public final class o<T> implements l0<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f71260a;

    /* renamed from: b  reason: collision with root package name */
    final l0<? super T> f71261b;

    public o(AtomicReference<io.reactivex.disposables.c> atomicReference, l0<? super T> l0Var) {
        this.f71260a = atomicReference;
        this.f71261b = l0Var;
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        this.f71261b.onError(th);
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        DisposableHelper.replace(this.f71260a, cVar);
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        this.f71261b.onSuccess(t9);
    }
}
