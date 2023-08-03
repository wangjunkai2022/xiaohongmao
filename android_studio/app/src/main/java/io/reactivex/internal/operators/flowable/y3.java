package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;

/* compiled from: FlowableSwitchIfEmpty.java */
/* loaded from: classes3.dex */
public final class y3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f73043c;

    /* compiled from: FlowableSwitchIfEmpty.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73044a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f73045b;

        /* renamed from: d  reason: collision with root package name */
        boolean f73047d = true;

        /* renamed from: c  reason: collision with root package name */
        final SubscriptionArbiter f73046c = new SubscriptionArbiter(false);

        a(org.reactivestreams.d<? super T> dVar, org.reactivestreams.c<? extends T> cVar) {
            this.f73044a = dVar;
            this.f73045b = cVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f73047d) {
                this.f73047d = false;
                this.f73045b.i(this);
                return;
            }
            this.f73044a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73044a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f73047d) {
                this.f73047d = false;
            }
            this.f73044a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f73046c.setSubscription(eVar);
        }
    }

    public y3(io.reactivex.j<T> jVar, org.reactivestreams.c<? extends T> cVar) {
        super(jVar);
        this.f73043c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar, this.f73043c);
        dVar.onSubscribe(aVar.f73046c);
        this.f71538b.j6(aVar);
    }
}
