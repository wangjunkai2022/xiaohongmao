package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAll.java */
/* loaded from: classes3.dex */
public final class f<T> extends io.reactivex.internal.operators.flowable.a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f71832c;

    /* compiled from: FlowableAll.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.o<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f71833p = -3521127104134758517L;

        /* renamed from: m  reason: collision with root package name */
        final n7.r<? super T> f71834m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f71835n;

        /* renamed from: o  reason: collision with root package name */
        boolean f71836o;

        a(org.reactivestreams.d<? super Boolean> dVar, n7.r<? super T> rVar) {
            super(dVar);
            this.f71834m = rVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f71835n.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71836o) {
                return;
            }
            this.f71836o = true;
            complete(Boolean.TRUE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71836o) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71836o = true;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71836o) {
                return;
            }
            try {
                if (this.f71834m.test(t9)) {
                    return;
                }
                this.f71836o = true;
                this.f71835n.cancel();
                complete(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71835n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71835n, eVar)) {
                this.f71835n = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public f(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f71832c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super Boolean> dVar) {
        this.f71538b.j6(new a(dVar, this.f71832c));
    }
}
