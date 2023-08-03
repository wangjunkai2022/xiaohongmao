package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableCompletableObserver.java */
/* loaded from: classes4.dex */
public abstract class b implements io.reactivex.d, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f75947a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this.f75947a);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f75947a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.d
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75947a, cVar, getClass())) {
            a();
        }
    }
}
