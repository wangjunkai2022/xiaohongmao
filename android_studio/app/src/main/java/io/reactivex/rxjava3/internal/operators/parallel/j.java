package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelJoin.java */
/* loaded from: classes4.dex */
public final class j<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f80582b;

    /* renamed from: c  reason: collision with root package name */
    final int f80583c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f80584d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelJoin.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements r<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80585f = 8410034718427740355L;

        /* renamed from: a  reason: collision with root package name */
        final c<T> f80586a;

        /* renamed from: b  reason: collision with root package name */
        final int f80587b;

        /* renamed from: c  reason: collision with root package name */
        final int f80588c;

        /* renamed from: d  reason: collision with root package name */
        long f80589d;

        /* renamed from: e  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<T> f80590e;

        a(c<T> parent, int prefetch) {
            this.f80586a = parent;
            this.f80587b = prefetch;
            this.f80588c = prefetch - (prefetch >> 2);
        }

        public boolean a() {
            return SubscriptionHelper.cancel(this);
        }

        io.reactivex.rxjava3.internal.fuseable.p<T> b() {
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f80590e;
            if (pVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f80587b);
                this.f80590e = spscArrayQueue;
                return spscArrayQueue;
            }
            return pVar;
        }

        public void c(long n9) {
            long j4 = this.f80589d + n9;
            if (j4 >= this.f80588c) {
                this.f80589d = 0L;
                get().request(j4);
                return;
            }
            this.f80589d = j4;
        }

        public void d() {
            long j4 = this.f80589d + 1;
            if (j4 == this.f80588c) {
                this.f80589d = 0L;
                get().request(j4);
                return;
            }
            this.f80589d = j4;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f80586a.d();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f80586a.e(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f80586a.h(this, t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, this.f80587b);
        }
    }

    /* compiled from: ParallelJoin.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f80591h = 6312374661811000451L;

        b(org.reactivestreams.d<? super T> actual, int n9, int prefetch) {
            super(actual, n9, prefetch);
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        public void d() {
            this.f80598f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        public void e(Throwable e4) {
            if (this.f80595c.compareAndSet(null, e4)) {
                a();
                c();
            } else if (e4 != this.f80595c.get()) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        public void h(a<T> inner, T value) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f80596d.get() != 0) {
                    this.f80593a.onNext(value);
                    if (this.f80596d.get() != Long.MAX_VALUE) {
                        this.f80596d.decrementAndGet();
                    }
                    inner.c(1L);
                } else if (!inner.b().offer(value)) {
                    a();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.f80595c.compareAndSet(null, missingBackpressureException)) {
                        this.f80593a.onError(missingBackpressureException);
                        return;
                    } else {
                        io.reactivex.rxjava3.plugins.a.Y(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!inner.b().offer(value)) {
                a();
                e(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
            if (r13 == false) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
            if (r15 == false) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
            if (r15 == false) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i() {
            /*
                r18 = this;
                r0 = r18
                io.reactivex.rxjava3.internal.operators.parallel.j$a<T>[] r1 = r0.f80594b
                int r2 = r1.length
                org.reactivestreams.d<? super T> r3 = r0.f80593a
                r5 = 1
            L8:
                java.util.concurrent.atomic.AtomicLong r6 = r0.f80596d
                long r6 = r6.get()
                r8 = 0
                r10 = r8
            L11:
                int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r13 == 0) goto L67
                boolean r13 = r0.f80597e
                if (r13 == 0) goto L1d
                r18.b()
                return
            L1d:
                io.reactivex.rxjava3.internal.util.AtomicThrowable r13 = r0.f80595c
                java.lang.Object r13 = r13.get()
                java.lang.Throwable r13 = (java.lang.Throwable) r13
                if (r13 == 0) goto L2e
                r18.b()
                r3.onError(r13)
                return
            L2e:
                java.util.concurrent.atomic.AtomicInteger r13 = r0.f80598f
                int r13 = r13.get()
                if (r13 != 0) goto L38
                r13 = 1
                goto L39
            L38:
                r13 = 0
            L39:
                r14 = 0
                r15 = 1
            L3b:
                int r4 = r1.length
                if (r14 >= r4) goto L5d
                r4 = r1[r14]
                io.reactivex.rxjava3.internal.fuseable.p<T> r12 = r4.f80590e
                if (r12 == 0) goto L5a
                java.lang.Object r12 = r12.poll()
                if (r12 == 0) goto L5a
                r3.onNext(r12)
                r4.d()
                r16 = 1
                long r10 = r10 + r16
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L59
                goto L67
            L59:
                r15 = 0
            L5a:
                int r14 = r14 + 1
                goto L3b
            L5d:
                if (r13 == 0) goto L65
                if (r15 == 0) goto L65
                r3.onComplete()
                return
            L65:
                if (r15 == 0) goto L11
            L67:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto Lac
                boolean r4 = r0.f80597e
                if (r4 == 0) goto L73
                r18.b()
                return
            L73:
                io.reactivex.rxjava3.internal.util.AtomicThrowable r4 = r0.f80595c
                java.lang.Object r4 = r4.get()
                java.lang.Throwable r4 = (java.lang.Throwable) r4
                if (r4 == 0) goto L84
                r18.b()
                r3.onError(r4)
                return
            L84:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.f80598f
                int r4 = r4.get()
                if (r4 != 0) goto L8e
                r4 = 1
                goto L8f
            L8e:
                r4 = 0
            L8f:
                r6 = 0
            L90:
                if (r6 >= r2) goto La3
                r7 = r1[r6]
                io.reactivex.rxjava3.internal.fuseable.p<T> r7 = r7.f80590e
                if (r7 == 0) goto La0
                boolean r7 = r7.isEmpty()
                if (r7 != 0) goto La0
                r12 = 0
                goto La4
            La0:
                int r6 = r6 + 1
                goto L90
            La3:
                r12 = 1
            La4:
                if (r4 == 0) goto Lac
                if (r12 == 0) goto Lac
                r3.onComplete()
                return
            Lac:
                int r4 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r4 == 0) goto Lb5
                java.util.concurrent.atomic.AtomicLong r4 = r0.f80596d
                io.reactivex.rxjava3.internal.util.b.e(r4, r10)
            Lb5:
                int r4 = -r5
                int r5 = r0.addAndGet(r4)
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.j.b.i():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelJoin.java */
    /* loaded from: classes4.dex */
    public static abstract class c<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f80592g = 3100232009247827843L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80593a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f80594b;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f80597e;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f80595c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f80596d = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f80598f = new AtomicInteger();

        c(org.reactivestreams.d<? super T> actual, int n9, int prefetch) {
            this.f80593a = actual;
            a<T>[] aVarArr = new a[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                aVarArr[i4] = new a<>(this, prefetch);
            }
            this.f80594b = aVarArr;
            this.f80598f.lazySet(n9);
        }

        void a() {
            for (a<T> aVar : this.f80594b) {
                aVar.a();
            }
        }

        void b() {
            for (a<T> aVar : this.f80594b) {
                aVar.f80590e = null;
            }
        }

        abstract void c();

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f80597e) {
                return;
            }
            this.f80597e = true;
            a();
            if (getAndIncrement() == 0) {
                b();
            }
        }

        abstract void d();

        abstract void e(Throwable e4);

        abstract void h(a<T> inner, T value);

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f80596d, n9);
                c();
            }
        }
    }

    /* compiled from: ParallelJoin.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f80599h = -5737965195918321883L;

        d(org.reactivestreams.d<? super T> actual, int n9, int prefetch) {
            super(actual, n9, prefetch);
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        void d() {
            this.f80598f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        void e(Throwable e4) {
            if (this.f80595c.tryAddThrowableOrReport(e4)) {
                this.f80598f.decrementAndGet();
                c();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.j.c
        void h(a<T> inner, T value) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f80596d.get() != 0) {
                    this.f80593a.onNext(value);
                    if (this.f80596d.get() != Long.MAX_VALUE) {
                        this.f80596d.decrementAndGet();
                    }
                    inner.c(1L);
                } else if (!inner.b().offer(value)) {
                    inner.a();
                    this.f80595c.tryAddThrowableOrReport(new MissingBackpressureException("Queue full?!"));
                    this.f80598f.decrementAndGet();
                    i();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!inner.b().offer(value)) {
                    inner.a();
                    this.f80595c.tryAddThrowableOrReport(new MissingBackpressureException("Queue full?!"));
                    this.f80598f.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            i();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
            if (r13 == false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
            if (r15 == false) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x004f, code lost:
            r18.f80595c.tryTerminateConsumer(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
            if (r15 == false) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i() {
            /*
                r18 = this;
                r0 = r18
                io.reactivex.rxjava3.internal.operators.parallel.j$a<T>[] r1 = r0.f80594b
                int r2 = r1.length
                org.reactivestreams.d<? super T> r3 = r0.f80593a
                r5 = 1
            L8:
                java.util.concurrent.atomic.AtomicLong r6 = r0.f80596d
                long r6 = r6.get()
                r8 = 0
                r10 = r8
            L11:
                int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r13 == 0) goto L57
                boolean r13 = r0.f80597e
                if (r13 == 0) goto L1d
                r18.b()
                return
            L1d:
                java.util.concurrent.atomic.AtomicInteger r13 = r0.f80598f
                int r13 = r13.get()
                if (r13 != 0) goto L27
                r13 = 1
                goto L28
            L27:
                r13 = 0
            L28:
                r14 = 0
                r15 = 1
            L2a:
                if (r14 >= r2) goto L4b
                r4 = r1[r14]
                io.reactivex.rxjava3.internal.fuseable.p<T> r12 = r4.f80590e
                if (r12 == 0) goto L48
                java.lang.Object r12 = r12.poll()
                if (r12 == 0) goto L48
                r3.onNext(r12)
                r4.d()
                r16 = 1
                long r10 = r10 + r16
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L47
                goto L57
            L47:
                r15 = 0
            L48:
                int r14 = r14 + 1
                goto L2a
            L4b:
                if (r13 == 0) goto L55
                if (r15 == 0) goto L55
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.f80595c
                r1.tryTerminateConsumer(r3)
                return
            L55:
                if (r15 == 0) goto L11
            L57:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L8d
                boolean r4 = r0.f80597e
                if (r4 == 0) goto L63
                r18.b()
                return
            L63:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.f80598f
                int r4 = r4.get()
                if (r4 != 0) goto L6d
                r4 = 1
                goto L6e
            L6d:
                r4 = 0
            L6e:
                r6 = 0
            L6f:
                if (r6 >= r2) goto L82
                r7 = r1[r6]
                io.reactivex.rxjava3.internal.fuseable.p<T> r7 = r7.f80590e
                if (r7 == 0) goto L7f
                boolean r7 = r7.isEmpty()
                if (r7 != 0) goto L7f
                r12 = 0
                goto L83
            L7f:
                int r6 = r6 + 1
                goto L6f
            L82:
                r12 = 1
            L83:
                if (r4 == 0) goto L8d
                if (r12 == 0) goto L8d
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.f80595c
                r1.tryTerminateConsumer(r3)
                return
            L8d:
                int r4 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r4 == 0) goto L96
                java.util.concurrent.atomic.AtomicLong r4 = r0.f80596d
                io.reactivex.rxjava3.internal.util.b.e(r4, r10)
            L96:
                int r4 = -r5
                int r5 = r0.addAndGet(r4)
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.j.d.i():void");
        }
    }

    public j(io.reactivex.rxjava3.parallel.a<? extends T> source, int prefetch, boolean delayErrors) {
        this.f80582b = source;
        this.f80583c = prefetch;
        this.f80584d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        c bVar;
        if (this.f80584d) {
            bVar = new d(s9, this.f80582b.M(), this.f80583c);
        } else {
            bVar = new b(s9, this.f80582b.M(), this.f80583c);
        }
        s9.onSubscribe(bVar);
        this.f80582b.X(bVar.f80594b);
    }
}
