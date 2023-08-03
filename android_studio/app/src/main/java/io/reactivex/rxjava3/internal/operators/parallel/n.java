package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import q7.s;

/* compiled from: ParallelReduce.java */
/* loaded from: classes4.dex */
public final class n<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f80637a;

    /* renamed from: b  reason: collision with root package name */
    final s<R> f80638b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f80639c;

    /* compiled from: ParallelReduce.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends DeferredScalarSubscriber<T, R> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f80640s = 8200530050639449080L;

        /* renamed from: p  reason: collision with root package name */
        final q7.c<R, ? super T, R> f80641p;

        /* renamed from: q  reason: collision with root package name */
        R f80642q;

        /* renamed from: r  reason: collision with root package name */
        boolean f80643r;

        a(org.reactivestreams.d<? super R> subscriber, R initialValue, q7.c<R, ? super T, R> reducer) {
            super(subscriber);
            this.f80642q = initialValue;
            this.f80641p = reducer;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f81192m.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onComplete() {
            if (this.f80643r) {
                return;
            }
            this.f80643r = true;
            R r9 = this.f80642q;
            this.f80642q = null;
            complete(r9);
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80643r) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80643r = true;
            this.f80642q = null;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80643r) {
                return;
            }
            try {
                R apply = this.f80641p.apply(this.f80642q, t9);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f80642q = apply;
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

    public n(io.reactivex.rxjava3.parallel.a<? extends T> source, s<R> initialSupplier, q7.c<R, ? super T, R> reducer) {
        this.f80637a = source;
        this.f80638b = initialSupplier;
        this.f80639c = reducer;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80637a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super Object>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                try {
                    R r9 = this.f80638b.get();
                    Objects.requireNonNull(r9, "The initialSupplier returned a null value");
                    dVarArr[i4] = new a(subscribers[i4], r9, this.f80639c);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    c0(subscribers, th);
                    return;
                }
            }
            this.f80637a.X(dVarArr);
        }
    }

    void c0(org.reactivestreams.d<?>[] subscribers, Throwable ex) {
        for (org.reactivestreams.d<?> dVar : subscribers) {
            EmptySubscription.error(ex, dVar);
        }
    }
}
