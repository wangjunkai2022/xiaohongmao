package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: DefaultSubscriber.java */
/* loaded from: classes4.dex */
public abstract class a<T> implements r<T> {

    /* renamed from: a  reason: collision with root package name */
    org.reactivestreams.e f81643a;

    protected final void a() {
        org.reactivestreams.e eVar = this.f81643a;
        this.f81643a = SubscriptionHelper.CANCELLED;
        eVar.cancel();
    }

    protected void b() {
        c(Long.MAX_VALUE);
    }

    protected final void c(long n9) {
        org.reactivestreams.e eVar = this.f81643a;
        if (eVar != null) {
            eVar.request(n9);
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (io.reactivex.rxjava3.internal.util.f.f(this.f81643a, s9, getClass())) {
            this.f81643a = s9;
            b();
        }
    }
}
