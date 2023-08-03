package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceCompletableObserver.java */
/* loaded from: classes4.dex */
public abstract class g implements io.reactivex.d, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.c> f75951a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f75952b = new io.reactivex.internal.disposables.b();

    public final void a(@m7.e io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "resource is null");
        this.f75952b.b(cVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (DisposableHelper.dispose(this.f75951a)) {
            this.f75952b.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f75951a.get());
    }

    @Override // io.reactivex.d
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75951a, cVar, getClass())) {
            b();
        }
    }
}
