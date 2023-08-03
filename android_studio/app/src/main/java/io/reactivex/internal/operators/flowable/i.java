package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableAny.java */
/* loaded from: classes3.dex */
public final class i<T> extends io.reactivex.internal.operators.flowable.a<T, Boolean> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f72022c;

    /* compiled from: FlowableAny.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements io.reactivex.o<T> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f72023p = -2311252482644620661L;

        /* renamed from: m  reason: collision with root package name */
        final n7.r<? super T> f72024m;

        /* renamed from: n  reason: collision with root package name */
        org.reactivestreams.e f72025n;

        /* renamed from: o  reason: collision with root package name */
        boolean f72026o;

        a(org.reactivestreams.d<? super Boolean> dVar, n7.r<? super T> rVar) {
            super(dVar);
            this.f72024m = rVar;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72025n.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72026o) {
                return;
            }
            this.f72026o = true;
            complete(Boolean.FALSE);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72026o) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72026o = true;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72026o) {
                return;
            }
            try {
                if (this.f72024m.test(t9)) {
                    this.f72026o = true;
                    this.f72025n.cancel();
                    complete(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72025n.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72025n, eVar)) {
                this.f72025n = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public i(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f72022c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super Boolean> dVar) {
        this.f71538b.j6(new a(dVar, this.f72022c));
    }
}
