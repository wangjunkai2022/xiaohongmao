package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.BackpressureOverflowStrategy;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureBufferStrategy.java */
/* loaded from: classes4.dex */
public final class n2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77617c;

    /* renamed from: d  reason: collision with root package name */
    final q7.a f77618d;

    /* renamed from: e  reason: collision with root package name */
    final BackpressureOverflowStrategy f77619e;

    /* compiled from: FlowableOnBackpressureBufferStrategy.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f77620a;

        static {
            int[] iArr = new int[BackpressureOverflowStrategy.values().length];
            f77620a = iArr;
            try {
                iArr[BackpressureOverflowStrategy.DROP_LATEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f77620a[BackpressureOverflowStrategy.DROP_OLDEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: FlowableOnBackpressureBufferStrategy.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: k  reason: collision with root package name */
        private static final long f77621k = 3240706908776709697L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77622a;

        /* renamed from: b  reason: collision with root package name */
        final q7.a f77623b;

        /* renamed from: c  reason: collision with root package name */
        final BackpressureOverflowStrategy f77624c;

        /* renamed from: d  reason: collision with root package name */
        final long f77625d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77626e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final Deque<T> f77627f = new ArrayDeque();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f77628g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f77629h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f77630i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f77631j;

        b(org.reactivestreams.d<? super T> actual, q7.a onOverflow, BackpressureOverflowStrategy strategy, long bufferSize) {
            this.f77622a = actual;
            this.f77623b = onOverflow;
            this.f77624c = strategy;
            this.f77625d = bufferSize;
        }

        void a(Deque<T> dq) {
            synchronized (dq) {
                dq.clear();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x004f, code lost:
            if (r10 != 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
            if (r14.f77629h == false) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0055, code lost:
            a(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0058, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0059, code lost:
            r4 = r14.f77630i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x005b, code lost:
            monitor-enter(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x005c, code lost:
            r5 = r0.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0060, code lost:
            monitor-exit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0061, code lost:
            if (r4 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0063, code lost:
            r4 = r14.f77631j;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0065, code lost:
            if (r4 == null) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0067, code lost:
            a(r0);
            r1.onError(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x006d, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x006e, code lost:
            if (r5 == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0070, code lost:
            r1.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0073, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0079, code lost:
            if (r8 == 0) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x007b, code lost:
            io.reactivex.rxjava3.internal.util.b.e(r14.f77626e, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0080, code lost:
            r3 = addAndGet(-r3);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                r14 = this;
                int r0 = r14.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                java.util.Deque<T> r0 = r14.f77627f
                org.reactivestreams.d<? super T> r1 = r14.f77622a
                r2 = 1
                r3 = 1
            Ld:
                java.util.concurrent.atomic.AtomicLong r4 = r14.f77626e
                long r4 = r4.get()
                r6 = 0
                r8 = r6
            L16:
                int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r10 == 0) goto L4f
                boolean r11 = r14.f77629h
                if (r11 == 0) goto L22
                r14.a(r0)
                return
            L22:
                boolean r11 = r14.f77630i
                monitor-enter(r0)
                java.lang.Object r12 = r0.poll()     // Catch: java.lang.Throwable -> L4c
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L4c
                if (r12 != 0) goto L2e
                r13 = 1
                goto L2f
            L2e:
                r13 = 0
            L2f:
                if (r11 == 0) goto L42
                java.lang.Throwable r11 = r14.f77631j
                if (r11 == 0) goto L3c
                r14.a(r0)
                r1.onError(r11)
                return
            L3c:
                if (r13 == 0) goto L42
                r1.onComplete()
                return
            L42:
                if (r13 == 0) goto L45
                goto L4f
            L45:
                r1.onNext(r12)
                r10 = 1
                long r8 = r8 + r10
                goto L16
            L4c:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L4c
                throw r1
            L4f:
                if (r10 != 0) goto L77
                boolean r4 = r14.f77629h
                if (r4 == 0) goto L59
                r14.a(r0)
                return
            L59:
                boolean r4 = r14.f77630i
                monitor-enter(r0)
                boolean r5 = r0.isEmpty()     // Catch: java.lang.Throwable -> L74
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L74
                if (r4 == 0) goto L77
                java.lang.Throwable r4 = r14.f77631j
                if (r4 == 0) goto L6e
                r14.a(r0)
                r1.onError(r4)
                return
            L6e:
                if (r5 == 0) goto L77
                r1.onComplete()
                return
            L74:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L74
                throw r1
            L77:
                int r4 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r4 == 0) goto L80
                java.util.concurrent.atomic.AtomicLong r4 = r14.f77626e
                io.reactivex.rxjava3.internal.util.b.e(r4, r8)
            L80:
                int r3 = -r3
                int r3 = r14.addAndGet(r3)
                if (r3 != 0) goto Ld
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.n2.b.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77629h = true;
            this.f77628g.cancel();
            if (getAndIncrement() == 0) {
                a(this.f77627f);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77630i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77630i) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77631j = t9;
            this.f77630i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            boolean z9;
            boolean z10;
            if (this.f77630i) {
                return;
            }
            Deque<T> deque = this.f77627f;
            synchronized (deque) {
                z9 = false;
                z10 = true;
                if (deque.size() == this.f77625d) {
                    int i4 = a.f77620a[this.f77624c.ordinal()];
                    if (i4 == 1) {
                        deque.pollLast();
                        deque.offer(t9);
                    } else if (i4 == 2) {
                        deque.poll();
                        deque.offer(t9);
                    }
                    z9 = true;
                } else {
                    deque.offer(t9);
                }
                z10 = false;
            }
            if (!z9) {
                if (z10) {
                    this.f77628g.cancel();
                    onError(new MissingBackpressureException());
                    return;
                }
                b();
                return;
            }
            q7.a aVar = this.f77623b;
            if (aVar != null) {
                try {
                    aVar.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f77628g.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77628g, s9)) {
                this.f77628g = s9;
                this.f77622a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77626e, n9);
                b();
            }
        }
    }

    public n2(io.reactivex.rxjava3.core.m<T> source, long bufferSize, q7.a onOverflow, BackpressureOverflowStrategy strategy) {
        super(source);
        this.f77617c = bufferSize;
        this.f77618d = onOverflow;
        this.f77619e = strategy;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new b(s9, this.f77618d, this.f77619e, this.f77617c));
    }
}
