package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceMaybeObserver.java */
/* loaded from: classes4.dex */
public abstract class h<T> implements t<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.disposables.c> f75953a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f75954b = new io.reactivex.internal.disposables.b();

    public final void a(@m7.e io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "resource is null");
        this.f75954b.b(cVar);
    }

    protected void b() {
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (DisposableHelper.dispose(this.f75953a)) {
            this.f75954b.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f75953a.get());
    }

    @Override // io.reactivex.t
    public final void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (io.reactivex.internal.util.f.c(this.f75953a, cVar, getClass())) {
            b();
        }
    }
}
