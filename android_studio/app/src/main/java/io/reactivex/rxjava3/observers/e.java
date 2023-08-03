package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableObserver.java */
/* loaded from: classes4.dex */
public abstract class e<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f81360a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        DisposableHelper.dispose(this.f81360a);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81360a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81360a, d4, getClass())) {
            a();
        }
    }
}
