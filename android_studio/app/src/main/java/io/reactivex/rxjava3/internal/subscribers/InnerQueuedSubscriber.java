package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.fuseable.n;
import io.reactivex.rxjava3.internal.fuseable.q;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.o;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class InnerQueuedSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements r<T>, org.reactivestreams.e {

    /* renamed from: h  reason: collision with root package name */
    private static final long f81199h = 22876611072430776L;

    /* renamed from: a  reason: collision with root package name */
    final g<T> f81200a;

    /* renamed from: b  reason: collision with root package name */
    final int f81201b;

    /* renamed from: c  reason: collision with root package name */
    final int f81202c;

    /* renamed from: d  reason: collision with root package name */
    volatile q<T> f81203d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f81204e;

    /* renamed from: f  reason: collision with root package name */
    long f81205f;

    /* renamed from: g  reason: collision with root package name */
    int f81206g;

    public InnerQueuedSubscriber(g<T> parent, int prefetch) {
        this.f81200a = parent;
        this.f81201b = prefetch;
        this.f81202c = prefetch - (prefetch >> 2);
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.f81204e;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f81200a.a(this);
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        this.f81200a.c(this, t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f81206g == 0) {
            this.f81200a.d(this, t9);
        } else {
            this.f81200a.b();
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this, s9)) {
            if (s9 instanceof n) {
                n nVar = (n) s9;
                int requestFusion = nVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f81206g = requestFusion;
                    this.f81203d = nVar;
                    this.f81204e = true;
                    this.f81200a.a(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f81206g = requestFusion;
                    this.f81203d = nVar;
                    o.j(s9, this.f81201b);
                    return;
                }
            }
            this.f81203d = o.c(this.f81201b);
            o.j(s9, this.f81201b);
        }
    }

    public q<T> queue() {
        return this.f81203d;
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        if (this.f81206g != 1) {
            long j4 = this.f81205f + n9;
            if (j4 >= this.f81202c) {
                this.f81205f = 0L;
                get().request(j4);
                return;
            }
            this.f81205f = j4;
        }
    }

    public void setDone() {
        this.f81204e = true;
    }
}
