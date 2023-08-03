package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableStageSubscriber.java */
/* loaded from: classes4.dex */
abstract class l<T> extends CompletableFuture<T> implements io.reactivex.rxjava3.core.r<T> {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f76352a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    T f76353b;

    protected abstract void a(org.reactivestreams.e s9);

    protected final void b() {
        SubscriptionHelper.cancel(this.f76352a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        this.f76353b = null;
        this.f76352a.lazySet(SubscriptionHelper.CANCELLED);
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

    @Override // org.reactivestreams.d
    public final void onError(Throwable t9) {
        c();
        if (completeExceptionally(t9)) {
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this.f76352a, s9)) {
            a(s9);
        }
    }
}
