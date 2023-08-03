package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableIgnoreElementsCompletable.java */
/* loaded from: classes4.dex */
public final class v1<T> extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78083a;

    /* compiled from: FlowableIgnoreElementsCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78084a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f78085b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f78084a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78085b.cancel();
            this.f78085b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78085b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78085b = SubscriptionHelper.CANCELLED;
            this.f78084a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78085b = SubscriptionHelper.CANCELLED;
            this.f78084a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78085b, s9)) {
                this.f78085b = s9;
                this.f78084a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public v1(io.reactivex.rxjava3.core.m<T> source) {
        this.f78083a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d t9) {
        this.f78083a.G6(new a(t9));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new u1(this.f78083a));
    }
}
