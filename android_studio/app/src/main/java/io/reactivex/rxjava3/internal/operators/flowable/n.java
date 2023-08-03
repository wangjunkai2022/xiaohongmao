package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableBufferBoundary.java */
/* loaded from: classes4.dex */
public final class n<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final q7.s<U> f77581c;

    /* renamed from: d  reason: collision with root package name */
    final org.reactivestreams.c<? extends Open> f77582d;

    /* renamed from: e  reason: collision with root package name */
    final q7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> f77583e;

    /* compiled from: FlowableBufferBoundary.java */
    /* loaded from: classes4.dex */
    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77584o = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f77585a;

        /* renamed from: b  reason: collision with root package name */
        final q7.s<C> f77586b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends Open> f77587c;

        /* renamed from: d  reason: collision with root package name */
        final q7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> f77588d;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f77593i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77595k;

        /* renamed from: l  reason: collision with root package name */
        long f77596l;

        /* renamed from: n  reason: collision with root package name */
        long f77598n;

        /* renamed from: j  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<C> f77594j = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.m.V());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f77589e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f77590f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77591g = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        Map<Long, C> f77597m = new LinkedHashMap();

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f77592h = new AtomicThrowable();

        /* compiled from: FlowableBufferBoundary.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0638a<Open> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Open>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77599b = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f77600a;

            C0638a(a<?, ?, Open, ?> parent) {
                this.f77600a = parent;
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                SubscriptionHelper.cancel(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return get() == SubscriptionHelper.CANCELLED;
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f77600a.e(this);
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f77600a.a(this, t9);
            }

            @Override // org.reactivestreams.d
            public void onNext(Open t9) {
                this.f77600a.d(t9);
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super C> actual, org.reactivestreams.c<? extends Open> bufferOpen, q7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> bufferClose, q7.s<C> bufferSupplier) {
            this.f77585a = actual;
            this.f77586b = bufferSupplier;
            this.f77587c = bufferOpen;
            this.f77588d = bufferClose;
        }

        void a(io.reactivex.rxjava3.disposables.f subscriber, Throwable ex) {
            SubscriptionHelper.cancel(this.f77591g);
            this.f77589e.c(subscriber);
            onError(ex);
        }

        void b(b<T, C> closer, long idx) {
            boolean z9;
            this.f77589e.c(closer);
            if (this.f77589e.g() == 0) {
                SubscriptionHelper.cancel(this.f77591g);
                z9 = true;
            } else {
                z9 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f77597m;
                if (map == null) {
                    return;
                }
                this.f77594j.offer(map.remove(Long.valueOf(idx)));
                if (z9) {
                    this.f77593i = true;
                }
                c();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0053, code lost:
            if (r8 != 0) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
            if (r12.f77595k == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0059, code lost:
            r3.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x005c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x005f, code lost:
            if (r12.f77593i == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0067, code lost:
            if (r12.f77592h.get() == null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0069, code lost:
            r3.clear();
            r12.f77592h.tryTerminateConsumer(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0071, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
            if (r3.isEmpty() == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0078, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x007b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x007c, code lost:
            r12.f77598n = r0;
            r5 = addAndGet(-r5);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void c() {
            /*
                r12 = this;
                int r0 = r12.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                long r0 = r12.f77598n
                org.reactivestreams.d<? super C extends java.util.Collection<? super T>> r2 = r12.f77585a
                io.reactivex.rxjava3.internal.queue.b<C extends java.util.Collection<? super T>> r3 = r12.f77594j
                r4 = 1
                r5 = 1
            Lf:
                java.util.concurrent.atomic.AtomicLong r6 = r12.f77590f
                long r6 = r6.get()
            L15:
                int r8 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r8 == 0) goto L53
                boolean r9 = r12.f77595k
                if (r9 == 0) goto L21
                r3.clear()
                return
            L21:
                boolean r9 = r12.f77593i
                if (r9 == 0) goto L36
                io.reactivex.rxjava3.internal.util.AtomicThrowable r10 = r12.f77592h
                java.lang.Object r10 = r10.get()
                if (r10 == 0) goto L36
                r3.clear()
                io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r12.f77592h
                r0.tryTerminateConsumer(r2)
                return
            L36:
                java.lang.Object r10 = r3.poll()
                java.util.Collection r10 = (java.util.Collection) r10
                if (r10 != 0) goto L40
                r11 = 1
                goto L41
            L40:
                r11 = 0
            L41:
                if (r9 == 0) goto L49
                if (r11 == 0) goto L49
                r2.onComplete()
                return
            L49:
                if (r11 == 0) goto L4c
                goto L53
            L4c:
                r2.onNext(r10)
                r8 = 1
                long r0 = r0 + r8
                goto L15
            L53:
                if (r8 != 0) goto L7c
                boolean r6 = r12.f77595k
                if (r6 == 0) goto L5d
                r3.clear()
                return
            L5d:
                boolean r6 = r12.f77593i
                if (r6 == 0) goto L7c
                io.reactivex.rxjava3.internal.util.AtomicThrowable r6 = r12.f77592h
                java.lang.Object r6 = r6.get()
                if (r6 == 0) goto L72
                r3.clear()
                io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r12.f77592h
                r0.tryTerminateConsumer(r2)
                return
            L72:
                boolean r6 = r3.isEmpty()
                if (r6 == 0) goto L7c
                r2.onComplete()
                return
            L7c:
                r12.f77598n = r0
                int r5 = -r5
                int r5 = r12.addAndGet(r5)
                if (r5 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.n.a.c():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (SubscriptionHelper.cancel(this.f77591g)) {
                this.f77595k = true;
                this.f77589e.dispose();
                synchronized (this) {
                    this.f77597m = null;
                }
                if (getAndIncrement() != 0) {
                    this.f77594j.clear();
                }
            }
        }

        void d(Open token) {
            try {
                C c10 = this.f77586b.get();
                Objects.requireNonNull(c10, "The bufferSupplier returned a null Collection");
                C c11 = c10;
                org.reactivestreams.c<? extends Close> apply = this.f77588d.apply(token);
                Objects.requireNonNull(apply, "The bufferClose returned a null Publisher");
                org.reactivestreams.c<? extends Close> cVar = apply;
                long j4 = this.f77596l;
                this.f77596l = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f77597m;
                    if (map == null) {
                        return;
                    }
                    map.put(Long.valueOf(j4), c11);
                    b bVar = new b(this, j4);
                    this.f77589e.b(bVar);
                    cVar.i(bVar);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                SubscriptionHelper.cancel(this.f77591g);
                onError(th);
            }
        }

        void e(C0638a<Open> os) {
            this.f77589e.c(os);
            if (this.f77589e.g() == 0) {
                SubscriptionHelper.cancel(this.f77591g);
                this.f77593i = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77589e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f77597m;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    this.f77594j.offer(c10);
                }
                this.f77597m = null;
                this.f77593i = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77592h.tryAddThrowableOrReport(t9)) {
                this.f77589e.dispose();
                synchronized (this) {
                    this.f77597m = null;
                }
                this.f77593i = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                Map<Long, C> map = this.f77597m;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    c10.add(t9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f77591g, s9)) {
                C0638a c0638a = new C0638a(this);
                this.f77589e.b(c0638a);
                this.f77587c.i(c0638a);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f77590f, n9);
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableBufferBoundary.java */
    /* loaded from: classes4.dex */
    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77601c = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f77602a;

        /* renamed from: b  reason: collision with root package name */
        final long f77603b;

        b(a<T, C, ?, ?> parent, long index) {
            this.f77602a = parent;
            this.f77603b = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f77602a.b(this, this.f77603b);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f77602a.a(this, t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                eVar.cancel();
                this.f77602a.b(this, this.f77603b);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public n(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<? extends Open> bufferOpen, q7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> bufferClose, q7.s<U> bufferSupplier) {
        super(source);
        this.f77582d = bufferOpen;
        this.f77583e = bufferClose;
        this.f77581c = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        a aVar = new a(s9, this.f77582d, this.f77583e, this.f77581c);
        s9.onSubscribe(aVar);
        this.f76811b.G6(aVar);
    }
}
