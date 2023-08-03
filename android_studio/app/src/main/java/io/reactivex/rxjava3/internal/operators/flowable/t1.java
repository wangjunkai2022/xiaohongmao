package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableHide.java */
/* loaded from: classes4.dex */
public final class t1<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableHide.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77978a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77979b;

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77978a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77979b.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77978a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77978a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77978a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77979b, s9)) {
                this.f77979b = s9;
                this.f77978a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77979b.request(n9);
        }
    }

    public t1(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9));
    }
}
