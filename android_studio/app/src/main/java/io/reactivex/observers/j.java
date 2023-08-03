package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceSingleObserver.java */
/* loaded from: classes4.dex */
public abstract class j<T> implements l0<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.c> f75957a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f75958b = new io.reactivex.internal.disposables.b();

    public final void a(@m7.e io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "resource is null");
        this.f75958b.b(cVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (DisposableHelper.dispose(this.f75957a)) {
            this.f75958b.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f75957a.get());
    }

    @Override // io.reactivex.l0
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75957a, cVar, getClass())) {
            b();
        }
    }
}
