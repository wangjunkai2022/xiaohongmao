package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableDoOnLifecycle.java */
/* loaded from: classes3.dex */
public final class s0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    private final n7.g<? super org.reactivestreams.e> f72608c;

    /* renamed from: d  reason: collision with root package name */
    private final n7.q f72609d;

    /* renamed from: e  reason: collision with root package name */
    private final n7.a f72610e;

    /* compiled from: FlowableDoOnLifecycle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72611a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super org.reactivestreams.e> f72612b;

        /* renamed from: c  reason: collision with root package name */
        final n7.q f72613c;

        /* renamed from: d  reason: collision with root package name */
        final n7.a f72614d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72615e;

        a(org.reactivestreams.d<? super T> dVar, n7.g<? super org.reactivestreams.e> gVar, n7.q qVar, n7.a aVar) {
            this.f72611a = dVar;
            this.f72612b = gVar;
            this.f72614d = aVar;
            this.f72613c = qVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            org.reactivestreams.e eVar = this.f72615e;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f72615e = subscriptionHelper;
                try {
                    this.f72614d.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
                eVar.cancel();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72615e != SubscriptionHelper.CANCELLED) {
                this.f72611a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72615e != SubscriptionHelper.CANCELLED) {
                this.f72611a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72611a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            try {
                this.f72612b.accept(eVar);
                if (SubscriptionHelper.validate(this.f72615e, eVar)) {
                    this.f72615e = eVar;
                    this.f72611a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                eVar.cancel();
                this.f72615e = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f72611a);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            try {
                this.f72613c.a(j4);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f72615e.request(j4);
        }
    }

    public s0(io.reactivex.j<T> jVar, n7.g<? super org.reactivestreams.e> gVar, n7.q qVar, n7.a aVar) {
        super(jVar);
        this.f72608c = gVar;
        this.f72609d = qVar;
        this.f72610e = aVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72608c, this.f72609d, this.f72610e));
    }
}
