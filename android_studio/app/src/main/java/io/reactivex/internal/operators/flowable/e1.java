package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapSingle.java */
/* loaded from: classes3.dex */
public final class e1<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f71785c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71786d;

    /* renamed from: e  reason: collision with root package name */
    final int f71787e;

    /* compiled from: FlowableFlatMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f71788l = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f71789a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f71790b;

        /* renamed from: c  reason: collision with root package name */
        final int f71791c;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.o0<? extends R>> f71796h;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f71798j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f71799k;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f71792d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f71793e = new io.reactivex.disposables.b();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f71795g = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f71794f = new AtomicInteger(1);

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f71797i = new AtomicReference<>();

        /* compiled from: FlowableFlatMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.flowable.e1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0552a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<R>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71800b = -502562646270949838L;

            C0552a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                a.this.e(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                a.this.i(this, r9);
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z9, int i4) {
            this.f71789a = dVar;
            this.f71796h = oVar;
            this.f71790b = z9;
            this.f71791c = i4;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f71797i.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
            if (r13 != 0) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x007b, code lost:
            if (r17.f71799k == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x007d, code lost:
            a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
            if (r17.f71790b != false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
            if (r17.f71795g.get() == null) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
            r2 = r17.f71795g.terminate();
            a();
            r1.onError(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00a0, code lost:
            if (r2.get() != 0) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a2, code lost:
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a4, code lost:
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a5, code lost:
            r7 = r3.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00ab, code lost:
            if (r7 == null) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b1, code lost:
            if (r7.isEmpty() == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b3, code lost:
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b4, code lost:
            if (r6 == false) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00b6, code lost:
            if (r12 == false) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00b8, code lost:
            r2 = r17.f71795g.terminate();
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00be, code lost:
            if (r2 == null) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00c0, code lost:
            r1.onError(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00c4, code lost:
            r1.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00c7, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00ca, code lost:
            if (r10 == 0) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00cc, code lost:
            io.reactivex.internal.util.b.e(r17.f71792d, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00d6, code lost:
            if (r17.f71791c == Integer.MAX_VALUE) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
            r17.f71798j.request(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
            r5 = addAndGet(-r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void c() {
            /*
                Method dump skipped, instructions count: 229
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.e1.a.c():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71799k = true;
            this.f71798j.cancel();
            this.f71793e.dispose();
        }

        io.reactivex.internal.queue.b<R> d() {
            io.reactivex.internal.queue.b<R> bVar;
            do {
                io.reactivex.internal.queue.b<R> bVar2 = this.f71797i.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.j.Y());
            } while (!this.f71797i.compareAndSet(null, bVar));
            return bVar;
        }

        void e(a<T, R>.C0552a c0552a, Throwable th) {
            this.f71793e.c(c0552a);
            if (this.f71795g.addThrowable(th)) {
                if (!this.f71790b) {
                    this.f71798j.cancel();
                    this.f71793e.dispose();
                } else if (this.f71791c != Integer.MAX_VALUE) {
                    this.f71798j.request(1L);
                }
                this.f71794f.decrementAndGet();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void i(a<T, R>.C0552a c0552a, R r9) {
            this.f71793e.c(c0552a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f71794f.decrementAndGet() == 0;
                    if (this.f71792d.get() != 0) {
                        this.f71789a.onNext(r9);
                        io.reactivex.internal.queue.b<R> bVar = this.f71797i.get();
                        if (z9 && (bVar == null || bVar.isEmpty())) {
                            Throwable terminate = this.f71795g.terminate();
                            if (terminate != null) {
                                this.f71789a.onError(terminate);
                                return;
                            } else {
                                this.f71789a.onComplete();
                                return;
                            }
                        }
                        io.reactivex.internal.util.b.e(this.f71792d, 1L);
                        if (this.f71791c != Integer.MAX_VALUE) {
                            this.f71798j.request(1L);
                        }
                    } else {
                        io.reactivex.internal.queue.b<R> d4 = d();
                        synchronized (d4) {
                            d4.offer(r9);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                }
            }
            io.reactivex.internal.queue.b<R> d10 = d();
            synchronized (d10) {
                d10.offer(r9);
            }
            this.f71794f.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71794f.decrementAndGet();
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71794f.decrementAndGet();
            if (this.f71795g.addThrowable(th)) {
                if (!this.f71790b) {
                    this.f71793e.dispose();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.o0 o0Var = (io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f71796h.apply(t9), "The mapper returned a null SingleSource");
                this.f71794f.getAndIncrement();
                C0552a c0552a = new C0552a();
                if (this.f71799k || !this.f71793e.b(c0552a)) {
                    return;
                }
                o0Var.d(c0552a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71798j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71798j, eVar)) {
                this.f71798j = eVar;
                this.f71789a.onSubscribe(this);
                int i4 = this.f71791c;
                if (i4 == Integer.MAX_VALUE) {
                    eVar.request(Long.MAX_VALUE);
                } else {
                    eVar.request(i4);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71792d, j4);
                b();
            }
        }
    }

    public e1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.o0<? extends R>> oVar, boolean z9, int i4) {
        super(jVar);
        this.f71785c = oVar;
        this.f71786d = z9;
        this.f71787e = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f71538b.j6(new a(dVar, this.f71785c, this.f71786d, this.f71787e));
    }
}
