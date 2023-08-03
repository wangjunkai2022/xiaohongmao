package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceMaybeObserver.java */
/* loaded from: classes4.dex */
public abstract class i<T> implements y<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<io.reactivex.rxjava3.disposables.f> f81364a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.rxjava3.internal.disposables.a f81365b = new io.reactivex.rxjava3.internal.disposables.a();

    public final void a(@p7.e io.reactivex.rxjava3.disposables.f resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f81365b.b(resource);
    }

    protected void b() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        if (DisposableHelper.dispose(this.f81364a)) {
            this.f81365b.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f81364a.get());
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (io.reactivex.rxjava3.internal.util.f.c(this.f81364a, d4, getClass())) {
            b();
        }
    }
}
