package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;

/* compiled from: FlowableSwitchIfEmpty.java */
/* loaded from: classes4.dex */
public final class b4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f76902c;

    /* compiled from: FlowableSwitchIfEmpty.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76903a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f76904b;

        /* renamed from: d  reason: collision with root package name */
        boolean f76906d = true;

        /* renamed from: c  reason: collision with root package name */
        final SubscriptionArbiter f76905c = new SubscriptionArbiter(false);

        a(org.reactivestreams.d<? super T> actual, org.reactivestreams.c<? extends T> other) {
            this.f76903a = actual;
            this.f76904b = other;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76906d) {
                this.f76906d = false;
                this.f76904b.i(this);
                return;
            }
            this.f76903a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76903a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76906d) {
                this.f76906d = false;
            }
            this.f76903a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f76905c.setSubscription(s9);
        }
    }

    public b4(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<? extends T> other) {
        super(source);
        this.f76902c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a(s9, this.f76902c);
        s9.onSubscribe(aVar.f76905c);
        this.f76811b.G6(aVar);
    }
}
