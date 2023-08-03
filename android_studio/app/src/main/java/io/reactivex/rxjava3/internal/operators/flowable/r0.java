package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableDoOnLifecycle.java */
/* loaded from: classes4.dex */
public final class r0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    private final q7.g<? super org.reactivestreams.e> f77852c;

    /* renamed from: d  reason: collision with root package name */
    private final q7.q f77853d;

    /* renamed from: e  reason: collision with root package name */
    private final q7.a f77854e;

    /* compiled from: FlowableDoOnLifecycle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77855a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super org.reactivestreams.e> f77856b;

        /* renamed from: c  reason: collision with root package name */
        final q7.q f77857c;

        /* renamed from: d  reason: collision with root package name */
        final q7.a f77858d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f77859e;

        a(org.reactivestreams.d<? super T> actual, q7.g<? super org.reactivestreams.e> onSubscribe, q7.q onRequest, q7.a onCancel) {
            this.f77855a = actual;
            this.f77856b = onSubscribe;
            this.f77858d = onCancel;
            this.f77857c = onRequest;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            org.reactivestreams.e eVar = this.f77859e;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f77859e = subscriptionHelper;
                try {
                    this.f77858d.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
                eVar.cancel();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77859e != SubscriptionHelper.CANCELLED) {
                this.f77855a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77859e != SubscriptionHelper.CANCELLED) {
                this.f77855a.onError(t9);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77855a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            try {
                this.f77856b.accept(s9);
                if (SubscriptionHelper.validate(this.f77859e, s9)) {
                    this.f77859e = s9;
                    this.f77855a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                s9.cancel();
                this.f77859e = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f77855a);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            try {
                this.f77857c.a(n9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f77859e.request(n9);
        }
    }

    public r0(io.reactivex.rxjava3.core.m<T> source, q7.g<? super org.reactivestreams.e> onSubscribe, q7.q onRequest, q7.a onCancel) {
        super(source);
        this.f77852c = onSubscribe;
        this.f77853d = onRequest;
        this.f77854e = onCancel;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77852c, this.f77853d, this.f77854e));
    }
}
