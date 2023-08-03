package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletionStageConsumer.java */
/* loaded from: classes4.dex */
public final class b<T> extends CompletableFuture<T> implements io.reactivex.rxjava3.core.y<T>, s0<T>, io.reactivex.rxjava3.core.d {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.disposables.f> f76252a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final boolean f76253b;

    /* renamed from: c  reason: collision with root package name */
    final T f76254c;

    public b(boolean hasDefault, T defaultItem) {
        this.f76253b = hasDefault;
        this.f76254c = defaultItem;
    }

    void a() {
        DisposableHelper.dispose(this.f76252a);
    }

    void b() {
        this.f76252a.lazySet(DisposableHelper.DISPOSED);
    }

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        a();
        return super.cancel(mayInterruptIfRunning);
    }

    @Override // java.util.concurrent.CompletableFuture
    public boolean complete(T value) {
        a();
        return super.complete(value);
    }

    @Override // java.util.concurrent.CompletableFuture
    public boolean completeExceptionally(Throwable ex) {
        a();
        return super.completeExceptionally(ex);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        if (this.f76253b) {
            complete(this.f76254c);
        } else {
            completeExceptionally(new NoSuchElementException("The source was empty"));
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable t9) {
        b();
        if (completeExceptionally(t9)) {
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        DisposableHelper.setOnce(this.f76252a, d4);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T t9) {
        b();
        complete(t9);
    }
}
