package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableCollect.java */
/* loaded from: classes4.dex */
public final class r<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final q7.s<? extends U> f77845c;

    /* renamed from: d  reason: collision with root package name */
    final q7.b<? super U, ? super T> f77846d;

    /* compiled from: FlowableCollect.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends DeferredScalarSubscription<U> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f77847q = -3589550218733891694L;

        /* renamed from: m  reason: collision with root package name */
        final q7.b<? super U, ? super T> f77848m;

        /* renamed from: n  reason: collision with root package name */
        final U f77849n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.e f77850o;

        /* renamed from: p  reason: collision with root package name */
        boolean f77851p;

        a(org.reactivestreams.d<? super U> actual, U u9, q7.b<? super U, ? super T> collector) {
            super(actual);
            this.f77848m = collector;
            this.f77849n = u9;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77850o.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77851p) {
                return;
            }
            this.f77851p = true;
            complete(this.f77849n);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77851p) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77851p = true;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77851p) {
                return;
            }
            try {
                this.f77848m.accept((U) this.f77849n, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77850o.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77850o, s9)) {
                this.f77850o = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public r(io.reactivex.rxjava3.core.m<T> source, q7.s<? extends U> initialSupplier, q7.b<? super U, ? super T> collector) {
        super(source);
        this.f77845c = initialSupplier;
        this.f77846d = collector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        try {
            U u9 = this.f77845c.get();
            Objects.requireNonNull(u9, "The initial value supplied is null");
            this.f76811b.G6(new a(s9, u9, this.f77846d));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
