package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableWindow.java */
/* loaded from: classes4.dex */
public final class v4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.core.m<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f78113c;

    /* renamed from: d  reason: collision with root package name */
    final long f78114d;

    /* renamed from: e  reason: collision with root package name */
    final int f78115e;

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f78116h = -2365647875069161133L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78117a;

        /* renamed from: b  reason: collision with root package name */
        final long f78118b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f78119c;

        /* renamed from: d  reason: collision with root package name */
        final int f78120d;

        /* renamed from: e  reason: collision with root package name */
        long f78121e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f78122f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.processors.h<T> f78123g;

        a(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long size, int bufferSize) {
            super(1);
            this.f78117a = actual;
            this.f78118b = size;
            this.f78119c = new AtomicBoolean();
            this.f78120d = bufferSize;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78119c.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78123g;
            if (hVar != null) {
                this.f78123g = null;
                hVar.onComplete();
            }
            this.f78117a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78123g;
            if (hVar != null) {
                this.f78123g = null;
                hVar.onError(t9);
            }
            this.f78117a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            y4 y4Var;
            long j4 = this.f78121e;
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78123g;
            if (j4 == 0) {
                getAndIncrement();
                hVar = io.reactivex.rxjava3.processors.h.o9(this.f78120d, this);
                this.f78123g = hVar;
                y4Var = new y4(hVar);
                this.f78117a.onNext(y4Var);
            } else {
                y4Var = null;
            }
            long j10 = j4 + 1;
            hVar.onNext(t9);
            if (j10 == this.f78118b) {
                this.f78121e = 0L;
                this.f78123g = null;
                hVar.onComplete();
            } else {
                this.f78121e = j10;
            }
            if (y4Var == null || !y4Var.g9()) {
                return;
            }
            y4Var.f78347b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78122f, s9)) {
                this.f78122f = s9;
                this.f78117a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                this.f78122f.request(io.reactivex.rxjava3.internal.util.b.d(this.f78118b, n9));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f78122f.cancel();
            }
        }
    }

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: q  reason: collision with root package name */
        private static final long f78124q = 2428527070996323976L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78125a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<io.reactivex.rxjava3.processors.h<T>> f78126b;

        /* renamed from: c  reason: collision with root package name */
        final long f78127c;

        /* renamed from: d  reason: collision with root package name */
        final long f78128d;

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<io.reactivex.rxjava3.processors.h<T>> f78129e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f78130f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f78131g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f78132h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f78133i;

        /* renamed from: j  reason: collision with root package name */
        final int f78134j;

        /* renamed from: k  reason: collision with root package name */
        long f78135k;

        /* renamed from: l  reason: collision with root package name */
        long f78136l;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f78137m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f78138n;

        /* renamed from: o  reason: collision with root package name */
        Throwable f78139o;

        /* renamed from: p  reason: collision with root package name */
        volatile boolean f78140p;

        b(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long size, long skip, int bufferSize) {
            super(1);
            this.f78125a = actual;
            this.f78127c = size;
            this.f78128d = skip;
            this.f78126b = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f78129e = new ArrayDeque<>();
            this.f78130f = new AtomicBoolean();
            this.f78131g = new AtomicBoolean();
            this.f78132h = new AtomicLong();
            this.f78133i = new AtomicInteger();
            this.f78134j = bufferSize;
        }

        boolean a(boolean d4, boolean empty, org.reactivestreams.d<?> a10, io.reactivex.rxjava3.internal.queue.b<?> q9) {
            if (d4) {
                Throwable th = this.f78139o;
                if (th != null) {
                    q9.clear();
                    a10.onError(th);
                    return true;
                } else if (empty) {
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
            if (r10 != 0) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
            if (r15.f78140p == false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
            if (a(r15.f78138n, r1.isEmpty(), r0, r1) == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
            if (r8 == 0) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x007c, code lost:
            if (r4 == Long.MAX_VALUE) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x007e, code lost:
            r15.f78132h.addAndGet(-r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x000f, code lost:
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x000f, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                r15 = this;
                java.util.concurrent.atomic.AtomicInteger r0 = r15.f78133i
                int r0 = r0.getAndIncrement()
                if (r0 == 0) goto L9
                return
            L9:
                org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> r0 = r15.f78125a
                io.reactivex.rxjava3.internal.queue.b<io.reactivex.rxjava3.processors.h<T>> r1 = r15.f78126b
                r2 = 1
                r3 = 1
            Lf:
                boolean r4 = r15.f78140p
                if (r4 == 0) goto L1f
            L13:
                java.lang.Object r4 = r1.poll()
                io.reactivex.rxjava3.processors.h r4 = (io.reactivex.rxjava3.processors.h) r4
                if (r4 == 0) goto L84
                r4.onComplete()
                goto L13
            L1f:
                java.util.concurrent.atomic.AtomicLong r4 = r15.f78132h
                long r4 = r4.get()
                r6 = 0
                r8 = r6
            L28:
                int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r10 == 0) goto L5d
                boolean r11 = r15.f78138n
                java.lang.Object r12 = r1.poll()
                io.reactivex.rxjava3.processors.h r12 = (io.reactivex.rxjava3.processors.h) r12
                if (r12 != 0) goto L38
                r13 = 1
                goto L39
            L38:
                r13 = 0
            L39:
                boolean r14 = r15.f78140p
                if (r14 == 0) goto L3e
                goto Lf
            L3e:
                boolean r11 = r15.a(r11, r13, r0, r1)
                if (r11 == 0) goto L45
                return
            L45:
                if (r13 == 0) goto L48
                goto L5d
            L48:
                io.reactivex.rxjava3.internal.operators.flowable.y4 r10 = new io.reactivex.rxjava3.internal.operators.flowable.y4
                r10.<init>(r12)
                r0.onNext(r10)
                boolean r10 = r10.g9()
                if (r10 == 0) goto L59
                r12.onComplete()
            L59:
                r10 = 1
                long r8 = r8 + r10
                goto L28
            L5d:
                if (r10 != 0) goto L71
                boolean r10 = r15.f78140p
                if (r10 == 0) goto L64
                goto Lf
            L64:
                boolean r10 = r15.f78138n
                boolean r11 = r1.isEmpty()
                boolean r10 = r15.a(r10, r11, r0, r1)
                if (r10 == 0) goto L71
                return
            L71:
                int r10 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r10 == 0) goto L84
                r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r10 == 0) goto L84
                java.util.concurrent.atomic.AtomicLong r4 = r15.f78132h
                long r5 = -r8
                r4.addAndGet(r5)
            L84:
                java.util.concurrent.atomic.AtomicInteger r4 = r15.f78133i
                int r3 = -r3
                int r3 = r4.addAndGet(r3)
                if (r3 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.v4.b.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78140p = true;
            if (this.f78130f.compareAndSet(false, true)) {
                run();
            }
            b();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            Iterator<io.reactivex.rxjava3.processors.h<T>> it = this.f78129e.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.f78129e.clear();
            this.f78138n = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            Iterator<io.reactivex.rxjava3.processors.h<T>> it = this.f78129e.iterator();
            while (it.hasNext()) {
                it.next().onError(t9);
            }
            this.f78129e.clear();
            this.f78139o = t9;
            this.f78138n = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.rxjava3.processors.h<T> hVar;
            long j4 = this.f78135k;
            if (j4 != 0 || this.f78140p) {
                hVar = null;
            } else {
                getAndIncrement();
                hVar = io.reactivex.rxjava3.processors.h.o9(this.f78134j, this);
                this.f78129e.offer(hVar);
            }
            long j10 = j4 + 1;
            Iterator<io.reactivex.rxjava3.processors.h<T>> it = this.f78129e.iterator();
            while (it.hasNext()) {
                it.next().onNext(t9);
            }
            if (hVar != null) {
                this.f78126b.offer(hVar);
                b();
            }
            long j11 = this.f78136l + 1;
            if (j11 == this.f78127c) {
                this.f78136l = j11 - this.f78128d;
                io.reactivex.rxjava3.processors.h<T> poll = this.f78129e.poll();
                if (poll != null) {
                    poll.onComplete();
                }
            } else {
                this.f78136l = j11;
            }
            if (j10 == this.f78128d) {
                this.f78135k = 0L;
            } else {
                this.f78135k = j10;
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78137m, s9)) {
                this.f78137m = s9;
                this.f78125a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78132h, n9);
                if (!this.f78131g.get() && this.f78131g.compareAndSet(false, true)) {
                    this.f78137m.request(io.reactivex.rxjava3.internal.util.b.c(this.f78127c, io.reactivex.rxjava3.internal.util.b.d(this.f78128d, n9 - 1)));
                } else {
                    this.f78137m.request(io.reactivex.rxjava3.internal.util.b.d(this.f78128d, n9));
                }
                b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f78137m.cancel();
            }
        }
    }

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: j  reason: collision with root package name */
        private static final long f78141j = -8792836352386833856L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> f78142a;

        /* renamed from: b  reason: collision with root package name */
        final long f78143b;

        /* renamed from: c  reason: collision with root package name */
        final long f78144c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f78145d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f78146e;

        /* renamed from: f  reason: collision with root package name */
        final int f78147f;

        /* renamed from: g  reason: collision with root package name */
        long f78148g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f78149h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.processors.h<T> f78150i;

        c(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> actual, long size, long skip, int bufferSize) {
            super(1);
            this.f78142a = actual;
            this.f78143b = size;
            this.f78144c = skip;
            this.f78145d = new AtomicBoolean();
            this.f78146e = new AtomicBoolean();
            this.f78147f = bufferSize;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78145d.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78150i;
            if (hVar != null) {
                this.f78150i = null;
                hVar.onComplete();
            }
            this.f78142a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78150i;
            if (hVar != null) {
                this.f78150i = null;
                hVar.onError(t9);
            }
            this.f78142a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            y4 y4Var;
            long j4 = this.f78148g;
            io.reactivex.rxjava3.processors.h<T> hVar = this.f78150i;
            if (j4 == 0) {
                getAndIncrement();
                hVar = io.reactivex.rxjava3.processors.h.o9(this.f78147f, this);
                this.f78150i = hVar;
                y4Var = new y4(hVar);
                this.f78142a.onNext(y4Var);
            } else {
                y4Var = null;
            }
            long j10 = j4 + 1;
            if (hVar != null) {
                hVar.onNext(t9);
            }
            if (j10 == this.f78143b) {
                this.f78150i = null;
                hVar.onComplete();
            }
            if (j10 == this.f78144c) {
                this.f78148g = 0L;
            } else {
                this.f78148g = j10;
            }
            if (y4Var == null || !y4Var.g9()) {
                return;
            }
            y4Var.f78347b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78149h, s9)) {
                this.f78149h = s9;
                this.f78142a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                if (!this.f78146e.get() && this.f78146e.compareAndSet(false, true)) {
                    this.f78149h.request(io.reactivex.rxjava3.internal.util.b.c(io.reactivex.rxjava3.internal.util.b.d(this.f78143b, n9), io.reactivex.rxjava3.internal.util.b.d(this.f78144c - this.f78143b, n9 - 1)));
                    return;
                }
                this.f78149h.request(io.reactivex.rxjava3.internal.util.b.d(this.f78144c, n9));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f78149h.cancel();
            }
        }
    }

    public v4(io.reactivex.rxjava3.core.m<T> source, long size, long skip, int bufferSize) {
        super(source);
        this.f78113c = size;
        this.f78114d = skip;
        this.f78115e = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.core.m<T>> s9) {
        long j4 = this.f78114d;
        long j10 = this.f78113c;
        if (j4 == j10) {
            this.f76811b.G6(new a(s9, this.f78113c, this.f78115e));
        } else if (j4 > j10) {
            this.f76811b.G6(new c(s9, this.f78113c, this.f78114d, this.f78115e));
        } else {
            this.f76811b.G6(new b(s9, this.f78113c, this.f78114d, this.f78115e));
        }
    }
}
