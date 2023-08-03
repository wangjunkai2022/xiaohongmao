package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class InnerQueuedSubscriber<T> extends AtomicReference<org.reactivestreams.e> implements o<T>, org.reactivestreams.e {

    /* renamed from: h  reason: collision with root package name */
    private static final long f75784h = 22876611072430776L;

    /* renamed from: a  reason: collision with root package name */
    final g<T> f75785a;

    /* renamed from: b  reason: collision with root package name */
    final int f75786b;

    /* renamed from: c  reason: collision with root package name */
    final int f75787c;

    /* renamed from: d  reason: collision with root package name */
    volatile o7.o<T> f75788d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f75789e;

    /* renamed from: f  reason: collision with root package name */
    long f75790f;

    /* renamed from: g  reason: collision with root package name */
    int f75791g;

    public InnerQueuedSubscriber(g<T> gVar, int i4) {
        this.f75785a = gVar;
        this.f75786b = i4;
        this.f75787c = i4 - (i4 >> 2);
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.f75789e;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f75785a.c(this);
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        this.f75785a.d(this, th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f75791g == 0) {
            this.f75785a.a(this, t9);
        } else {
            this.f75785a.b();
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.setOnce(this, eVar)) {
            if (eVar instanceof o7.l) {
                o7.l lVar = (o7.l) eVar;
                int requestFusion = lVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f75791g = requestFusion;
                    this.f75788d = lVar;
                    this.f75789e = true;
                    this.f75785a.c(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f75791g = requestFusion;
                    this.f75788d = lVar;
                    io.reactivex.internal.util.o.j(eVar, this.f75786b);
                    return;
                }
            }
            this.f75788d = io.reactivex.internal.util.o.c(this.f75786b);
            io.reactivex.internal.util.o.j(eVar, this.f75786b);
        }
    }

    public o7.o<T> queue() {
        return this.f75788d;
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        if (this.f75791g != 1) {
            long j10 = this.f75790f + j4;
            if (j10 >= this.f75787c) {
                this.f75790f = 0L;
                get().request(j10);
                return;
            }
            this.f75790f = j10;
        }
    }

    public void requestOne() {
        if (this.f75791g != 1) {
            long j4 = this.f75790f + 1;
            if (j4 == this.f75787c) {
                this.f75790f = 0L;
                get().request(j4);
                return;
            }
            this.f75790f = j4;
        }
    }

    public void setDone() {
        this.f75789e = true;
    }
}
