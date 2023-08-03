package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import q7.s;

/* compiled from: ParallelCollect.java */
/* loaded from: classes4.dex */
public final class a<T, C> extends io.reactivex.rxjava3.parallel.a<C> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f80510a;

    /* renamed from: b  reason: collision with root package name */
    final s<? extends C> f80511b;

    /* renamed from: c  reason: collision with root package name */
    final q7.b<? super C, ? super T> f80512c;

    /* compiled from: ParallelCollect.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0682a<T, C> extends DeferredScalarSubscriber<T, C> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f80513s = -4767392946044436228L;

        /* renamed from: p  reason: collision with root package name */
        final q7.b<? super C, ? super T> f80514p;

        /* renamed from: q  reason: collision with root package name */
        C f80515q;

        /* renamed from: r  reason: collision with root package name */
        boolean f80516r;

        C0682a(org.reactivestreams.d<? super C> subscriber, C initialValue, q7.b<? super C, ? super T> collector) {
            super(subscriber);
            this.f80515q = initialValue;
            this.f80514p = collector;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f81192m.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onComplete() {
            if (this.f80516r) {
                return;
            }
            this.f80516r = true;
            C c10 = this.f80515q;
            this.f80515q = null;
            complete(c10);
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80516r) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80516r = true;
            this.f80515q = null;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80516r) {
                return;
            }
            try {
                this.f80514p.accept((C) this.f80515q, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f81192m, s9)) {
                this.f81192m = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public a(io.reactivex.rxjava3.parallel.a<? extends T> source, s<? extends C> initialCollection, q7.b<? super C, ? super T> collector) {
        this.f80510a = source;
        this.f80511b = initialCollection;
        this.f80512c = collector;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80510a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super C>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super Object>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                try {
                    C c10 = this.f80511b.get();
                    Objects.requireNonNull(c10, "The initialSupplier returned a null value");
                    dVarArr[i4] = new C0682a(subscribers[i4], c10, this.f80512c);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    c0(subscribers, th);
                    return;
                }
            }
            this.f80510a.X(dVarArr);
        }
    }

    void c0(org.reactivestreams.d<?>[] subscribers, Throwable ex) {
        for (org.reactivestreams.d<?> dVar : subscribers) {
            EmptySubscription.error(ex, dVar);
        }
    }
}
