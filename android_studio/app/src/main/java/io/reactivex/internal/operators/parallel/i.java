package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelJoin.java */
/* loaded from: classes3.dex */
public final class i<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f75202b;

    /* renamed from: c  reason: collision with root package name */
    final int f75203c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f75204d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelJoin.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f75205f = 8410034718427740355L;

        /* renamed from: a  reason: collision with root package name */
        final c<T> f75206a;

        /* renamed from: b  reason: collision with root package name */
        final int f75207b;

        /* renamed from: c  reason: collision with root package name */
        final int f75208c;

        /* renamed from: d  reason: collision with root package name */
        long f75209d;

        /* renamed from: e  reason: collision with root package name */
        volatile o7.n<T> f75210e;

        a(c<T> cVar, int i4) {
            this.f75206a = cVar;
            this.f75207b = i4;
            this.f75208c = i4 - (i4 >> 2);
        }

        public boolean a() {
            return SubscriptionHelper.cancel(this);
        }

        o7.n<T> b() {
            o7.n<T> nVar = this.f75210e;
            if (nVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f75207b);
                this.f75210e = spscArrayQueue;
                return spscArrayQueue;
            }
            return nVar;
        }

        public void c(long j4) {
            long j10 = this.f75209d + j4;
            if (j10 >= this.f75208c) {
                this.f75209d = 0L;
                get().request(j10);
                return;
            }
            this.f75209d = j10;
        }

        public void d() {
            long j4 = this.f75209d + 1;
            if (j4 == this.f75208c) {
                this.f75209d = 0L;
                get().request(j4);
                return;
            }
            this.f75209d = j4;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75206a.d();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75206a.e(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75206a.h(this, t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, this.f75207b);
        }
    }

    /* compiled from: ParallelJoin.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f75211h = 6312374661811000451L;

        b(org.reactivestreams.d<? super T> dVar, int i4, int i10) {
            super(dVar, i4, i10);
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        public void d() {
            this.f75218f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        public void e(Throwable th) {
            if (this.f75215c.compareAndSet(null, th)) {
                a();
                c();
            } else if (th != this.f75215c.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        public void h(a<T> aVar, T t9) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f75216d.get() != 0) {
                    this.f75213a.onNext(t9);
                    if (this.f75216d.get() != Long.MAX_VALUE) {
                        this.f75216d.decrementAndGet();
                    }
                    aVar.c(1L);
                } else if (!aVar.b().offer(t9)) {
                    a();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.f75215c.compareAndSet(null, missingBackpressureException)) {
                        this.f75213a.onError(missingBackpressureException);
                        return;
                    } else {
                        io.reactivex.plugins.a.Y(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!aVar.b().offer(t9)) {
                a();
                e(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
            if (r13 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
            if (r15 == false) goto L82;
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
                Method dump skipped, instructions count: 208
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.i.b.i():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelJoin.java */
    /* loaded from: classes3.dex */
    public static abstract class c<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f75212g = 3100232009247827843L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75213a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f75214b;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f75217e;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f75215c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f75216d = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f75218f = new AtomicInteger();

        c(org.reactivestreams.d<? super T> dVar, int i4, int i10) {
            this.f75213a = dVar;
            a<T>[] aVarArr = new a[i4];
            for (int i11 = 0; i11 < i4; i11++) {
                aVarArr[i11] = new a<>(this, i10);
            }
            this.f75214b = aVarArr;
            this.f75218f.lazySet(i4);
        }

        void a() {
            for (a<T> aVar : this.f75214b) {
                aVar.a();
            }
        }

        void b() {
            for (a<T> aVar : this.f75214b) {
                aVar.f75210e = null;
            }
        }

        abstract void c();

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f75217e) {
                return;
            }
            this.f75217e = true;
            a();
            if (getAndIncrement() == 0) {
                b();
            }
        }

        abstract void d();

        abstract void e(Throwable th);

        abstract void h(a<T> aVar, T t9);

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f75216d, j4);
                c();
            }
        }
    }

    /* compiled from: ParallelJoin.java */
    /* loaded from: classes3.dex */
    static final class d<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f75219h = -5737965195918321883L;

        d(org.reactivestreams.d<? super T> dVar, int i4, int i10) {
            super(dVar, i4, i10);
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            i();
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        void d() {
            this.f75218f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        void e(Throwable th) {
            this.f75215c.addThrowable(th);
            this.f75218f.decrementAndGet();
            c();
        }

        @Override // io.reactivex.internal.operators.parallel.i.c
        void h(a<T> aVar, T t9) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f75216d.get() != 0) {
                    this.f75213a.onNext(t9);
                    if (this.f75216d.get() != Long.MAX_VALUE) {
                        this.f75216d.decrementAndGet();
                    }
                    aVar.c(1L);
                } else if (!aVar.b().offer(t9)) {
                    aVar.a();
                    this.f75215c.addThrowable(new MissingBackpressureException("Queue full?!"));
                    this.f75218f.decrementAndGet();
                    i();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!aVar.b().offer(t9) && aVar.a()) {
                    this.f75215c.addThrowable(new MissingBackpressureException("Queue full?!"));
                    this.f75218f.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            i();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
            if (r13 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
            if (r15 == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
            if (r18.f75215c.get() == null) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0059, code lost:
            r3.onError(r18.f75215c.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
            if (r15 == false) goto L3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i() {
            /*
                Method dump skipped, instructions count: 213
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.i.d.i():void");
        }
    }

    public i(io.reactivex.parallel.a<? extends T> aVar, int i4, boolean z9) {
        this.f75202b = aVar;
        this.f75203c = i4;
        this.f75204d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        c bVar;
        if (this.f75204d) {
            bVar = new d(dVar, this.f75202b.F(), this.f75203c);
        } else {
            bVar = new b(dVar, this.f75202b.F(), this.f75203c);
        }
        dVar.onSubscribe(bVar);
        this.f75202b.Q(bVar.f75214b);
    }
}
