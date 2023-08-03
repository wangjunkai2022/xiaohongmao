package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableCompletableObserver.java */
/* loaded from: classes4.dex */
public abstract class c implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f81358a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        DisposableHelper.dispose(this.f81358a);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81358a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.rxjava3.core.d
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81358a, d4, getClass())) {
            a();
        }
    }
}
