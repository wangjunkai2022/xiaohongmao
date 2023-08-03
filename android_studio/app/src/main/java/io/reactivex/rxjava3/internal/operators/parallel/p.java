package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.schedulers.k;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ParallelRunOn.java */
/* loaded from: classes4.dex */
public final class p<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f80661a;

    /* renamed from: b  reason: collision with root package name */
    final o0 f80662b;

    /* renamed from: c  reason: collision with root package name */
    final int f80663c;

    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends AtomicInteger implements r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f80664k = 9222303586456402150L;

        /* renamed from: a  reason: collision with root package name */
        final int f80665a;

        /* renamed from: b  reason: collision with root package name */
        final int f80666b;

        /* renamed from: c  reason: collision with root package name */
        final SpscArrayQueue<T> f80667c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f80668d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f80669e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f80670f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f80671g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f80672h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80673i;

        /* renamed from: j  reason: collision with root package name */
        int f80674j;

        a(int prefetch, SpscArrayQueue<T> queue, o0.c worker) {
            this.f80665a = prefetch;
            this.f80667c = queue;
            this.f80666b = prefetch - (prefetch >> 2);
            this.f80668d = worker;
        }

        final void a() {
            if (getAndIncrement() == 0) {
                this.f80668d.b(this);
            }
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            if (this.f80673i) {
                return;
            }
            this.f80673i = true;
            this.f80669e.cancel();
            this.f80668d.dispose();
            if (getAndIncrement() == 0) {
                this.f80667c.clear();
            }
        }

        @Override // org.reactivestreams.d
        public final void onComplete() {
            if (this.f80670f) {
                return;
            }
            this.f80670f = true;
            a();
        }

        @Override // org.reactivestreams.d
        public final void onError(Throwable t9) {
            if (this.f80670f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80671g = t9;
            this.f80670f = true;
            a();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f80670f) {
                return;
            }
            if (!this.f80667c.offer(t9)) {
                this.f80669e.cancel();
                onError(new MissingBackpressureException("Queue is full?!"));
                return;
            }
            a();
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f80672h, n9);
                a();
            }
        }
    }

    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes4.dex */
    final class b implements k.a {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T>[] f80675a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<T>[] f80676b;

        b(org.reactivestreams.d<? super T>[] subscribers, org.reactivestreams.d<T>[] parents) {
            this.f80675a = subscribers;
            this.f80676b = parents;
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.k.a
        public void a(int i4, o0.c w9) {
            p.this.c0(i4, this.f80675a, this.f80676b, w9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends a<T> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f80678m = 1075119423897941642L;

        /* renamed from: l  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f80679l;

        c(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, int prefetch, SpscArrayQueue<T> queue, o0.c worker) {
            super(prefetch, queue, worker);
            this.f80679l = actual;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80669e, s9)) {
                this.f80669e = s9;
                this.f80679l.onSubscribe(this);
                s9.request(this.f80665a);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
            if (r13 != 0) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
            if (r18.f80673i == false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
            r2.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
            if (r18.f80670f == false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
            r7 = r18.f80671g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
            if (r7 == null) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
            r2.clear();
            r3.onError(r7);
            r18.f80668d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0089, code lost:
            if (r2.isEmpty() == false) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
            r3.onComplete();
            r18.f80668d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0096, code lost:
            if (r11 == 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0098, code lost:
            io.reactivex.rxjava3.internal.util.b.e(r18.f80672h, r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009d, code lost:
            r18.f80674j = r1;
            r6 = addAndGet(-r6);
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
                int r1 = r0.f80674j
                io.reactivex.rxjava3.internal.queue.SpscArrayQueue<T> r2 = r0.f80667c
                io.reactivex.rxjava3.internal.fuseable.c<? super T> r3 = r0.f80679l
                int r4 = r0.f80666b
                r5 = 1
                r6 = 1
            Lc:
                java.util.concurrent.atomic.AtomicLong r7 = r0.f80672h
                long r7 = r7.get()
                r9 = 0
                r11 = r9
            L15:
                int r13 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
                if (r13 == 0) goto L67
                boolean r14 = r0.f80673i
                if (r14 == 0) goto L21
                r2.clear()
                return
            L21:
                boolean r14 = r0.f80670f
                if (r14 == 0) goto L35
                java.lang.Throwable r15 = r0.f80671g
                if (r15 == 0) goto L35
                r2.clear()
                r3.onError(r15)
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
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
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
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
                org.reactivestreams.e r13 = r0.f80669e
                long r14 = (long) r1
                r13.request(r14)
                r1 = 0
                goto L15
            L67:
                if (r13 != 0) goto L94
                boolean r7 = r0.f80673i
                if (r7 == 0) goto L71
                r2.clear()
                return
            L71:
                boolean r7 = r0.f80670f
                if (r7 == 0) goto L94
                java.lang.Throwable r7 = r0.f80671g
                if (r7 == 0) goto L85
                r2.clear()
                r3.onError(r7)
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
                r1.dispose()
                return
            L85:
                boolean r7 = r2.isEmpty()
                if (r7 == 0) goto L94
                r3.onComplete()
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
                r1.dispose()
                return
            L94:
                int r7 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
                if (r7 == 0) goto L9d
                java.util.concurrent.atomic.AtomicLong r7 = r0.f80672h
                io.reactivex.rxjava3.internal.util.b.e(r7, r11)
            L9d:
                r0.f80674j = r1
                int r6 = -r6
                int r6 = r0.addAndGet(r6)
                if (r6 != 0) goto Lc
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.p.c.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelRunOn.java */
    /* loaded from: classes4.dex */
    public static final class d<T> extends a<T> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f80680m = 1075119423897941642L;

        /* renamed from: l  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80681l;

        d(org.reactivestreams.d<? super T> actual, int prefetch, SpscArrayQueue<T> queue, o0.c worker) {
            super(prefetch, queue, worker);
            this.f80681l = actual;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80669e, s9)) {
                this.f80669e = s9;
                this.f80681l.onSubscribe(this);
                s9.request(this.f80665a);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
            if (r13 != 0) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
            if (r18.f80673i == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
            r2.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
            if (r18.f80670f == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
            r13 = r18.f80671g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0074, code lost:
            if (r13 == null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0076, code lost:
            r2.clear();
            r3.onError(r13);
            r18.f80668d.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
            if (r2.isEmpty() == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
            r3.onComplete();
            r18.f80668d.dispose();
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
            r18.f80672h.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00a4, code lost:
            r7 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a8, code lost:
            if (r7 != r6) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00aa, code lost:
            r18.f80674j = r1;
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
                int r1 = r0.f80674j
                io.reactivex.rxjava3.internal.queue.SpscArrayQueue<T> r2 = r0.f80667c
                org.reactivestreams.d<? super T> r3 = r0.f80681l
                int r4 = r0.f80666b
                r5 = 1
                r6 = 1
            Lc:
                java.util.concurrent.atomic.AtomicLong r7 = r0.f80672h
                long r7 = r7.get()
                r9 = 0
                r11 = r9
            L15:
                int r13 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
                if (r13 == 0) goto L64
                boolean r14 = r0.f80673i
                if (r14 == 0) goto L21
                r2.clear()
                return
            L21:
                boolean r14 = r0.f80670f
                if (r14 == 0) goto L35
                java.lang.Throwable r15 = r0.f80671g
                if (r15 == 0) goto L35
                r2.clear()
                r3.onError(r15)
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
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
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
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
                org.reactivestreams.e r13 = r0.f80669e
                long r14 = (long) r1
                r13.request(r14)
                r1 = 0
                goto L15
            L64:
                if (r13 != 0) goto L91
                boolean r13 = r0.f80673i
                if (r13 == 0) goto L6e
                r2.clear()
                return
            L6e:
                boolean r13 = r0.f80670f
                if (r13 == 0) goto L91
                java.lang.Throwable r13 = r0.f80671g
                if (r13 == 0) goto L82
                r2.clear()
                r3.onError(r13)
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
                r1.dispose()
                return
            L82:
                boolean r13 = r2.isEmpty()
                if (r13 == 0) goto L91
                r3.onComplete()
                io.reactivex.rxjava3.core.o0$c r1 = r0.f80668d
                r1.dispose()
                return
            L91:
                int r13 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
                if (r13 == 0) goto La4
                r9 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r13 == 0) goto La4
                java.util.concurrent.atomic.AtomicLong r7 = r0.f80672h
                long r8 = -r11
                r7.addAndGet(r8)
            La4:
                int r7 = r18.get()
                if (r7 != r6) goto Lb4
                r0.f80674j = r1
                int r6 = -r6
                int r6 = r0.addAndGet(r6)
                if (r6 != 0) goto Lc
                return
            Lb4:
                r6 = r7
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.p.d.run():void");
        }
    }

    public p(io.reactivex.rxjava3.parallel.a<? extends T> parent, o0 scheduler, int prefetch) {
        this.f80661a = parent;
        this.f80662b = scheduler;
        this.f80663c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80661a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(final org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<T>[] dVarArr = new org.reactivestreams.d[length];
            o0 o0Var = this.f80662b;
            if (o0Var instanceof io.reactivex.rxjava3.internal.schedulers.k) {
                ((io.reactivex.rxjava3.internal.schedulers.k) o0Var).a(length, new b(subscribers, dVarArr));
            } else {
                for (int i4 = 0; i4 < length; i4++) {
                    c0(i4, subscribers, dVarArr, this.f80662b.d());
                }
            }
            this.f80661a.X(dVarArr);
        }
    }

    void c0(int i4, org.reactivestreams.d<? super T>[] subscribers, org.reactivestreams.d<T>[] parents, o0.c worker) {
        org.reactivestreams.d<? super T> dVar = subscribers[i4];
        SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.f80663c);
        if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            parents[i4] = new c((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80663c, spscArrayQueue, worker);
        } else {
            parents[i4] = new d(dVar, this.f80663c, spscArrayQueue, worker);
        }
    }
}
