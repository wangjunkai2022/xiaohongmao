package io.reactivex.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceObserver.java */
/* loaded from: classes4.dex */
public abstract class i<T> implements g0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.c> f75955a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f75956b = new io.reactivex.internal.disposables.b();

    public final void a(@m7.e io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "resource is null");
        this.f75956b.b(cVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (DisposableHelper.dispose(this.f75955a)) {
            this.f75956b.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f75955a.get());
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75955a, cVar, getClass())) {
            b();
        }
    }
}
