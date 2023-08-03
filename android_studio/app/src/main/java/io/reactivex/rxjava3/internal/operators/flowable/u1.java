package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableIgnoreElements.java */
/* loaded from: classes4.dex */
public final class u1<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableIgnoreElements.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.internal.fuseable.n<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78006a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f78007b;

        a(org.reactivestreams.d<? super T> downstream) {
            this.f78006a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78007b.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T e4) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78006a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78006a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78007b, s9)) {
                this.f78007b = s9;
                this.f78006a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return mode & 2;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T v12, T v22) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    public u1(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(final org.reactivestreams.d<? super T> t9) {
        this.f76811b.G6(new a(t9));
    }
}
