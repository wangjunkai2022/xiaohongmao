package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDelaySubscriptionOther.java */
/* loaded from: classes4.dex */
public final class j0<T, U> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77378b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f77379c;

    /* compiled from: FlowableDelaySubscriptionOther.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77380e = 2259811067697317255L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77381a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f77382b;

        /* renamed from: c  reason: collision with root package name */
        final a<T>.C0636a f77383c = new C0636a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77384d = new AtomicReference<>();

        /* compiled from: FlowableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.j0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0636a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77385b = -3892798459447644106L;

            C0636a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                if (get() != SubscriptionHelper.CANCELLED) {
                    a.this.a();
                }
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                if (get() != SubscriptionHelper.CANCELLED) {
                    a.this.f77381a.onError(t9);
                } else {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                }
            }

            @Override // org.reactivestreams.d
            public void onNext(Object t9) {
                org.reactivestreams.e eVar = get();
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (eVar != subscriptionHelper) {
                    lazySet(subscriptionHelper);
                    eVar.cancel();
                    a.this.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                if (SubscriptionHelper.setOnce(this, s9)) {
                    s9.request(Long.MAX_VALUE);
                }
            }
        }

        a(org.reactivestreams.d<? super T> downstream, org.reactivestreams.c<? extends T> main) {
            this.f77381a = downstream;
            this.f77382b = main;
        }

        void a() {
            this.f77382b.i(this);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77383c);
            SubscriptionHelper.cancel(this.f77384d);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77381a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77381a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77381a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77384d, this, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                SubscriptionHelper.deferredRequest(this.f77384d, this, n9);
            }
        }
    }

    public j0(org.reactivestreams.c<? extends T> main, org.reactivestreams.c<U> other) {
        this.f77378b = main;
        this.f77379c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(final org.reactivestreams.d<? super T> child) {
        a aVar = new a(child, this.f77378b);
        child.onSubscribe(aVar);
        this.f77379c.i(aVar.f77383c);
    }
}
