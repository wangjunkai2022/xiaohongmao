package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceSubscriber.java */
/* loaded from: classes4.dex */
public abstract class c<T> implements r<T>, io.reactivex.rxjava3.disposables.f {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<org.reactivestreams.e> f81645a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.rxjava3.internal.disposables.a f81646b = new io.reactivex.rxjava3.internal.disposables.a();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f81647c = new AtomicLong();

    public final void a(io.reactivex.rxjava3.disposables.f resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f81646b.b(resource);
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long n9) {
        SubscriptionHelper.deferredRequest(this.f81645a, this.f81647c, n9);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final void dispose() {
        if (SubscriptionHelper.cancel(this.f81645a)) {
            this.f81646b.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public final boolean isDisposed() {
        return this.f81645a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (io.reactivex.rxjava3.internal.util.f.d(this.f81645a, s9, getClass())) {
            long andSet = this.f81647c.getAndSet(0L);
            if (andSet != 0) {
                s9.request(andSet);
            }
            b();
        }
    }
}
