package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceSingleObserver.java */
/* loaded from: classes4.dex */
public abstract class k<T> implements s0<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.rxjava3.disposables.f> f81368a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.rxjava3.internal.disposables.a f81369b = new io.reactivex.rxjava3.internal.disposables.a();

    public final void a(@p7.e io.reactivex.rxjava3.disposables.f resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f81369b.b(resource);
    }

    protected void b() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        if (DisposableHelper.dispose(this.f81368a)) {
            this.f81369b.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f81368a.get());
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81368a, d4, getClass())) {
            b();
        }
    }
}
