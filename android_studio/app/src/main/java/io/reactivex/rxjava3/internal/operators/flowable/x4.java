package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWindowBoundarySelector.java */
/* loaded from: classes4.dex */
public final class x4<T, B, V> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.core.m<T>> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f78254c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super B, ? extends org.reactivestreams.c<V>> f78255d;

    /* renamed from: e  reason: collision with root package name */
    final int f78256e;

    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes4.dex */
    static final class a<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: r  reason: collision with root package name */
        private static final long f78257r = 8646217640096099753L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78258a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<B> f78259b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super B, ? extends org.reactivestreams.c<V>> f78260c;

        /* renamed from: d  reason: collision with root package name */
        final int f78261d;

        /* renamed from: l  reason: collision with root package name */
        long f78269l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f78270m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f78271n;

        /* renamed from: o  reason: collision with root package name */
        volatile boolean f78272o;

        /* renamed from: q  reason: collision with root package name */
        org.reactivestreams.e f78274q;

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<Object> f78265h = new io.reactivex.rxjava3.internal.queue.a();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f78262e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: g  reason: collision with root package name */
        final List<io.reactivex.rxjava3.processors.h<T>> f78264g = new ArrayList();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f78266i = new AtomicLong(1);

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f78267j = new AtomicBoolean();

        /* renamed from: p  reason: collision with root package name */
        final AtomicThrowable f78273p = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final c<B> f78263f = new c<>(this);

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f78268k = new AtomicLong();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowBoundarySelector.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.x4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0640a<T, V> extends io.reactivex.rxjava3.core.m<T> implements io.reactivex.rxjava3.core.r<V>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            final a<T, ?, V> f78275b;

            /* renamed from: c  reason: collision with root package name */
            final io.reactivex.rxjava3.processors.h<T> f78276c;

            /* renamed from: d  reason: collision with root package name */
            final AtomicReference<org.reactivestreams.e> f78277d = new AtomicReference<>();

            /* renamed from: e  reason: collision with root package name */
            final AtomicBoolean f78278e = new AtomicBoolean();

            C0640a(a<T, ?, V> parent, io.reactivex.rxjava3.processors.h<T> window) {
                this.f78275b = parent;
                this.f78276c = window;
            }

            @Override // io.reactivex.rxjava3.core.m
            protected void H6(org.reactivestreams.d<? super T> s9) {
                this.f78276c.i(s9);
                this.f78278e.set(true);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                SubscriptionHelper.cancel(this.f78277d);
            }

            boolean g9() {
                return !this.f78278e.get() && this.f78278e.compareAndSet(false, true);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return this.f78277d.get() == SubscriptionHelper.CANCELLED;
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                this.f78275b.a(this);
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                if (isDisposed()) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                } else {
                    this.f78275b.b(t9);
                }
            }

            @Override // org.reactivestreams.d
            public void onNext(V t9) {
                if (SubscriptionHelper.cancel(this.f78277d)) {
                    this.f78275b.a(this);
                }
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                if (SubscriptionHelper.setOnce(this.f78277d, s9)) {
                    s9.request(Long.MAX_VALUE);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowBoundarySelector.java */
        /* loaded from: classes4.dex */
        public static final class b<B> {

            /* renamed from: a  reason: collision with root package name */
            final B f78279a;

            b(B item) {
                this.f78279a = item;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableWindowBoundarySelector.java */
        /* loaded from: classes4.dex */
        public static final class c<B> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<B> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78280b = -3326496781427702834L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, B, ?> f78281a;

            c(a<?, B, ?> parent) {
                this.f78281a = parent;
            }

            void a() {
                SubscriptionHelper.cancel(this);
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                this.f78281a.e();
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                this.f78281a.i(t9);
            }

            @Override // org.reactivestreams.d
            public void onNext(B t9) {
                this.f78281a.d(t9);
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                if (SubscriptionHelper.setOnce(this, s9)) {
                    s9.request(Long.MAX_VALUE);
                }
            }
        }

        a(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, org.reactivestreams.c<B> open, q7.o<? super B, ? extends org.reactivestreams.c<V>> closingIndicator, int bufferSize) {
            this.f78258a = actual;
            this.f78259b = open;
            this.f78260c = closingIndicator;
            this.f78261d = bufferSize;
        }

        void a(C0640a<T, V> what) {
            this.f78265h.offer(what);
            c();
        }

        void b(Throwable t9) {
            this.f78274q.cancel();
            this.f78263f.a();
            this.f78262e.dispose();
            if (this.f78273p.tryAddThrowableOrReport(t9)) {
                this.f78271n = true;
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> dVar = this.f78258a;
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f78265h;
            List<io.reactivex.rxjava3.processors.h<T>> list = this.f78264g;
            int i4 = 1;
            while (true) {
                if (this.f78270m) {
                    pVar.clear();
                    list.clear();
                } else {
                    boolean z9 = this.f78271n;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && (z10 || this.f78273p.get() != null)) {
                        j(dVar);
                        this.f78270m = true;
                    } else if (!z10) {
                        if (poll instanceof b) {
                            if (!this.f78267j.get()) {
                                long j4 = this.f78269l;
                                if (this.f78268k.get() != j4) {
                                    this.f78269l = j4 + 1;
                                    try {
                                        org.reactivestreams.c<V> apply = this.f78260c.apply(((b) poll).f78279a);
                                        Objects.requireNonNull(apply, "The closingIndicator returned a null Publisher");
                                        org.reactivestreams.c<V> cVar = apply;
                                        this.f78266i.getAndIncrement();
                                        io.reactivex.rxjava3.processors.h<T> o9 = io.reactivex.rxjava3.processors.h.o9(this.f78261d, this);
                                        C0640a c0640a = new C0640a(this, o9);
                                        dVar.onNext(c0640a);
                                        if (c0640a.g9()) {
                                            o9.onComplete();
                                        } else {
                                            list.add(o9);
                                            this.f78262e.b(c0640a);
                                            cVar.i(c0640a);
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        this.f78274q.cancel();
                                        this.f78263f.a();
                                        this.f78262e.dispose();
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        this.f78273p.tryAddThrowableOrReport(th);
                                        this.f78271n = true;
                                    }
                                } else {
                                    this.f78274q.cancel();
                                    this.f78263f.a();
                                    this.f78262e.dispose();
                                    this.f78273p.tryAddThrowableOrReport(new MissingBackpressureException(z4.g9(j4)));
                                    this.f78271n = true;
                                }
                            }
                        } else if (poll instanceof C0640a) {
                            io.reactivex.rxjava3.processors.h<T> hVar = ((C0640a) poll).f78276c;
                            list.remove(hVar);
                            this.f78262e.c((io.reactivex.rxjava3.disposables.f) poll);
                            hVar.onComplete();
                        } else {
                            for (io.reactivex.rxjava3.processors.h<T> hVar2 : list) {
                                hVar2.onNext(poll);
                            }
                        }
                    } else if (this.f78272o && list.size() == 0) {
                        this.f78274q.cancel();
                        this.f78263f.a();
                        this.f78262e.dispose();
                        j(dVar);
                        this.f78270m = true;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78267j.compareAndSet(false, true)) {
                if (this.f78266i.decrementAndGet() == 0) {
                    this.f78274q.cancel();
                    this.f78263f.a();
                    this.f78262e.dispose();
                    this.f78273p.tryTerminateAndReport();
                    this.f78270m = true;
                    c();
                    return;
                }
                this.f78263f.a();
            }
        }

        void d(B startValue) {
            this.f78265h.offer(new b(startValue));
            c();
        }

        void e() {
            this.f78272o = true;
            c();
        }

        void i(Throwable t9) {
            this.f78274q.cancel();
            this.f78262e.dispose();
            if (this.f78273p.tryAddThrowableOrReport(t9)) {
                this.f78271n = true;
                c();
            }
        }

        void j(org.reactivestreams.d<?> downstream) {
            Throwable terminate = this.f78273p.terminate();
            if (terminate == null) {
                for (io.reactivex.rxjava3.processors.h<T> hVar : this.f78264g) {
                    hVar.onComplete();
                }
                downstream.onComplete();
            } else if (terminate != io.reactivex.rxjava3.internal.util.g.f81331a) {
                for (io.reactivex.rxjava3.processors.h<T> hVar2 : this.f78264g) {
                    hVar2.onError(terminate);
                }
                downstream.onError(terminate);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78263f.a();
            this.f78262e.dispose();
            this.f78271n = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78263f.a();
            this.f78262e.dispose();
            if (this.f78273p.tryAddThrowableOrReport(t9)) {
                this.f78271n = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78265h.offer(t9);
            c();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78274q, s9)) {
                this.f78274q = s9;
                this.f78258a.onSubscribe(this);
                this.f78259b.i(this.f78263f);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78268k, n9);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f78266i.decrementAndGet() == 0) {
                this.f78274q.cancel();
                this.f78263f.a();
                this.f78262e.dispose();
                this.f78273p.tryTerminateAndReport();
                this.f78270m = true;
                c();
            }
        }
    }

    public x4(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<B> open, q7.o<? super B, ? extends org.reactivestreams.c<V>> closingIndicator, int bufferSize) {
        super(source);
        this.f78254c = open;
        this.f78255d = closingIndicator;
        this.f78256e = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> s9) {
        this.f76811b.G6(new a(s9, this.f78254c, this.f78255d, this.f78256e));
    }
}
