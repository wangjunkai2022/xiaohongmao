package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableMaybeObserver.java */
/* loaded from: classes4.dex */
public abstract class c<T> implements t<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.disposables.c> f75948a = new AtomicReference<>();

    protected void a() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        DisposableHelper.dispose(this.f75948a);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f75948a.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.t
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75948a, cVar, getClass())) {
            a();
        }
    }
}
