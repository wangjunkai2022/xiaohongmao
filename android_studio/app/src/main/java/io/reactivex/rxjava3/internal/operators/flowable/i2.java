package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableMergeWithMaybe.java */
/* loaded from: classes4.dex */
public final class i2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f77334c;

    /* compiled from: FlowableMergeWithMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77335o = -4592979584110982903L;

        /* renamed from: p  reason: collision with root package name */
        static final int f77336p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final int f77337q = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77338a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77339b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0634a<T> f77340c = new C0634a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f77341d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77342e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final int f77343f;

        /* renamed from: g  reason: collision with root package name */
        final int f77344g;

        /* renamed from: h  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<T> f77345h;

        /* renamed from: i  reason: collision with root package name */
        T f77346i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f77347j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77348k;

        /* renamed from: l  reason: collision with root package name */
        volatile int f77349l;

        /* renamed from: m  reason: collision with root package name */
        long f77350m;

        /* renamed from: n  reason: collision with root package name */
        int f77351n;

        /* compiled from: FlowableMergeWithMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.i2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0634a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77352b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f77353a;

            C0634a(a<T> parent) {
                this.f77353a = parent;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f77353a.d();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f77353a.e(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(T t9) {
                this.f77353a.i(t9);
            }
        }

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77338a = downstream;
            int V = io.reactivex.rxjava3.core.m.V();
            this.f77343f = V;
            this.f77344g = V - (V >> 2);
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x007f, code lost:
            if (r13 != 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
            if (r18.f77347j == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0085, code lost:
            r18.f77346i = null;
            r18.f77345h = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0089, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
            if (r18.f77341d.get() == null) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
            r18.f77346i = null;
            r18.f77345h = null;
            r18.f77341d.tryTerminateConsumer(r18.f77338a);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x009d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x009e, code lost:
            r6 = r18.f77348k;
            r8 = r18.f77345h;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00a2, code lost:
            if (r8 == null) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00a8, code lost:
            if (r8.isEmpty() == false) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00ab, code lost:
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00ae, code lost:
            if (r6 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00b0, code lost:
            if (r10 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00b4, code lost:
            if (r18.f77349l != 2) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b6, code lost:
            r18.f77345h = null;
            r1.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00bb, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00bc, code lost:
            r18.f77350m = r2;
            r18.f77351n = r4;
            r7 = addAndGet(-r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00c5, code lost:
            if (r7 != 0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00c7, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 203
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.i2.a.b():void");
        }

        io.reactivex.rxjava3.internal.fuseable.p<T> c() {
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f77345h;
            if (pVar == null) {
                SpscArrayQueue spscArrayQueue = new SpscArrayQueue(io.reactivex.rxjava3.core.m.V());
                this.f77345h = spscArrayQueue;
                return spscArrayQueue;
            }
            return pVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77347j = true;
            SubscriptionHelper.cancel(this.f77339b);
            DisposableHelper.dispose(this.f77340c);
            this.f77341d.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f77345h = null;
                this.f77346i = null;
            }
        }

        void d() {
            this.f77349l = 2;
            a();
        }

        void e(Throwable ex) {
            if (this.f77341d.tryAddThrowableOrReport(ex)) {
                SubscriptionHelper.cancel(this.f77339b);
                a();
            }
        }

        void i(T value) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f77350m;
                if (this.f77342e.get() != j4) {
                    this.f77350m = j4 + 1;
                    this.f77338a.onNext(value);
                    this.f77349l = 2;
                } else {
                    this.f77346i = value;
                    this.f77349l = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f77346i = value;
                this.f77349l = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77348k = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable ex) {
            if (this.f77341d.tryAddThrowableOrReport(ex)) {
                DisposableHelper.dispose(this.f77340c);
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                long j4 = this.f77350m;
                if (this.f77342e.get() != j4) {
                    io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f77345h;
                    if (pVar != null && !pVar.isEmpty()) {
                        pVar.offer(t9);
                    } else {
                        this.f77350m = j4 + 1;
                        this.f77338a.onNext(t9);
                        int i4 = this.f77351n + 1;
                        if (i4 == this.f77344g) {
                            this.f77351n = 0;
                            this.f77339b.get().request(i4);
                        } else {
                            this.f77351n = i4;
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

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this.f77339b, s9, this.f77343f);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f77342e, n9);
            a();
        }
    }

    public i2(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.b0<? extends T> other) {
        super(source);
        this.f77334c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> subscriber) {
        a aVar = new a(subscriber);
        subscriber.onSubscribe(aVar);
        this.f76811b.G6(aVar);
        this.f77334c.b(aVar.f77340c);
    }
}
