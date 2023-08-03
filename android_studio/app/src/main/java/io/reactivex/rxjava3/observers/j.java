package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceObserver.java */
/* loaded from: classes4.dex */
public abstract class j<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.rxjava3.disposables.f> f81366a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.rxjava3.internal.disposables.a f81367b = new io.reactivex.rxjava3.internal.disposables.a();

    public final void a(@p7.e io.reactivex.rxjava3.disposables.f resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f81367b.b(resource);
    }

    protected void b() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        if (DisposableHelper.dispose(this.f81366a)) {
            this.f81367b.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f81366a.get());
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81366a, d4, getClass())) {
            b();
        }
    }
}
