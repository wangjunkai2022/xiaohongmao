package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSequenceEqual.java */
/* loaded from: classes4.dex */
public final class p3<T> extends io.reactivex.rxjava3.core.m<Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77740b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77741c;

    /* renamed from: d  reason: collision with root package name */
    final q7.d<? super T, ? super T> f77742d;

    /* renamed from: e  reason: collision with root package name */
    final int f77743e;

    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<Boolean> implements b {

        /* renamed from: t  reason: collision with root package name */
        private static final long f77744t = -6178010334400373240L;

        /* renamed from: m  reason: collision with root package name */
        final q7.d<? super T, ? super T> f77745m;

        /* renamed from: n  reason: collision with root package name */
        final c<T> f77746n;

        /* renamed from: o  reason: collision with root package name */
        final c<T> f77747o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicThrowable f77748p;

        /* renamed from: q  reason: collision with root package name */
        final AtomicInteger f77749q;

        /* renamed from: r  reason: collision with root package name */
        T f77750r;

        /* renamed from: s  reason: collision with root package name */
        T f77751s;

        a(org.reactivestreams.d<? super Boolean> actual, int prefetch, q7.d<? super T, ? super T> comparer) {
            super(actual);
            this.f77745m = comparer;
            this.f77749q = new AtomicInteger();
            this.f77746n = new c<>(this, prefetch);
            this.f77747o = new c<>(this, prefetch);
            this.f77748p = new AtomicThrowable();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p3.b
        public void a(Throwable t9) {
            if (this.f77748p.tryAddThrowableOrReport(t9)) {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p3.b
        public void b() {
            if (this.f77749q.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77746n.f77757e;
                io.reactivex.rxjava3.internal.fuseable.q<T> qVar2 = this.f77747o.f77757e;
                if (qVar != null && qVar2 != null) {
                    while (!isCancelled()) {
                        if (this.f77748p.get() != null) {
                            j();
                            this.f77748p.tryTerminateConsumer(this.f81291b);
                            return;
                        }
                        boolean z9 = this.f77746n.f77758f;
                        T t9 = this.f77750r;
                        if (t9 == null) {
                            try {
                                t9 = qVar.poll();
                                this.f77750r = t9;
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                j();
                                this.f77748p.tryAddThrowableOrReport(th);
                                this.f77748p.tryTerminateConsumer(this.f81291b);
                                return;
                            }
                        }
                        boolean z10 = t9 == null;
                        boolean z11 = this.f77747o.f77758f;
                        T t10 = this.f77751s;
                        if (t10 == null) {
                            try {
                                t10 = qVar2.poll();
                                this.f77751s = t10;
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                j();
                                this.f77748p.tryAddThrowableOrReport(th2);
                                this.f77748p.tryTerminateConsumer(this.f81291b);
                                return;
                            }
                        }
                        boolean z12 = t10 == null;
                        if (z9 && z11 && z10 && z12) {
                            complete(Boolean.TRUE);
                            return;
                        } else if (z9 && z11 && z10 != z12) {
                            j();
                            complete(Boolean.FALSE);
                            return;
                        } else if (!z10 && !z12) {
                            try {
                                if (!this.f77745m.a(t9, t10)) {
                                    j();
                                    complete(Boolean.FALSE);
                                    return;
                                }
                                this.f77750r = null;
                                this.f77751s = null;
                                this.f77746n.c();
                                this.f77747o.c();
                            } catch (Throwable th3) {
                                io.reactivex.rxjava3.exceptions.a.b(th3);
                                j();
                                this.f77748p.tryAddThrowableOrReport(th3);
                                this.f77748p.tryTerminateConsumer(this.f81291b);
                                return;
                            }
                        }
                    }
                    this.f77746n.b();
                    this.f77747o.b();
                    return;
                } else if (isCancelled()) {
                    this.f77746n.b();
                    this.f77747o.b();
                    return;
                } else if (this.f77748p.get() != null) {
                    j();
                    this.f77748p.tryTerminateConsumer(this.f81291b);
                    return;
                }
                i4 = this.f77749q.addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77746n.a();
            this.f77747o.a();
            this.f77748p.tryTerminateAndReport();
            if (this.f77749q.getAndIncrement() == 0) {
                this.f77746n.b();
                this.f77747o.b();
            }
        }

        void j() {
            this.f77746n.a();
            this.f77746n.b();
            this.f77747o.a();
            this.f77747o.b();
        }

        void k(org.reactivestreams.c<? extends T> source1, org.reactivestreams.c<? extends T> source2) {
            source1.i(this.f77746n);
            source2.i(this.f77747o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(Throwable ex);

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSequenceEqual.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77752h = 4804128302091633067L;

        /* renamed from: a  reason: collision with root package name */
        final b f77753a;

        /* renamed from: b  reason: collision with root package name */
        final int f77754b;

        /* renamed from: c  reason: collision with root package name */
        final int f77755c;

        /* renamed from: d  reason: collision with root package name */
        long f77756d;

        /* renamed from: e  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<T> f77757e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f77758f;

        /* renamed from: g  reason: collision with root package name */
        int f77759g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b parent, int prefetch) {
            this.f77753a = parent;
            this.f77755c = prefetch - (prefetch >> 2);
            this.f77754b = prefetch;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77757e;
            if (qVar != null) {
                qVar.clear();
            }
        }

        public void c() {
            if (this.f77759g != 1) {
                long j4 = this.f77756d + 1;
                if (j4 >= this.f77755c) {
                    this.f77756d = 0L;
                    get().request(j4);
                    return;
                }
                this.f77756d = j4;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77758f = true;
            this.f77753a.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77753a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77759g == 0 && !this.f77757e.offer(t9)) {
                onError(new MissingBackpressureException());
            } else {
                this.f77753a.b();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f77759g = requestFusion;
                        this.f77757e = nVar;
                        this.f77758f = true;
                        this.f77753a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f77759g = requestFusion;
                        this.f77757e = nVar;
                        s9.request(this.f77754b);
                        return;
                    }
                }
                this.f77757e = new SpscArrayQueue(this.f77754b);
                s9.request(this.f77754b);
            }
        }
    }

    public p3(org.reactivestreams.c<? extends T> first, org.reactivestreams.c<? extends T> second, q7.d<? super T, ? super T> comparer, int prefetch) {
        this.f77740b = first;
        this.f77741c = second;
        this.f77742d = comparer;
        this.f77743e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Boolean> s9) {
        a aVar = new a(s9, this.f77743e, this.f77742d);
        s9.onSubscribe(aVar);
        aVar.k(this.f77740b, this.f77741c);
    }
}
