package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;

/* compiled from: FlowableCollect.java */
/* loaded from: classes3.dex */
public final class s<T, U> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends U> f72601c;

    /* renamed from: d  reason: collision with root package name */
    final n7.b<? super U, ? super T> f72602d;

    /* compiled from: FlowableCollect.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends DeferredScalarSubscription<U> implements io.reactivex.o<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72603q = -3589550218733891694L;

        /* renamed from: m  reason: collision with root package name */
        final n7.b<? super U, ? super T> f72604m;

        /* renamed from: n  reason: collision with root package name */
        final U f72605n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.e f72606o;

        /* renamed from: p  reason: collision with root package name */
        boolean f72607p;

        a(org.reactivestreams.d<? super U> dVar, U u9, n7.b<? super U, ? super T> bVar) {
            super(dVar);
            this.f72604m = bVar;
            this.f72605n = u9;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72606o.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72607p) {
                return;
            }
            this.f72607p = true;
            complete(this.f72605n);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72607p) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72607p = true;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72607p) {
                return;
            }
            try {
                this.f72604m.accept((U) this.f72605n, t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72606o.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72606o, eVar)) {
                this.f72606o = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public s(io.reactivex.j<T> jVar, Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        super(jVar);
        this.f72601c = callable;
        this.f72602d = bVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        try {
            this.f71538b.j6(new a(dVar, io.reactivex.internal.functions.b.g(this.f72601c.call(), "The initial value supplied is null"), this.f72602d));
        } catch (Throwable th) {
            EmptySubscription.error(th, dVar);
        }
    }
}
