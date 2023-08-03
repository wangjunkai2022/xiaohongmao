package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSkip.java */
/* loaded from: classes4.dex */
public final class v3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f78109c;

    /* compiled from: FlowableSkip.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78110a;

        /* renamed from: b  reason: collision with root package name */
        long f78111b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78112c;

        a(org.reactivestreams.d<? super T> actual, long n9) {
            this.f78110a = actual;
            this.f78111b = n9;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78112c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78110a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78110a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f78111b;
            if (j4 != 0) {
                this.f78111b = j4 - 1;
            } else {
                this.f78110a.onNext(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78112c, s9)) {
                long j4 = this.f78111b;
                this.f78112c = s9;
                this.f78110a.onSubscribe(this);
                s9.request(j4);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78112c.request(n9);
        }
    }

    public v3(io.reactivex.rxjava3.core.m<T> source, long n9) {
        super(source);
        this.f78109c = n9;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78109c));
    }
}
