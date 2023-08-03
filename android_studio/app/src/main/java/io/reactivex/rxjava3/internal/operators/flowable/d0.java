package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableCountSingle.java */
/* loaded from: classes4.dex */
public final class d0<T> extends io.reactivex.rxjava3.core.p0<Long> implements io.reactivex.rxjava3.internal.fuseable.d<Long> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77016a;

    /* compiled from: FlowableCountSingle.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Long> f77017a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77018b;

        /* renamed from: c  reason: collision with root package name */
        long f77019c;

        a(io.reactivex.rxjava3.core.s0<? super Long> downstream) {
            this.f77017a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77018b.cancel();
            this.f77018b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77018b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77018b = SubscriptionHelper.CANCELLED;
            this.f77017a.onSuccess(Long.valueOf(this.f77019c));
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77018b = SubscriptionHelper.CANCELLED;
            this.f77017a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            this.f77019c++;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77018b, s9)) {
                this.f77018b = s9;
                this.f77017a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public d0(io.reactivex.rxjava3.core.m<T> source) {
        this.f77016a = source;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Long> observer) {
        this.f77016a.G6(new a(observer));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<Long> c() {
        return io.reactivex.rxjava3.plugins.a.P(new c0(this.f77016a));
    }
}
