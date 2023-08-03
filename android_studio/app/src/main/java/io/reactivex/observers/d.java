package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableObserver.java */
/* loaded from: classes4.dex */
public abstract class d<T> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f75949a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this.f75949a);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f75949a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75949a, cVar, getClass())) {
            a();
        }
    }
}
