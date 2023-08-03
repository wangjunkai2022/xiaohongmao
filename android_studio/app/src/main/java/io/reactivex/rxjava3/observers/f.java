package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableSingleObserver.java */
/* loaded from: classes4.dex */
public abstract class f<T> implements s0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f81361a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        DisposableHelper.dispose(this.f81361a);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81361a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81361a, d4, getClass())) {
            a();
        }
    }
}
