package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWindowBoundary.java */
/* loaded from: classes4.dex */
public final class w4<T, B> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.core.m<T>> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f78192c;

    /* renamed from: d  reason: collision with root package name */
    final int f78193d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundary.java */
    /* loaded from: classes4.dex */
    public static final class a<T, B> extends io.reactivex.rxjava3.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f78194b;

        /* renamed from: c  reason: collision with root package name */
        boolean f78195c;

        a(b<T, B> parent) {
            this.f78194b = parent;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78195c) {
                return;
            }
            this.f78195c = true;
            this.f78194b.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78195c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78195c = true;
            this.f78194b.c(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(B t9) {
            if (this.f78195c) {
                return;
            }
            this.f78194b.d();
        }
    }

    /* compiled from: FlowableWindowBoundary.java */
    /* loaded from: classes4.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f78196m = 2233020065421370272L;

        /* renamed from: n  reason: collision with root package name */
        static final Object f78197n = new Object();

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78198a;

        /* renamed from: b  reason: collision with root package name */
        final int f78199b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f78200c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f78201d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f78202e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.a<Object> f78203f = new io.reactivex.rxjava3.internal.queue.a<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f78204g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f78205h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f78206i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78207j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.rxjava3.processors.h<T> f78208k;

        /* renamed from: l  reason: collision with root package name */
        long f78209l;

        b(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> downstream, int capacityHint) {
            this.f78198a = downstream;
            this.f78199b = capacityHint;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> dVar = this.f78198a;
            io.reactivex.rxjava3.internal.queue.a<Object> aVar = this.f78203f;
            AtomicThrowable atomicThrowable = this.f78204g;
            long j4 = this.f78209l;
            int i4 = 1;
            while (this.f78202e.get() != 0) {
                io.reactivex.rxjava3.processors.h<T> hVar = this.f78208k;
                boolean z9 = this.f78207j;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (hVar != 0) {
                        this.f78208k = null;
                        hVar.onError(terminate);
                    }
                    dVar.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (hVar != 0) {
                            this.f78208k = null;
                            hVar.onComplete();
                        }
                        dVar.onComplete();
                        return;
                    }
                    if (hVar != 0) {
                        this.f78208k = null;
                        hVar.onError(terminate2);
                    }
                    dVar.onError(terminate2);
                    return;
                } else if (z10) {
                    this.f78209l = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f78197n) {
                    hVar.onNext(poll);
                } else {
                    if (hVar != 0) {
                        this.f78208k = null;
                        hVar.onComplete();
                    }
                    if (!this.f78205h.get()) {
                        io.reactivex.rxjava3.processors.h<T> o9 = io.reactivex.rxjava3.processors.h.o9(this.f78199b, this);
                        this.f78208k = o9;
                        this.f78202e.getAndIncrement();
                        if (j4 != this.f78206i.get()) {
                            j4++;
                            y4 y4Var = new y4(o9);
                            dVar.onNext(y4Var);
                            if (y4Var.g9()) {
                                o9.onComplete();
                            }
                        } else {
                            SubscriptionHelper.cancel(this.f78201d);
                            this.f78200c.dispose();
                            atomicThrowable.tryAddThrowableOrReport(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f78207j = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f78208k = null;
        }

        void b() {
            SubscriptionHelper.cancel(this.f78201d);
            this.f78207j = true;
            a();
        }

        void c(Throwable e4) {
            SubscriptionHelper.cancel(this.f78201d);
            if (this.f78204g.tryAddThrowableOrReport(e4)) {
                this.f78207j = true;
                a();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78205h.compareAndSet(false, true)) {
                this.f78200c.dispose();
                if (this.f78202e.decrementAndGet() == 0) {
                    SubscriptionHelper.cancel(this.f78201d);
                }
            }
        }

        void d() {
            this.f78203f.offer(f78197n);
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78200c.dispose();
            this.f78207j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            this.f78200c.dispose();
            if (this.f78204g.tryAddThrowableOrReport(e4)) {
                this.f78207j = true;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78203f.offer(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this.f78201d, s9, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f78206i, n9);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f78202e.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.f78201d);
            }
        }
    }

    public w4(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<B> other, int capacityHint) {
        super(source);
        this.f78192c = other;
        this.f78193d = capacityHint;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> subscriber) {
        b bVar = new b(subscriber, this.f78193d);
        subscriber.onSubscribe(bVar);
        bVar.d();
        this.f78192c.i(bVar.f78200c);
        this.f76811b.G6(bVar);
    }
}
