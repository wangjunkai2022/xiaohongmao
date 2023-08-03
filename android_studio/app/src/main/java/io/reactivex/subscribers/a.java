package io.reactivex.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;

/* compiled from: DefaultSubscriber.java */
/* loaded from: classes4.dex */
public abstract class a<T> implements o<T> {

    /* renamed from: a  reason: collision with root package name */
    org.reactivestreams.e f81793a;

    protected final void a() {
        org.reactivestreams.e eVar = this.f81793a;
        this.f81793a = SubscriptionHelper.CANCELLED;
        eVar.cancel();
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long j4) {
        org.reactivestreams.e eVar = this.f81793a;
        if (eVar != null) {
            eVar.request(j4);
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (io.reactivex.internal.util.f.f(this.f81793a, eVar, getClass())) {
            this.f81793a = eVar;
            b();
        }
    }
}
