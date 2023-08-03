package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;

/* compiled from: FlowableDetach.java */
/* loaded from: classes4.dex */
public final class l0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableDetach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        org.reactivestreams.d<? super T> f77447a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77448b;

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77447a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            org.reactivestreams.e eVar = this.f77448b;
            this.f77448b = EmptyComponent.INSTANCE;
            this.f77447a = EmptyComponent.asSubscriber();
            eVar.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.d<? super T> dVar = this.f77447a;
            this.f77448b = EmptyComponent.INSTANCE;
            this.f77447a = EmptyComponent.asSubscriber();
            dVar.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            org.reactivestreams.d<? super T> dVar = this.f77447a;
            this.f77448b = EmptyComponent.INSTANCE;
            this.f77447a = EmptyComponent.asSubscriber();
            dVar.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77447a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77448b, s9)) {
                this.f77448b = s9;
                this.f77447a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77448b.request(n9);
        }
    }

    public l0(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9));
    }
}
