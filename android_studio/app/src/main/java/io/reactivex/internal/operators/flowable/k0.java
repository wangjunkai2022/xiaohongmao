package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDelaySubscriptionOther.java */
/* loaded from: classes3.dex */
public final class k0<T, U> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72143b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f72144c;

    /* compiled from: FlowableDelaySubscriptionOther.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72145e = 2259811067697317255L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72146a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<? extends T> f72147b;

        /* renamed from: c  reason: collision with root package name */
        final a<T>.C0558a f72148c = new C0558a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72149d = new AtomicReference<>();

        /* compiled from: FlowableDelaySubscriptionOther.java */
        /* renamed from: io.reactivex.internal.operators.flowable.k0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0558a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f72150b = -3892798459447644106L;

            C0558a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                if (get() != SubscriptionHelper.CANCELLED) {
                    a.this.a();
                }
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                if (get() != SubscriptionHelper.CANCELLED) {
                    a.this.f72146a.onError(th);
                } else {
                    io.reactivex.plugins.a.Y(th);
                }
            }

            @Override // org.reactivestreams.d
            public void onNext(Object obj) {
                org.reactivestreams.e eVar = get();
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (eVar != subscriptionHelper) {
                    lazySet(subscriptionHelper);
                    eVar.cancel();
                    a.this.a();
                }
            }

            @Override // io.reactivex.o, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e eVar) {
                if (SubscriptionHelper.setOnce(this, eVar)) {
                    eVar.request(Long.MAX_VALUE);
                }
            }
        }

        a(org.reactivestreams.d<? super T> dVar, org.reactivestreams.c<? extends T> cVar) {
            this.f72146a = dVar;
            this.f72147b = cVar;
        }

        void a() {
            this.f72147b.i(this);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f72148c);
            SubscriptionHelper.cancel(this.f72149d);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72146a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72146a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72146a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f72149d, this, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                SubscriptionHelper.deferredRequest(this.f72149d, this, j4);
            }
        }
    }

    public k0(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<U> cVar2) {
        this.f72143b = cVar;
        this.f72144c = cVar2;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar, this.f72143b);
        dVar.onSubscribe(aVar);
        this.f72144c.i(aVar.f72148c);
    }
}
