package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableSingleObserver.java */
/* loaded from: classes4.dex */
public abstract class e<T> implements l0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f75950a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this.f75950a);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f75950a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.l0
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75950a, cVar, getClass())) {
            a();
        }
    }
}
