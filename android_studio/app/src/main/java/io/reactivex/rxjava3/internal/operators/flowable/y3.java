package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSkipUntil.java */
/* loaded from: classes4.dex */
public final class y3<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f78337c;

    /* compiled from: FlowableSkipUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78338g = -6270983465606289181L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78339a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f78340b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f78341c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final a<T>.C0641a f78342d = new C0641a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f78343e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f78344f;

        /* compiled from: FlowableSkipUntil.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.y3$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0641a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78345b = -5592042965931999169L;

            C0641a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                a.this.f78344f = true;
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                SubscriptionHelper.cancel(a.this.f78340b);
                a aVar = a.this;
                io.reactivex.rxjava3.internal.util.h.d(aVar.f78339a, t9, aVar, aVar.f78343e);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object t9) {
                a.this.f78344f = true;
                get().cancel();
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super T> downstream) {
            this.f78339a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f78340b);
            SubscriptionHelper.cancel(this.f78342d);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f78344f) {
                io.reactivex.rxjava3.internal.util.h.f(this.f78339a, t9, this, this.f78343e);
                return true;
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f78342d);
            io.reactivex.rxjava3.internal.util.h.b(this.f78339a, this, this.f78343e);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            SubscriptionHelper.cancel(this.f78342d);
            io.reactivex.rxjava3.internal.util.h.d(this.f78339a, t9, this, this.f78343e);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f78340b.get().request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f78340b, this.f78341c, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f78340b, this.f78341c, n9);
        }
    }

    public y3(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<U> other) {
        super(source);
        this.f78337c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> child) {
        a aVar = new a(child);
        child.onSubscribe(aVar);
        this.f78337c.i(aVar.f78342d);
        this.f76811b.G6(aVar);
    }
}
