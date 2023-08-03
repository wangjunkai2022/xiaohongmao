package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.schedulers.k;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ParallelRunOn.java */
/* loaded from: classes3.dex */
public final class o<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f75281a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f75282b;

    /* renamed from: c  reason: collision with root package name */
    final int f75283c;

    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes3.dex */
    static abstract class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f75284k = 9222303586456402150L;

        /* renamed from: a  reason: collision with root package name */
        final int f75285a;

        /* renamed from: b  reason: collision with root package name */
        final int f75286b;

        /* renamed from: c  reason: collision with root package name */
        final SpscArrayQueue<T> f75287c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f75288d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f75289e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f75290f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f75291g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f75292h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f75293i;

        /* renamed from: j  reason: collision with root package name */
        int f75294j;

        a(int i4, SpscArrayQueue<T> spscArrayQueue, h0.c cVar) {
            this.f75285a = i4;
            this.f75287c = spscArrayQueue;
            this.f75286b = i4 - (i4 >> 2);
            this.f75288d = cVar;
        }

        final void a() {
            if (getAndIncrement() == 0) {
                this.f75288d.b(this);
            }
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            if (this.f75293i) {
                return;
            }
            this.f75293i = true;
            this.f75289e.cancel();
            this.f75288d.dispose();
            if (getAndIncrement() == 0) {
                this.f75287c.clear();
            }
        }

        @Override // org.reactivestreams.d
        public final void onComplete() {
            if (this.f75290f) {
                return;
            }
            this.f75290f = true;
            a();
        }

        @Override // org.reactivestreams.d
        public final void onError(Throwable th) {
            if (this.f75290f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75291g = th;
            this.f75290f = true;
            a();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f75290f) {
                return;
            }
            if (!this.f75287c.offer(t9)) {
                this.f75289e.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
                return;
            }
            a();
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f75292h, j4);
                a();
            }
        }
    }

    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes3.dex */
    final class b implements k.a {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T>[] f75295a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<T>[] f75296b;

        b(org.reactivestreams.d<? super T>[] dVarArr, org.reactivestreams.d<T>[] dVarArr2) {
            this.f75295a = dVarArr;
            this.f75296b = dVarArr2;
        }

        @Override // io.reactivex.internal.schedulers.k.a
        public void a(int i4, h0.c cVar) {
            o.this.V(i4, this.f75295a, this.f75296b, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes3.dex */
    public static final class c<T> extends a<T> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f75298m = 1075119423897941642L;

        /* renamed from: l  reason: collision with root package name */
        final o7.a<? super T> f75299l;

        c(o7.a<? super T> aVar, int i4, SpscArrayQueue<T> spscArrayQueue, h0.c cVar) {
            super(i4, spscArrayQueue, cVar);
            this.f75299l = aVar;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75289e, eVar)) {
                this.f75289e = eVar;
                this.f75299l.onSubscribe(this);
                eVar.request(this.f75285a);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
            if (r13 != 0) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
            if (r18.f75293i == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
            r2.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
            if (r18.f75290f == false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
            r13 = r18.f75291g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
            if (r13 == null) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
            r2.clear();
            r3.onError(r13);
            r18.f75288d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0089, code lost:
            if (r2.isEmpty() == false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
            r3.onComplete();
            r18.f75288d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0096, code lost:
            if (r11 == 0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009f, code lost:
            if (r7 == Long.MAX_VALUE) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a1, code lost:
            r18.f75292h.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a7, code lost:
            r7 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00ab, code lost:
            if (r7 != r6) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
            r18.f75294j = r1;
            r6 = addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b4, code lost:
            if (r6 != 0) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b6, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b7, code lost:
            r6 = r7;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r18 = this;
                r0 = r18
                int r1 = r0.f75294j
                io.reactivex.internal.queue.SpscArrayQueue<T> r2 = r0.f75287c
                o7.a<? super T> r3 = r0.f75299l
                int r4 = r0.f75286b
                r5 = 1
                r6 = 1
            Lc:
                java.util.concurrent.atomic.AtomicLong r7 = r0.f75292h
                long r7 = r7.get()
                r9 = 0
                r11 = r9
            L15:
                int r13 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
                if (r13 == 0) goto L67
                boolean r14 = r0.f75293i
                if (r14 == 0) goto L21
                r2.clear()
                return
            L21:
                boolean r14 = r0.f75290f
                if (r14 == 0) goto L35
                java.lang.Throwable r15 = r0.f75291g
                if (r15 == 0) goto L35
                r2.clear()
                r3.onError(r15)
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L35:
                java.lang.Object r15 = r2.poll()
                r16 = 0
                if (r15 != 0) goto L40
                r17 = 1
                goto L42
            L40:
                r17 = 0
            L42:
                if (r14 == 0) goto L4f
                if (r17 == 0) goto L4f
                r3.onComplete()
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L4f:
                if (r17 == 0) goto L52
                goto L67
            L52:
                boolean r13 = r3.h(r15)
                if (r13 == 0) goto L5b
                r13 = 1
                long r11 = r11 + r13
            L5b:
                int r1 = r1 + 1
                if (r1 != r4) goto L15
                org.reactivestreams.e r13 = r0.f75289e
                long r14 = (long) r1
                r13.request(r14)
                r1 = 0
                goto L15
            L67:
                if (r13 != 0) goto L94
                boolean r13 = r0.f75293i
                if (r13 == 0) goto L71
                r2.clear()
                return
            L71:
                boolean r13 = r0.f75290f
                if (r13 == 0) goto L94
                java.lang.Throwable r13 = r0.f75291g
                if (r13 == 0) goto L85
                r2.clear()
                r3.onError(r13)
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L85:
                boolean r13 = r2.isEmpty()
                if (r13 == 0) goto L94
                r3.onComplete()
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L94:
                int r13 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
                if (r13 == 0) goto La7
                r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r13 == 0) goto La7
                java.util.concurrent.atomic.AtomicLong r7 = r0.f75292h
                long r8 = -r11
                r7.addAndGet(r8)
            La7:
                int r7 = r18.get()
                if (r7 != r6) goto Lb7
                r0.f75294j = r1
                int r6 = -r6
                int r6 = r0.addAndGet(r6)
                if (r6 != 0) goto Lc
                return
            Lb7:
                r6 = r7
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.o.c.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes3.dex */
    public static final class d<T> extends a<T> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f75300m = 1075119423897941642L;

        /* renamed from: l  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75301l;

        d(org.reactivestreams.d<? super T> dVar, int i4, SpscArrayQueue<T> spscArrayQueue, h0.c cVar) {
            super(i4, spscArrayQueue, cVar);
            this.f75301l = dVar;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75289e, eVar)) {
                this.f75289e = eVar;
                this.f75301l.onSubscribe(this);
                eVar.request(this.f75285a);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
            if (r13 != 0) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
            if (r18.f75293i == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
            r2.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
            if (r18.f75290f == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
            r13 = r18.f75291g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0074, code lost:
            if (r13 == null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0076, code lost:
            r2.clear();
            r3.onError(r13);
            r18.f75288d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
            if (r2.isEmpty() == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
            r3.onComplete();
            r18.f75288d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0090, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
            if (r11 == 0) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x009c, code lost:
            if (r7 == Long.MAX_VALUE) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x009e, code lost:
            r18.f75292h.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00a4, code lost:
            r7 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a8, code lost:
            if (r7 != r6) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00aa, code lost:
            r18.f75294j = r1;
            r6 = addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00b1, code lost:
            if (r6 != 0) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00b3, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00b4, code lost:
            r6 = r7;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r18 = this;
                r0 = r18
                int r1 = r0.f75294j
                io.reactivex.internal.queue.SpscArrayQueue<T> r2 = r0.f75287c
                org.reactivestreams.d<? super T> r3 = r0.f75301l
                int r4 = r0.f75286b
                r5 = 1
                r6 = 1
            Lc:
                java.util.concurrent.atomic.AtomicLong r7 = r0.f75292h
                long r7 = r7.get()
                r9 = 0
                r11 = r9
            L15:
                int r13 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
                if (r13 == 0) goto L64
                boolean r14 = r0.f75293i
                if (r14 == 0) goto L21
                r2.clear()
                return
            L21:
                boolean r14 = r0.f75290f
                if (r14 == 0) goto L35
                java.lang.Throwable r15 = r0.f75291g
                if (r15 == 0) goto L35
                r2.clear()
                r3.onError(r15)
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L35:
                java.lang.Object r15 = r2.poll()
                r16 = 0
                if (r15 != 0) goto L40
                r17 = 1
                goto L42
            L40:
                r17 = 0
            L42:
                if (r14 == 0) goto L4f
                if (r17 == 0) goto L4f
                r3.onComplete()
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L4f:
                if (r17 == 0) goto L52
                goto L64
            L52:
                r3.onNext(r15)
                r13 = 1
                long r11 = r11 + r13
                int r1 = r1 + 1
                if (r1 != r4) goto L15
                org.reactivestreams.e r13 = r0.f75289e
                long r14 = (long) r1
                r13.request(r14)
                r1 = 0
                goto L15
            L64:
                if (r13 != 0) goto L91
                boolean r13 = r0.f75293i
                if (r13 == 0) goto L6e
                r2.clear()
                return
            L6e:
                boolean r13 = r0.f75290f
                if (r13 == 0) goto L91
                java.lang.Throwable r13 = r0.f75291g
                if (r13 == 0) goto L82
                r2.clear()
                r3.onError(r13)
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L82:
                boolean r13 = r2.isEmpty()
                if (r13 == 0) goto L91
                r3.onComplete()
                io.reactivex.h0$c r1 = r0.f75288d
                r1.dispose()
                return
            L91:
                int r13 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
                if (r13 == 0) goto La4
                r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r13 == 0) goto La4
                java.util.concurrent.atomic.AtomicLong r7 = r0.f75292h
                long r8 = -r11
                r7.addAndGet(r8)
            La4:
                int r7 = r18.get()
                if (r7 != r6) goto Lb4
                r0.f75294j = r1
                int r6 = -r6
                int r6 = r0.addAndGet(r6)
                if (r6 != 0) goto Lc
                return
            Lb4:
                r6 = r7
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.o.d.run():void");
        }
    }

    public o(io.reactivex.parallel.a<? extends T> aVar, h0 h0Var, int i4) {
        this.f75281a = aVar;
        this.f75282b = h0Var;
        this.f75283c = i4;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75281a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<T>[] dVarArr2 = new org.reactivestreams.d[length];
            h0 h0Var = this.f75282b;
            if (h0Var instanceof io.reactivex.internal.schedulers.k) {
                ((io.reactivex.internal.schedulers.k) h0Var).a(length, new b(dVarArr, dVarArr2));
            } else {
                for (int i4 = 0; i4 < length; i4++) {
                    V(i4, dVarArr, dVarArr2, this.f75282b.d());
                }
            }
            this.f75281a.Q(dVarArr2);
        }
    }

    void V(int i4, org.reactivestreams.d<? super T>[] dVarArr, org.reactivestreams.d<T>[] dVarArr2, h0.c cVar) {
        org.reactivestreams.d<? super T> dVar = dVarArr[i4];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f75283c);
        if (dVar instanceof o7.a) {
            dVarArr2[i4] = new c((o7.a) dVar, this.f75283c, spscArrayQueue, cVar);
        } else {
            dVarArr2[i4] = new d(dVar, this.f75283c, spscArrayQueue, cVar);
        }
    }
}
