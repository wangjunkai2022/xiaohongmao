package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableMergeWithMaybe.java */
/* loaded from: classes3.dex */
public final class e2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f71802c;

    /* compiled from: FlowableMergeWithMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71803o = -4592979584110982903L;

        /* renamed from: p  reason: collision with root package name */
        static final int f71804p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final int f71805q = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71806a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f71807b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0553a<T> f71808c = new C0553a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f71809d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f71810e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final int f71811f;

        /* renamed from: g  reason: collision with root package name */
        final int f71812g;

        /* renamed from: h  reason: collision with root package name */
        volatile o7.n<T> f71813h;

        /* renamed from: i  reason: collision with root package name */
        T f71814i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f71815j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f71816k;

        /* renamed from: l  reason: collision with root package name */
        volatile int f71817l;

        /* renamed from: m  reason: collision with root package name */
        long f71818m;

        /* renamed from: n  reason: collision with root package name */
        int f71819n;

        /* compiled from: FlowableMergeWithMaybe.java */
        /* renamed from: io.reactivex.internal.operators.flowable.e2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0553a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71820b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f71821a;

            C0553a(a<T> aVar) {
                this.f71821a = aVar;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f71821a.d();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f71821a.e(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t9) {
                this.f71821a.i(t9);
            }
        }

        a(org.reactivestreams.d<? super T> dVar) {
            this.f71806a = dVar;
            int Y = io.reactivex.j.Y();
            this.f71811f = Y;
            this.f71812g = Y - (Y >> 2);
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0081, code lost:
            if (r13 != 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0085, code lost:
            if (r18.f71815j == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
            r18.f71814i = null;
            r18.f71813h = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0092, code lost:
            if (r18.f71809d.get() == null) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0094, code lost:
            r18.f71814i = null;
            r18.f71813h = null;
            r1.onError(r18.f71809d.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00a1, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00a2, code lost:
            r6 = r18.f71816k;
            r8 = r18.f71813h;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00a6, code lost:
            if (r8 == null) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
            if (r8.isEmpty() == false) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00af, code lost:
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00b2, code lost:
            if (r6 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00b4, code lost:
            if (r10 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00b8, code lost:
            if (r18.f71817l != 2) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00ba, code lost:
            r18.f71813h = null;
            r1.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00bf, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00c0, code lost:
            r18.f71818m = r2;
            r18.f71819n = r4;
            r7 = addAndGet(-r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00c9, code lost:
            if (r7 != 0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00cb, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 207
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.e2.a.b():void");
        }

        o7.n<T> c() {
            o7.n<T> nVar = this.f71813h;
            if (nVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(io.reactivex.j.Y());
                this.f71813h = spscArrayQueue;
                return spscArrayQueue;
            }
            return nVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71815j = true;
            SubscriptionHelper.cancel(this.f71807b);
            DisposableHelper.dispose(this.f71808c);
            if (getAndIncrement() == 0) {
                this.f71813h = null;
                this.f71814i = null;
            }
        }

        void d() {
            this.f71817l = 2;
            a();
        }

        void e(Throwable th) {
            if (this.f71809d.addThrowable(th)) {
                SubscriptionHelper.cancel(this.f71807b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void i(T t9) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f71818m;
                if (this.f71810e.get() != j4) {
                    this.f71818m = j4 + 1;
                    this.f71806a.onNext(t9);
                    this.f71817l = 2;
                } else {
                    this.f71814i = t9;
                    this.f71817l = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f71814i = t9;
                this.f71817l = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71816k = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71809d.addThrowable(th)) {
                DisposableHelper.dispose(this.f71808c);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f71818m;
                if (this.f71810e.get() != j4) {
                    o7.n<T> nVar = this.f71813h;
                    if (nVar != null && !nVar.isEmpty()) {
                        nVar.offer(t9);
                    } else {
                        this.f71818m = j4 + 1;
                        this.f71806a.onNext(t9);
                        int i4 = this.f71819n + 1;
                        if (i4 == this.f71812g) {
                            this.f71819n = 0;
                            this.f71807b.get().request(i4);
                        } else {
                            this.f71819n = i4;
                        }
                    }
                } else {
                    c().offer(t9);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t9);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this.f71807b, eVar, this.f71811f);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f71810e, j4);
            a();
        }
    }

    public e2(io.reactivex.j<T> jVar, io.reactivex.w<? extends T> wVar) {
        super(jVar);
        this.f71802c = wVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f71538b.j6(aVar);
        this.f71802c.b(aVar.f71808c);
    }
}
