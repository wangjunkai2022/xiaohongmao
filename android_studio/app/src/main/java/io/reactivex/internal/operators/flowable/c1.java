package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapMaybe.java */
/* loaded from: classes3.dex */
public final class c1<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f71644c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71645d;

    /* renamed from: e  reason: collision with root package name */
    final int f71646e;

    /* compiled from: FlowableFlatMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f71647l = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f71648a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f71649b;

        /* renamed from: c  reason: collision with root package name */
        final int f71650c;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f71655h;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f71657j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f71658k;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f71651d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f71652e = new io.reactivex.disposables.b();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f71654g = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f71653f = new AtomicInteger(1);

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.internal.queue.b<R>> f71656i = new AtomicReference<>();

        /* compiled from: FlowableFlatMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.flowable.c1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0549a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<R>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71659b = -502562646270949838L;

            C0549a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.t
            public void onComplete() {
                a.this.e(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                a.this.i(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                a.this.j(this, r9);
            }
        }

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z9, int i4) {
            this.f71648a = dVar;
            this.f71655h = oVar;
            this.f71649b = z9;
            this.f71650c = i4;
        }

        void a() {
            io.reactivex.internal.queue.b<R> bVar = this.f71656i.get();
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
            if (r17.f71658k == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x007d, code lost:
            a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
            if (r17.f71649b != false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
            if (r17.f71654g.get() == null) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
            r2 = r17.f71654g.terminate();
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
            r2 = r17.f71654g.terminate();
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
            io.reactivex.internal.util.b.e(r17.f71651d, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00d6, code lost:
            if (r17.f71650c == Integer.MAX_VALUE) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
            r17.f71657j.request(r10);
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.c1.a.c():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71658k = true;
            this.f71657j.cancel();
            this.f71652e.dispose();
        }

        io.reactivex.internal.queue.b<R> d() {
            io.reactivex.internal.queue.b<R> bVar;
            do {
                io.reactivex.internal.queue.b<R> bVar2 = this.f71656i.get();
                if (bVar2 != null) {
                    return bVar2;
                }
                bVar = new io.reactivex.internal.queue.b<>(io.reactivex.j.Y());
            } while (!this.f71656i.compareAndSet(null, bVar));
            return bVar;
        }

        void e(a<T, R>.C0549a c0549a) {
            this.f71652e.c(c0549a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f71653f.decrementAndGet() == 0;
                    io.reactivex.internal.queue.b<R> bVar = this.f71656i.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        Throwable terminate = this.f71654g.terminate();
                        if (terminate != null) {
                            this.f71648a.onError(terminate);
                            return;
                        } else {
                            this.f71648a.onComplete();
                            return;
                        }
                    }
                    if (this.f71650c != Integer.MAX_VALUE) {
                        this.f71657j.request(1L);
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                    return;
                }
            }
            this.f71653f.decrementAndGet();
            if (this.f71650c != Integer.MAX_VALUE) {
                this.f71657j.request(1L);
            }
            b();
        }

        void i(a<T, R>.C0549a c0549a, Throwable th) {
            this.f71652e.c(c0549a);
            if (this.f71654g.addThrowable(th)) {
                if (!this.f71649b) {
                    this.f71657j.cancel();
                    this.f71652e.dispose();
                } else if (this.f71650c != Integer.MAX_VALUE) {
                    this.f71657j.request(1L);
                }
                this.f71653f.decrementAndGet();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void j(a<T, R>.C0549a c0549a, R r9) {
            this.f71652e.c(c0549a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f71653f.decrementAndGet() == 0;
                    if (this.f71651d.get() != 0) {
                        this.f71648a.onNext(r9);
                        io.reactivex.internal.queue.b<R> bVar = this.f71656i.get();
                        if (z9 && (bVar == null || bVar.isEmpty())) {
                            Throwable terminate = this.f71654g.terminate();
                            if (terminate != null) {
                                this.f71648a.onError(terminate);
                                return;
                            } else {
                                this.f71648a.onComplete();
                                return;
                            }
                        }
                        io.reactivex.internal.util.b.e(this.f71651d, 1L);
                        if (this.f71650c != Integer.MAX_VALUE) {
                            this.f71657j.request(1L);
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
            this.f71653f.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71653f.decrementAndGet();
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71653f.decrementAndGet();
            if (this.f71654g.addThrowable(th)) {
                if (!this.f71649b) {
                    this.f71652e.dispose();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f71655h.apply(t9), "The mapper returned a null MaybeSource");
                this.f71653f.getAndIncrement();
                C0549a c0549a = new C0549a();
                if (this.f71658k || !this.f71652e.b(c0549a)) {
                    return;
                }
                wVar.b(c0549a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71657j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71657j, eVar)) {
                this.f71657j = eVar;
                this.f71648a.onSubscribe(this);
                int i4 = this.f71650c;
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
                io.reactivex.internal.util.b.a(this.f71651d, j4);
                b();
            }
        }
    }

    public c1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, boolean z9, int i4) {
        super(jVar);
        this.f71644c = oVar;
        this.f71645d = z9;
        this.f71646e = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f71538b.j6(new a(dVar, this.f71644c, this.f71645d, this.f71646e));
    }
}
