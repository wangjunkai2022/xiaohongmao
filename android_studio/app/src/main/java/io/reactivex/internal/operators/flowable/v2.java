package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableReduce.java */
/* loaded from: classes3.dex */
public final class v2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.c<T, T, T> f72866c;

    /* compiled from: FlowableReduce.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72867o = -4663883003264602070L;

        /* renamed from: m  reason: collision with root package name */
        final n7.c<T, T, T> f72868m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f72869n;

        a(org.reactivestreams.d<? super T> dVar, n7.c<T, T, T> cVar) {
            super(dVar);
            this.f72868m = cVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72869n.cancel();
            this.f72869n = SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = this.f72869n;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar == subscriptionHelper) {
                return;
            }
            this.f72869n = subscriptionHelper;
            T t9 = this.f75877c;
            if (t9 != null) {
                complete(t9);
            } else {
                this.f75876b.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            org.reactivestreams.e eVar = this.f72869n;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar == subscriptionHelper) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72869n = subscriptionHelper;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72869n == SubscriptionHelper.CANCELLED) {
                return;
            }
            T t10 = this.f75877c;
            if (t10 == null) {
                this.f75877c = t9;
                return;
            }
            try {
                this.f75877c = (T) io.reactivex.internal.functions.b.g(this.f72868m.apply(t10, t9), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72869n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72869n, eVar)) {
                this.f72869n = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public v2(io.reactivex.j<T> jVar, n7.c<T, T, T> cVar) {
        super(jVar);
        this.f72866c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72866c));
    }
}
