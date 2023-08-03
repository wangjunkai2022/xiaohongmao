package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSamplePublisher.java */
/* loaded from: classes4.dex */
public final class k3<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f77428b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<?> f77429c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77430d;

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77431i = -3029755663834015785L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f77432g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f77433h;

        a(org.reactivestreams.d<? super T> actual, org.reactivestreams.c<?> other) {
            super(actual, other);
            this.f77432g = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.k3.c
        void b() {
            this.f77433h = true;
            if (this.f77432g.getAndIncrement() == 0) {
                c();
                this.f77436a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.k3.c
        void e() {
            if (this.f77432g.getAndIncrement() == 0) {
                do {
                    boolean z9 = this.f77433h;
                    c();
                    if (z9) {
                        this.f77436a.onComplete();
                        return;
                    }
                } while (this.f77432g.decrementAndGet() != 0);
            }
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77434g = -3029755663834015785L;

        b(org.reactivestreams.d<? super T> actual, org.reactivestreams.c<?> other) {
            super(actual, other);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.k3.c
        void b() {
            this.f77436a.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.k3.c
        void e() {
            c();
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes4.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77435f = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77436a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<?> f77437b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f77438c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77439d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f77440e;

        c(org.reactivestreams.d<? super T> actual, org.reactivestreams.c<?> other) {
            this.f77436a = actual;
            this.f77437b = other;
        }

        public void a() {
            this.f77440e.cancel();
            b();
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f77438c.get() != 0) {
                    this.f77436a.onNext(andSet);
                    io.reactivex.rxjava3.internal.util.b.e(this.f77438c, 1L);
                    return;
                }
                cancel();
                this.f77436a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77439d);
            this.f77440e.cancel();
        }

        public void d(Throwable e4) {
            this.f77440e.cancel();
            this.f77436a.onError(e4);
        }

        abstract void e();

        void i(org.reactivestreams.e o9) {
            SubscriptionHelper.setOnce(this.f77439d, o9, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f77439d);
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            SubscriptionHelper.cancel(this.f77439d);
            this.f77436a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77440e, s9)) {
                this.f77440e = s9;
                this.f77436a.onSubscribe(this);
                if (this.f77439d.get() == null) {
                    this.f77437b.i(new d(this));
                    s9.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77438c, n9);
            }
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f77441a;

        d(c<T> parent) {
            this.f77441a = parent;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77441a.a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77441a.d(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            this.f77441a.e();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77441a.i(s9);
        }
    }

    public k3(org.reactivestreams.c<T> source, org.reactivestreams.c<?> other, boolean emitLast) {
        this.f77428b = source;
        this.f77429c = other;
        this.f77430d = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        io.reactivex.rxjava3.subscribers.e eVar = new io.reactivex.rxjava3.subscribers.e(s9);
        if (this.f77430d) {
            this.f77428b.i(new a(eVar, this.f77429c));
        } else {
            this.f77428b.i(new b(eVar, this.f77429c));
        }
    }
}
