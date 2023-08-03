package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableWindow.java */
/* loaded from: classes3.dex */
public final class s4<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final long f72654c;

    /* renamed from: d  reason: collision with root package name */
    final long f72655d;

    /* renamed from: e  reason: collision with root package name */
    final int f72656e;

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72657h = -2365647875069161133L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.j<T>> f72658a;

        /* renamed from: b  reason: collision with root package name */
        final long f72659b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f72660c;

        /* renamed from: d  reason: collision with root package name */
        final int f72661d;

        /* renamed from: e  reason: collision with root package name */
        long f72662e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f72663f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.processors.h<T> f72664g;

        a(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, int i4) {
            super(1);
            this.f72658a = dVar;
            this.f72659b = j4;
            this.f72660c = new AtomicBoolean();
            this.f72661d = i4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72660c.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            io.reactivex.processors.h<T> hVar = this.f72664g;
            if (hVar != null) {
                this.f72664g = null;
                hVar.onComplete();
            }
            this.f72658a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            io.reactivex.processors.h<T> hVar = this.f72664g;
            if (hVar != null) {
                this.f72664g = null;
                hVar.onError(th);
            }
            this.f72658a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f72662e;
            io.reactivex.processors.h<T> hVar = this.f72664g;
            if (j4 == 0) {
                getAndIncrement();
                hVar = io.reactivex.processors.h.U8(this.f72661d, this);
                this.f72664g = hVar;
                this.f72658a.onNext(hVar);
            }
            long j10 = j4 + 1;
            hVar.onNext(t9);
            if (j10 == this.f72659b) {
                this.f72662e = 0L;
                this.f72664g = null;
                hVar.onComplete();
                return;
            }
            this.f72662e = j10;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72663f, eVar)) {
                this.f72663f = eVar;
                this.f72658a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f72663f.request(io.reactivex.internal.util.b.d(this.f72659b, j4));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f72663f.cancel();
            }
        }
    }

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72665q = 2428527070996323976L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.j<T>> f72666a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<io.reactivex.processors.h<T>> f72667b;

        /* renamed from: c  reason: collision with root package name */
        final long f72668c;

        /* renamed from: d  reason: collision with root package name */
        final long f72669d;

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<io.reactivex.processors.h<T>> f72670e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f72671f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f72672g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f72673h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f72674i;

        /* renamed from: j  reason: collision with root package name */
        final int f72675j;

        /* renamed from: k  reason: collision with root package name */
        long f72676k;

        /* renamed from: l  reason: collision with root package name */
        long f72677l;

        /* renamed from: m  reason: collision with root package name */
        org.reactivestreams.e f72678m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f72679n;

        /* renamed from: o  reason: collision with root package name */
        Throwable f72680o;

        /* renamed from: p  reason: collision with root package name */
        volatile boolean f72681p;

        b(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, long j10, int i4) {
            super(1);
            this.f72666a = dVar;
            this.f72668c = j4;
            this.f72669d = j10;
            this.f72667b = new io.reactivex.internal.queue.b<>(i4);
            this.f72670e = new ArrayDeque<>();
            this.f72671f = new AtomicBoolean();
            this.f72672g = new AtomicBoolean();
            this.f72673h = new AtomicLong();
            this.f72674i = new AtomicInteger();
            this.f72675j = i4;
        }

        boolean a(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, io.reactivex.internal.queue.b<?> bVar) {
            if (this.f72681p) {
                bVar.clear();
                return true;
            } else if (z9) {
                Throwable th = this.f72680o;
                if (th != null) {
                    bVar.clear();
                    dVar.onError(th);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
            if (r10 != 0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
            if (a(r14.f72679n, r1.isEmpty(), r0, r1) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
            if (r8 == 0) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
            if (r4 == Long.MAX_VALUE) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0056, code lost:
            r14.f72673h.addAndGet(-r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x005c, code lost:
            r3 = r14.f72674i.addAndGet(-r3);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                r14 = this;
                java.util.concurrent.atomic.AtomicInteger r0 = r14.f72674i
                int r0 = r0.getAndIncrement()
                if (r0 == 0) goto L9
                return
            L9:
                org.reactivestreams.d<? super io.reactivex.j<T>> r0 = r14.f72666a
                io.reactivex.internal.queue.b<io.reactivex.processors.h<T>> r1 = r14.f72667b
                r2 = 1
                r3 = 1
            Lf:
                java.util.concurrent.atomic.AtomicLong r4 = r14.f72673h
                long r4 = r4.get()
                r6 = 0
                r8 = r6
            L18:
                int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r10 == 0) goto L3a
                boolean r11 = r14.f72679n
                java.lang.Object r12 = r1.poll()
                io.reactivex.processors.h r12 = (io.reactivex.processors.h) r12
                if (r12 != 0) goto L28
                r13 = 1
                goto L29
            L28:
                r13 = 0
            L29:
                boolean r11 = r14.a(r11, r13, r0, r1)
                if (r11 == 0) goto L30
                return
            L30:
                if (r13 == 0) goto L33
                goto L3a
            L33:
                r0.onNext(r12)
                r10 = 1
                long r8 = r8 + r10
                goto L18
            L3a:
                if (r10 != 0) goto L49
                boolean r10 = r14.f72679n
                boolean r11 = r1.isEmpty()
                boolean r10 = r14.a(r10, r11, r0, r1)
                if (r10 == 0) goto L49
                return
            L49:
                int r10 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r10 == 0) goto L5c
                r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r10 == 0) goto L5c
                java.util.concurrent.atomic.AtomicLong r4 = r14.f72673h
                long r5 = -r8
                r4.addAndGet(r5)
            L5c:
                java.util.concurrent.atomic.AtomicInteger r4 = r14.f72674i
                int r3 = -r3
                int r3 = r4.addAndGet(r3)
                if (r3 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.s4.b.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72681p = true;
            if (this.f72671f.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72679n) {
                return;
            }
            Iterator<io.reactivex.processors.h<T>> it = this.f72670e.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            this.f72670e.clear();
            this.f72679n = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72679n) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            Iterator<io.reactivex.processors.h<T>> it = this.f72670e.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.f72670e.clear();
            this.f72680o = th;
            this.f72679n = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72679n) {
                return;
            }
            long j4 = this.f72676k;
            if (j4 == 0 && !this.f72681p) {
                getAndIncrement();
                io.reactivex.processors.h<T> U8 = io.reactivex.processors.h.U8(this.f72675j, this);
                this.f72670e.offer(U8);
                this.f72667b.offer(U8);
                b();
            }
            long j10 = j4 + 1;
            Iterator<io.reactivex.processors.h<T>> it = this.f72670e.iterator();
            while (it.hasNext()) {
                it.next().onNext(t9);
            }
            long j11 = this.f72677l + 1;
            if (j11 == this.f72668c) {
                this.f72677l = j11 - this.f72669d;
                io.reactivex.processors.h<T> poll = this.f72670e.poll();
                if (poll != null) {
                    poll.onComplete();
                }
            } else {
                this.f72677l = j11;
            }
            if (j10 == this.f72669d) {
                this.f72676k = 0L;
            } else {
                this.f72676k = j10;
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72678m, eVar)) {
                this.f72678m = eVar;
                this.f72666a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72673h, j4);
                if (!this.f72672g.get() && this.f72672g.compareAndSet(false, true)) {
                    this.f72678m.request(io.reactivex.internal.util.b.c(this.f72668c, io.reactivex.internal.util.b.d(this.f72669d, j4 - 1)));
                } else {
                    this.f72678m.request(io.reactivex.internal.util.b.d(this.f72669d, j4));
                }
                b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f72678m.cancel();
            }
        }
    }

    /* compiled from: FlowableWindow.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: j  reason: collision with root package name */
        private static final long f72682j = -8792836352386833856L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.j<T>> f72683a;

        /* renamed from: b  reason: collision with root package name */
        final long f72684b;

        /* renamed from: c  reason: collision with root package name */
        final long f72685c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f72686d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f72687e;

        /* renamed from: f  reason: collision with root package name */
        final int f72688f;

        /* renamed from: g  reason: collision with root package name */
        long f72689g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f72690h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.processors.h<T> f72691i;

        c(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, long j4, long j10, int i4) {
            super(1);
            this.f72683a = dVar;
            this.f72684b = j4;
            this.f72685c = j10;
            this.f72686d = new AtomicBoolean();
            this.f72687e = new AtomicBoolean();
            this.f72688f = i4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72686d.compareAndSet(false, true)) {
                run();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            io.reactivex.processors.h<T> hVar = this.f72691i;
            if (hVar != null) {
                this.f72691i = null;
                hVar.onComplete();
            }
            this.f72683a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            io.reactivex.processors.h<T> hVar = this.f72691i;
            if (hVar != null) {
                this.f72691i = null;
                hVar.onError(th);
            }
            this.f72683a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f72689g;
            io.reactivex.processors.h<T> hVar = this.f72691i;
            if (j4 == 0) {
                getAndIncrement();
                hVar = io.reactivex.processors.h.U8(this.f72688f, this);
                this.f72691i = hVar;
                this.f72683a.onNext(hVar);
            }
            long j10 = j4 + 1;
            if (hVar != null) {
                hVar.onNext(t9);
            }
            if (j10 == this.f72684b) {
                this.f72691i = null;
                hVar.onComplete();
            }
            if (j10 == this.f72685c) {
                this.f72689g = 0L;
            } else {
                this.f72689g = j10;
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72690h, eVar)) {
                this.f72690h = eVar;
                this.f72683a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (!this.f72687e.get() && this.f72687e.compareAndSet(false, true)) {
                    this.f72690h.request(io.reactivex.internal.util.b.c(io.reactivex.internal.util.b.d(this.f72684b, j4), io.reactivex.internal.util.b.d(this.f72685c - this.f72684b, j4 - 1)));
                    return;
                }
                this.f72690h.request(io.reactivex.internal.util.b.d(this.f72685c, j4));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (decrementAndGet() == 0) {
                this.f72690h.cancel();
            }
        }
    }

    public s4(io.reactivex.j<T> jVar, long j4, long j10, int i4) {
        super(jVar);
        this.f72654c = j4;
        this.f72655d = j10;
        this.f72656e = i4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super io.reactivex.j<T>> dVar) {
        long j4 = this.f72655d;
        long j10 = this.f72654c;
        if (j4 == j10) {
            this.f71538b.j6(new a(dVar, this.f72654c, this.f72656e));
        } else if (j4 > j10) {
            this.f71538b.j6(new c(dVar, this.f72654c, this.f72655d, this.f72656e));
        } else {
            this.f71538b.j6(new b(dVar, this.f72654c, this.f72655d, this.f72656e));
        }
    }
}
