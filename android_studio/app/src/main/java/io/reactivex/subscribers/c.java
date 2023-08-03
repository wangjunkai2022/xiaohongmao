package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ResourceSubscriber.java */
/* loaded from: classes4.dex */
public abstract class c<T> implements o<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<org.reactivestreams.e> f81795a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.internal.disposables.b f81796b = new io.reactivex.internal.disposables.b();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f81797c = new AtomicLong();

    public final void a(io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "resource is null");
        this.f81796b.b(cVar);
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        SubscriptionHelper.deferredRequest(this.f81795a, this.f81797c, j4);
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        if (SubscriptionHelper.cancel(this.f81795a)) {
            this.f81796b.dispose();
        }
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f81795a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (io.reactivex.internal.util.f.d(this.f81795a, eVar, getClass())) {
            long andSet = this.f81797c.getAndSet(0L);
            if (andSet != 0) {
                eVar.request(andSet);
            }
            b();
        }
    }
}
