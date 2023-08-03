package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DisposableSubscriber.java */
/* loaded from: classes4.dex */
public abstract class b<T> implements o<T>, io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81794a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        dispose();
    }

    protected void b() {
        this.f81794a.get().request(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        this.f81794a.get().request(j4);
    }

    @Override // io.reactivex.disposables.c
    public final void dispose() {
        SubscriptionHelper.cancel(this.f81794a);
    }

    @Override // io.reactivex.disposables.c
    public final boolean isDisposed() {
        return this.f81794a.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (io.reactivex.internal.util.f.d(this.f81794a, eVar, getClass())) {
            b();
        }
    }
}
