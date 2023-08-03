package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableHide.java */
/* loaded from: classes3.dex */
public final class o1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableHide.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72418a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72419b;

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72418a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72419b.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72418a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72418a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72418a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72419b, eVar)) {
                this.f72419b = eVar;
                this.f72418a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72419b.request(j4);
        }
    }

    public o1(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
