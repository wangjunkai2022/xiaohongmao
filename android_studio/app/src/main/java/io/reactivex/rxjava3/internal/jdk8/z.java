package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableStageObserver.java */
/* loaded from: classes4.dex */
abstract class z<T> extends CompletableFuture<T> implements n0<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f76430a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    T f76431b;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        this.f76431b = null;
        this.f76430a.lazySet(DisposableHelper.DISPOSED);
    }

    protected final void b() {
        DisposableHelper.dispose(this.f76430a);
    }

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public final boolean cancel(boolean mayInterruptIfRunning) {
        b();
        return super.cancel(mayInterruptIfRunning);
    }

    @Override // java.util.concurrent.CompletableFuture
    public final boolean complete(T value) {
        b();
        return super.complete(value);
    }

    @Override // java.util.concurrent.CompletableFuture
    public final boolean completeExceptionally(Throwable ex) {
        b();
        return super.completeExceptionally(ex);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onError(Throwable t9) {
        a();
        if (completeExceptionally(t9)) {
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this.f76430a, d4);
    }
}
