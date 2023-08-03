package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableRepeatWhen.java */
/* loaded from: classes4.dex */
public final class f3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super io.reactivex.rxjava3.core.m<Object>, ? extends org.reactivestreams.c<?>> f77145c;

    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T, Object> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77146o = -2680129890138081029L;

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.processors.c<Object> processor, org.reactivestreams.e receiver) {
            super(actual, processor, receiver);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            e(0);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77155l.cancel();
            this.f77153j.onError(t9);
        }
    }

    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.r<Object>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77147e = 2827772011130406689L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.c<T> f77148a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77149b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f77150c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        c<T, U> f77151d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(org.reactivestreams.c<T> source) {
            this.f77148a = source;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77149b);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77151d.cancel();
            this.f77151d.f77153j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77151d.cancel();
            this.f77151d.f77153j.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            if (getAndIncrement() == 0) {
                while (this.f77149b.get() != SubscriptionHelper.CANCELLED) {
                    this.f77148a.i(this.f77151d);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77149b, this.f77150c, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f77149b, this.f77150c, n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes4.dex */
    public static abstract class c<T, U> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f77152n = -5604623027276966720L;

        /* renamed from: j  reason: collision with root package name */
        protected final org.reactivestreams.d<? super T> f77153j;

        /* renamed from: k  reason: collision with root package name */
        protected final io.reactivex.rxjava3.processors.c<U> f77154k;

        /* renamed from: l  reason: collision with root package name */
        protected final org.reactivestreams.e f77155l;

        /* renamed from: m  reason: collision with root package name */
        private long f77156m;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.processors.c<U> processor, org.reactivestreams.e receiver) {
            super(false);
            this.f77153j = actual;
            this.f77154k = processor;
            this.f77155l = receiver;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public final void cancel() {
            super.cancel();
            this.f77155l.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void e(U signal) {
            setSubscription(EmptySubscription.INSTANCE);
            long j4 = this.f77156m;
            if (j4 != 0) {
                this.f77156m = 0L;
                produced(j4);
            }
            this.f77155l.request(1L);
            this.f77154k.onNext(signal);
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            this.f77156m++;
            this.f77153j.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e s9) {
            setSubscription(s9);
        }
    }

    public f3(io.reactivex.rxjava3.core.m<T> source, q7.o<? super io.reactivex.rxjava3.core.m<Object>, ? extends org.reactivestreams.c<?>> handler) {
        super(source);
        this.f77145c = handler;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        io.reactivex.rxjava3.subscribers.e eVar = new io.reactivex.rxjava3.subscribers.e(s9);
        io.reactivex.rxjava3.processors.c<T> k92 = io.reactivex.rxjava3.processors.h.n9(8).k9();
        try {
            org.reactivestreams.c<?> apply = this.f77145c.apply(k92);
            Objects.requireNonNull(apply, "handler returned a null Publisher");
            org.reactivestreams.c<?> cVar = apply;
            b bVar = new b(this.f76811b);
            a aVar = new a(eVar, k92, bVar);
            bVar.f77151d = aVar;
            s9.onSubscribe(aVar);
            cVar.i(bVar);
            bVar.onNext(0);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
