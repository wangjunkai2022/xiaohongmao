package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSkip.java */
/* loaded from: classes3.dex */
public final class s3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72650c;

    /* compiled from: FlowableSkip.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72651a;

        /* renamed from: b  reason: collision with root package name */
        long f72652b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72653c;

        a(org.reactivestreams.d<? super T> dVar, long j4) {
            this.f72651a = dVar;
            this.f72652b = j4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72653c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72651a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72651a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f72652b;
            if (j4 != 0) {
                this.f72652b = j4 - 1;
            } else {
                this.f72651a.onNext(t9);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72653c, eVar)) {
                long j4 = this.f72652b;
                this.f72653c = eVar;
                this.f72651a.onSubscribe(this);
                eVar.request(j4);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72653c.request(j4);
        }
    }

    public s3(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f72650c = j4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72650c));
    }
}
