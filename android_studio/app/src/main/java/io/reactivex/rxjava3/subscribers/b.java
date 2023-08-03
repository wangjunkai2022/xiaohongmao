package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableSubscriber.java */
/* loaded from: classes4.dex */
public abstract class b<T> implements r<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81644a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        dispose();
    }

    protected void b() {
        this.f81644a.get().request(Long.MAX_VALUE);
    }

    protected final void c(long n9) {
        this.f81644a.get().request(n9);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        SubscriptionHelper.cancel(this.f81644a);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81644a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (io.reactivex.rxjava3.internal.util.f.d(this.f81644a, s9, getClass())) {
            b();
        }
    }
}
