package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapSingle.java */
/* loaded from: classes4.dex */
public final class e1<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f77081c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77082d;

    /* renamed from: e  reason: collision with root package name */
    final int f77083e;

    /* compiled from: FlowableFlatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f77084l = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77085a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f77086b;

        /* renamed from: c  reason: collision with root package name */
        final int f77087c;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f77092h;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f77094j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77095k;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f77088d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f77089e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f77091g = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f77090f = new AtomicInteger(1);

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> f77093i = new AtomicReference<>();

        /* compiled from: FlowableFlatMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.e1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0630a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<R>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77096b = -502562646270949838L;

            C0630a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.e(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.i(this, value);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
            this.f77085a = actual;
            this.f77092h = mapper;
            this.f77086b = delayErrors;
            this.f77087c = maxConcurrency;
        }

        void a() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f77093i.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
            if (r13 != 0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006f, code lost:
            if (r17.f77095k == false) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
            a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
            if (r17.f77086b != false) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0081, code lost:
            if (r17.f77091g.get() == null) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
            a();
            r17.f77091g.tryTerminateConsumer(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x008b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0090, code lost:
            if (r2.get() != 0) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0094, code lost:
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
            r7 = r3.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009b, code lost:
            if (r7 == null) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a1, code lost:
            if (r7.isEmpty() == false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a4, code lost:
            if (r6 == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00a6, code lost:
            if (r12 == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a8, code lost:
            r17.f77091g.tryTerminateConsumer(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00ad, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00b0, code lost:
            if (r10 == 0) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00b2, code lost:
            io.reactivex.rxjava3.internal.util.b.e(r17.f77088d, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00bc, code lost:
            if (r17.f77087c == Integer.MAX_VALUE) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
            r17.f77094j.request(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00c3, code lost:
            r5 = addAndGet(-r5);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void c() {
            /*
                r17 = this;
                r0 = r17
                org.reactivestreams.d<? super R> r1 = r0.f77085a
                java.util.concurrent.atomic.AtomicInteger r2 = r0.f77090f
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> r3 = r0.f77093i
                r4 = 1
                r5 = 1
            La:
                java.util.concurrent.atomic.AtomicLong r6 = r0.f77088d
                long r6 = r6.get()
                r8 = 0
                r10 = r8
            L13:
                r12 = 0
                int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r13 == 0) goto L6b
                boolean r14 = r0.f77095k
                if (r14 == 0) goto L20
                r17.a()
                return
            L20:
                boolean r14 = r0.f77086b
                if (r14 != 0) goto L39
                io.reactivex.rxjava3.internal.util.AtomicThrowable r14 = r0.f77091g
                java.lang.Object r14 = r14.get()
                java.lang.Throwable r14 = (java.lang.Throwable) r14
                if (r14 == 0) goto L39
                r17.a()
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.f77091g
                org.reactivestreams.d<? super R> r2 = r0.f77085a
                r1.tryTerminateConsumer(r2)
                return
            L39:
                int r14 = r2.get()
                if (r14 != 0) goto L41
                r14 = 1
                goto L42
            L41:
                r14 = 0
            L42:
                java.lang.Object r15 = r3.get()
                io.reactivex.rxjava3.internal.queue.b r15 = (io.reactivex.rxjava3.internal.queue.b) r15
                if (r15 == 0) goto L4f
                java.lang.Object r15 = r15.poll()
                goto L50
            L4f:
                r15 = 0
            L50:
                if (r15 != 0) goto L55
                r16 = 1
                goto L57
            L55:
                r16 = 0
            L57:
                if (r14 == 0) goto L61
                if (r16 == 0) goto L61
                io.reactivex.rxjava3.internal.util.AtomicThrowable r2 = r0.f77091g
                r2.tryTerminateConsumer(r1)
                return
            L61:
                if (r16 == 0) goto L64
                goto L6b
            L64:
                r1.onNext(r15)
                r12 = 1
                long r10 = r10 + r12
                goto L13
            L6b:
                if (r13 != 0) goto Lae
                boolean r6 = r0.f77095k
                if (r6 == 0) goto L75
                r17.a()
                return
            L75:
                boolean r6 = r0.f77086b
                if (r6 != 0) goto L8c
                io.reactivex.rxjava3.internal.util.AtomicThrowable r6 = r0.f77091g
                java.lang.Object r6 = r6.get()
                java.lang.Throwable r6 = (java.lang.Throwable) r6
                if (r6 == 0) goto L8c
                r17.a()
                io.reactivex.rxjava3.internal.util.AtomicThrowable r2 = r0.f77091g
                r2.tryTerminateConsumer(r1)
                return
            L8c:
                int r6 = r2.get()
                if (r6 != 0) goto L94
                r6 = 1
                goto L95
            L94:
                r6 = 0
            L95:
                java.lang.Object r7 = r3.get()
                io.reactivex.rxjava3.internal.queue.b r7 = (io.reactivex.rxjava3.internal.queue.b) r7
                if (r7 == 0) goto La3
                boolean r7 = r7.isEmpty()
                if (r7 == 0) goto La4
            La3:
                r12 = 1
            La4:
                if (r6 == 0) goto Lae
                if (r12 == 0) goto Lae
                io.reactivex.rxjava3.internal.util.AtomicThrowable r2 = r0.f77091g
                r2.tryTerminateConsumer(r1)
                return
            Lae:
                int r6 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r6 == 0) goto Lc3
                java.util.concurrent.atomic.AtomicLong r6 = r0.f77088d
                io.reactivex.rxjava3.internal.util.b.e(r6, r10)
                int r6 = r0.f77087c
                r7 = 2147483647(0x7fffffff, float:NaN)
                if (r6 == r7) goto Lc3
                org.reactivestreams.e r6 = r0.f77094j
                r6.request(r10)
            Lc3:
                int r5 = -r5
                int r5 = r0.addAndGet(r5)
                if (r5 != 0) goto La
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.e1.a.c():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77095k = true;
            this.f77094j.cancel();
            this.f77089e.dispose();
            this.f77091g.tryTerminateAndReport();
        }

        io.reactivex.rxjava3.internal.queue.b<R> d() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f77093i.get();
            if (bVar != null) {
                return bVar;
            }
            io.reactivex.rxjava3.internal.queue.b<R> bVar2 = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.m.V());
            return this.f77093i.compareAndSet(null, bVar2) ? bVar2 : this.f77093i.get();
        }

        void e(a<T, R>.C0630a inner, Throwable e4) {
            this.f77089e.c(inner);
            if (this.f77091g.tryAddThrowableOrReport(e4)) {
                if (!this.f77086b) {
                    this.f77094j.cancel();
                    this.f77089e.dispose();
                } else if (this.f77087c != Integer.MAX_VALUE) {
                    this.f77094j.request(1L);
                }
                this.f77090f.decrementAndGet();
                b();
            }
        }

        void i(a<T, R>.C0630a inner, R value) {
            this.f77089e.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f77090f.decrementAndGet() == 0;
                    if (this.f77088d.get() != 0) {
                        this.f77085a.onNext(value);
                        io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f77093i.get();
                        if (z9 && (bVar == null || bVar.isEmpty())) {
                            this.f77091g.tryTerminateConsumer(this.f77085a);
                            return;
                        }
                        io.reactivex.rxjava3.internal.util.b.e(this.f77088d, 1L);
                        if (this.f77087c != Integer.MAX_VALUE) {
                            this.f77094j.request(1L);
                        }
                    } else {
                        io.reactivex.rxjava3.internal.queue.b<R> d4 = d();
                        synchronized (d4) {
                            d4.offer(value);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                }
            }
            io.reactivex.rxjava3.internal.queue.b<R> d10 = d();
            synchronized (d10) {
                d10.offer(value);
            }
            this.f77090f.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77090f.decrementAndGet();
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77090f.decrementAndGet();
            if (this.f77091g.tryAddThrowableOrReport(t9)) {
                if (!this.f77086b) {
                    this.f77089e.dispose();
                }
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f77092h.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                this.f77090f.getAndIncrement();
                C0630a c0630a = new C0630a();
                if (this.f77095k || !this.f77089e.b(c0630a)) {
                    return;
                }
                v0Var.d(c0630a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77094j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77094j, s9)) {
                this.f77094j = s9;
                this.f77085a.onSubscribe(this);
                int i4 = this.f77087c;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77088d, n9);
                b();
            }
        }
    }

    public e1(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        super(source);
        this.f77081c = mapper;
        this.f77082d = delayError;
        this.f77083e = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f76811b.G6(new a(s9, this.f77081c, this.f77082d, this.f77083e));
    }
}
