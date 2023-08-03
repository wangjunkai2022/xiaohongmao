package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;

/* compiled from: FlowableSkipLast.java */
/* loaded from: classes4.dex */
public final class w3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f78187c;

    /* compiled from: FlowableSkipLast.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78188d = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78189a;

        /* renamed from: b  reason: collision with root package name */
        final int f78190b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78191c;

        a(org.reactivestreams.d<? super T> actual, int skip) {
            super(skip);
            this.f78189a = actual;
            this.f78190b = skip;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78191c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78189a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78189a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78190b == size()) {
                this.f78189a.onNext((T) poll());
            } else {
                this.f78191c.request(1L);
            }
            offer(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78191c, s9)) {
                this.f78191c = s9;
                this.f78189a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78191c.request(n9);
        }
    }

    public w3(io.reactivex.rxjava3.core.m<T> source, int skip) {
        super(source);
        this.f78187c = skip;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78187c));
    }
}
