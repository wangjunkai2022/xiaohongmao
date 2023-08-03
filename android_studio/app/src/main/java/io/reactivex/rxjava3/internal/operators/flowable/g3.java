package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscribers.SubscriberResourceWrapper;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableReplay.java */
/* loaded from: classes4.dex */
public final class g3<T> extends io.reactivex.rxjava3.flowables.a<T> implements io.reactivex.rxjava3.internal.fuseable.j<T> {

    /* renamed from: f  reason: collision with root package name */
    static final q7.s f77199f = new b();

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77200b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<i<T>> f77201c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<? extends f<T>> f77202d;

    /* renamed from: e  reason: collision with root package name */
    final org.reactivestreams.c<T> f77203e;

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends AtomicReference<e> implements f<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77204e = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        final boolean f77205a;

        /* renamed from: b  reason: collision with root package name */
        e f77206b;

        /* renamed from: c  reason: collision with root package name */
        int f77207c;

        /* renamed from: d  reason: collision with root package name */
        long f77208d;

        a(boolean eagerTruncate) {
            this.f77205a = eagerTruncate;
            e eVar = new e(null, 0L);
            this.f77206b = eVar;
            set(eVar);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public final void a(Throwable e4) {
            Object h4 = h(NotificationLite.error(e4), true);
            long j4 = this.f77208d + 1;
            this.f77208d = j4;
            d(new e(h4, j4));
            r();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public final void b(T value) {
            Object h4 = h(NotificationLite.next(value), false);
            long j4 = this.f77208d + 1;
            this.f77208d = j4;
            d(new e(h4, j4));
            q();
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x0082, code lost:
            if (r11 != 0) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
            if (r14.isDisposed() == false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x008a, code lost:
            r14.f77213c = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
            if (r8 == 0) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
            r14.f77213c = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0093, code lost:
            if (r4 != false) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
            r14.b(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0098, code lost:
            monitor-enter(r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x009b, code lost:
            if (r14.f77216f != false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x009d, code lost:
            r14.f77215e = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x009f, code lost:
            monitor-exit(r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00a0, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a1, code lost:
            r14.f77216f = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00a3, code lost:
            monitor-exit(r14);
         */
        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void c(io.reactivex.rxjava3.internal.operators.flowable.g3.c<T> r14) {
            /*
                r13 = this;
                monitor-enter(r14)
                boolean r0 = r14.f77215e     // Catch: java.lang.Throwable -> La9
                r1 = 1
                if (r0 == 0) goto La
                r14.f77216f = r1     // Catch: java.lang.Throwable -> La9
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La9
                return
            La:
                r14.f77215e = r1     // Catch: java.lang.Throwable -> La9
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La9
            Ld:
                long r2 = r14.get()
                r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r0 = 0
                int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r6 != 0) goto L1d
                r4 = 1
                goto L1e
            L1d:
                r4 = 0
            L1e:
                java.lang.Object r5 = r14.a()
                io.reactivex.rxjava3.internal.operators.flowable.g3$e r5 = (io.reactivex.rxjava3.internal.operators.flowable.g3.e) r5
                r6 = 0
                if (r5 != 0) goto L35
                io.reactivex.rxjava3.internal.operators.flowable.g3$e r5 = r13.i()
                r14.f77213c = r5
                java.util.concurrent.atomic.AtomicLong r8 = r14.f77214d
                long r9 = r5.f77223b
                io.reactivex.rxjava3.internal.util.b.a(r8, r9)
            L35:
                r8 = r6
            L36:
                r10 = 0
                int r11 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
                if (r11 == 0) goto L82
                boolean r12 = r14.isDisposed()
                if (r12 == 0) goto L44
                r14.f77213c = r10
                return
            L44:
                java.lang.Object r12 = r5.get()
                io.reactivex.rxjava3.internal.operators.flowable.g3$e r12 = (io.reactivex.rxjava3.internal.operators.flowable.g3.e) r12
                if (r12 == 0) goto L82
                java.lang.Object r5 = r12.f77222a
                java.lang.Object r5 = r13.l(r5)
                org.reactivestreams.d<? super T> r11 = r14.f77212b     // Catch: java.lang.Throwable -> L63
                boolean r11 = io.reactivex.rxjava3.internal.util.NotificationLite.accept(r5, r11)     // Catch: java.lang.Throwable -> L63
                if (r11 == 0) goto L5d
                r14.f77213c = r10     // Catch: java.lang.Throwable -> L63
                return
            L5d:
                r10 = 1
                long r8 = r8 + r10
                long r2 = r2 - r10
                r5 = r12
                goto L36
            L63:
                r0 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r0)
                r14.f77213c = r10
                r14.dispose()
                boolean r1 = io.reactivex.rxjava3.internal.util.NotificationLite.isError(r5)
                if (r1 != 0) goto L7e
                boolean r1 = io.reactivex.rxjava3.internal.util.NotificationLite.isComplete(r5)
                if (r1 != 0) goto L7e
                org.reactivestreams.d<? super T> r14 = r14.f77212b
                r14.onError(r0)
                goto L81
            L7e:
                io.reactivex.rxjava3.plugins.a.Y(r0)
            L81:
                return
            L82:
                if (r11 != 0) goto L8d
                boolean r2 = r14.isDisposed()
                if (r2 == 0) goto L8d
                r14.f77213c = r10
                return
            L8d:
                int r2 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r2 == 0) goto L98
                r14.f77213c = r5
                if (r4 != 0) goto L98
                r14.b(r8)
            L98:
                monitor-enter(r14)
                boolean r2 = r14.f77216f     // Catch: java.lang.Throwable -> La6
                if (r2 != 0) goto La1
                r14.f77215e = r0     // Catch: java.lang.Throwable -> La6
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La6
                return
            La1:
                r14.f77216f = r0     // Catch: java.lang.Throwable -> La6
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La6
                goto Ld
            La6:
                r0 = move-exception
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La6
                throw r0
            La9:
                r0 = move-exception
                monitor-exit(r14)     // Catch: java.lang.Throwable -> La9
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.g3.a.c(io.reactivex.rxjava3.internal.operators.flowable.g3$c):void");
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public final void complete() {
            Object h4 = h(NotificationLite.complete(), true);
            long j4 = this.f77208d + 1;
            this.f77208d = j4;
            d(new e(h4, j4));
            r();
        }

        final void d(e n9) {
            this.f77206b.set(n9);
            this.f77206b = n9;
            this.f77207c++;
        }

        final void e(Collection<? super T> output) {
            e i4 = i();
            while (true) {
                i4 = i4.get();
                if (i4 == null) {
                    return;
                }
                Object l10 = l(i4.f77222a);
                if (NotificationLite.isComplete(l10) || NotificationLite.isError(l10)) {
                    return;
                }
                output.add((Object) NotificationLite.getValue(l10));
            }
        }

        Object h(Object value, boolean terminal) {
            return value;
        }

        e i() {
            return get();
        }

        boolean j() {
            Object obj = this.f77206b.f77222a;
            return obj != null && NotificationLite.isComplete(l(obj));
        }

        boolean k() {
            Object obj = this.f77206b.f77222a;
            return obj != null && NotificationLite.isError(l(obj));
        }

        Object l(Object value) {
            return value;
        }

        final void m() {
            e eVar = get().get();
            if (eVar != null) {
                this.f77207c--;
                o(eVar);
                return;
            }
            throw new IllegalStateException("Empty list!");
        }

        final void n(int n9) {
            e eVar = get();
            while (n9 > 0) {
                eVar = eVar.get();
                n9--;
                this.f77207c--;
            }
            o(eVar);
            e eVar2 = get();
            if (eVar2.get() == null) {
                this.f77206b = eVar2;
            }
        }

        final void o(e n9) {
            if (this.f77205a) {
                e eVar = new e(null, n9.f77223b);
                eVar.lazySet(n9.get());
                n9 = eVar;
            }
            set(n9);
        }

        final void p() {
            e eVar = get();
            if (eVar.f77222a != null) {
                e eVar2 = new e(null, 0L);
                eVar2.lazySet(eVar.get());
                set(eVar2);
            }
        }

        abstract void q();

        void r() {
            p();
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    static final class b implements q7.s<Object> {
        b() {
        }

        @Override // q7.s
        public Object get() {
            return new m(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicLong implements org.reactivestreams.e, io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77209g = -4453897557930727610L;

        /* renamed from: h  reason: collision with root package name */
        static final long f77210h = Long.MIN_VALUE;

        /* renamed from: a  reason: collision with root package name */
        final i<T> f77211a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77212b;

        /* renamed from: c  reason: collision with root package name */
        Object f77213c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f77214d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        boolean f77215e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77216f;

        c(i<T> parent, org.reactivestreams.d<? super T> child) {
            this.f77211a = parent;
            this.f77212b = child;
        }

        <U> U a() {
            return (U) this.f77213c;
        }

        public long b(long n9) {
            return io.reactivex.rxjava3.internal.util.b.f(this, n9);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f77211a.c(this);
                this.f77211a.b();
                this.f77213c = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (!SubscriptionHelper.validate(n9) || io.reactivex.rxjava3.internal.util.b.b(this, n9) == Long.MIN_VALUE) {
                return;
            }
            io.reactivex.rxjava3.internal.util.b.a(this.f77214d, n9);
            this.f77211a.b();
            this.f77211a.f77231a.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class d<R, U> extends io.reactivex.rxjava3.core.m<R> {

        /* renamed from: b  reason: collision with root package name */
        private final q7.s<? extends io.reactivex.rxjava3.flowables.a<U>> f77217b;

        /* renamed from: c  reason: collision with root package name */
        private final q7.o<? super io.reactivex.rxjava3.core.m<U>, ? extends org.reactivestreams.c<R>> f77218c;

        /* compiled from: FlowableReplay.java */
        /* loaded from: classes4.dex */
        final class a implements q7.g<io.reactivex.rxjava3.disposables.f> {

            /* renamed from: a  reason: collision with root package name */
            private final SubscriberResourceWrapper<R> f77219a;

            a(SubscriberResourceWrapper<R> srw) {
                this.f77219a = srw;
            }

            @Override // q7.g
            /* renamed from: a */
            public void accept(io.reactivex.rxjava3.disposables.f r9) {
                this.f77219a.setResource(r9);
            }
        }

        d(q7.s<? extends io.reactivex.rxjava3.flowables.a<U>> connectableFactory, q7.o<? super io.reactivex.rxjava3.core.m<U>, ? extends org.reactivestreams.c<R>> selector) {
            this.f77217b = connectableFactory;
            this.f77218c = selector;
        }

        @Override // io.reactivex.rxjava3.core.m
        protected void H6(org.reactivestreams.d<? super R> child) {
            try {
                io.reactivex.rxjava3.flowables.a aVar = (io.reactivex.rxjava3.flowables.a) io.reactivex.rxjava3.internal.util.g.d(this.f77217b.get(), "The connectableFactory returned a null ConnectableFlowable.");
                try {
                    org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.rxjava3.internal.util.g.d(this.f77218c.apply(aVar), "The selector returned a null Publisher.");
                    SubscriberResourceWrapper subscriberResourceWrapper = new SubscriberResourceWrapper(child);
                    cVar.i(subscriberResourceWrapper);
                    aVar.k9(new a(subscriberResourceWrapper));
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    EmptySubscription.error(th, child);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                EmptySubscription.error(th2, child);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class e extends AtomicReference<e> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77221c = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f77222a;

        /* renamed from: b  reason: collision with root package name */
        final long f77223b;

        e(Object value, long index) {
            this.f77222a = value;
            this.f77223b = index;
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    interface f<T> {
        void a(Throwable e4);

        void b(T value);

        void c(c<T> output);

        void complete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class g<T> implements q7.s<f<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f77224a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f77225b;

        g(int bufferSize, boolean eagerTruncate) {
            this.f77224a = bufferSize;
            this.f77225b = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public f<T> get() {
            return new l(this.f77224a, this.f77225b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class h<T> implements org.reactivestreams.c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<i<T>> f77226a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.s<? extends f<T>> f77227b;

        h(AtomicReference<i<T>> curr, q7.s<? extends f<T>> bufferFactory) {
            this.f77226a = curr;
            this.f77227b = bufferFactory;
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> child) {
            i<T> iVar;
            while (true) {
                iVar = this.f77226a.get();
                if (iVar != null) {
                    break;
                }
                try {
                    i<T> iVar2 = new i<>(this.f77227b.get(), this.f77226a);
                    if (this.f77226a.compareAndSet(null, iVar2)) {
                        iVar = iVar2;
                        break;
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    EmptySubscription.error(th, child);
                    return;
                }
            }
            c<T> cVar = new c<>(iVar, child);
            child.onSubscribe(cVar);
            iVar.a(cVar);
            if (cVar.isDisposed()) {
                iVar.c(cVar);
                return;
            }
            iVar.b();
            iVar.f77231a.c(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class i<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77228h = 7224554242710036740L;

        /* renamed from: i  reason: collision with root package name */
        static final c[] f77229i = new c[0];

        /* renamed from: j  reason: collision with root package name */
        static final c[] f77230j = new c[0];

        /* renamed from: a  reason: collision with root package name */
        final f<T> f77231a;

        /* renamed from: b  reason: collision with root package name */
        boolean f77232b;

        /* renamed from: f  reason: collision with root package name */
        long f77236f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<i<T>> f77237g;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f77235e = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<c<T>[]> f77233c = new AtomicReference<>(f77229i);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f77234d = new AtomicBoolean();

        i(f<T> buffer, AtomicReference<i<T>> current) {
            this.f77231a = buffer;
            this.f77237g = current;
        }

        boolean a(c<T> producer) {
            c<T>[] cVarArr;
            c<T>[] cVarArr2;
            do {
                cVarArr = this.f77233c.get();
                if (cVarArr == f77230j) {
                    return false;
                }
                int length = cVarArr.length;
                cVarArr2 = new c[length + 1];
                System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
                cVarArr2[length] = producer;
            } while (!this.f77233c.compareAndSet(cVarArr, cVarArr2));
            return true;
        }

        void b() {
            AtomicInteger atomicInteger = this.f77235e;
            if (atomicInteger.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            while (!isDisposed()) {
                org.reactivestreams.e eVar = get();
                if (eVar != null) {
                    long j4 = this.f77236f;
                    long j10 = j4;
                    for (c<T> cVar : this.f77233c.get()) {
                        j10 = Math.max(j10, cVar.f77214d.get());
                    }
                    long j11 = j10 - j4;
                    if (j11 != 0) {
                        this.f77236f = j10;
                        eVar.request(j11);
                    }
                }
                i4 = atomicInteger.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void c(c<T> p9) {
            c<T>[] cVarArr;
            c[] cVarArr2;
            do {
                cVarArr = this.f77233c.get();
                int length = cVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (cVarArr[i10].equals(p9)) {
                        i4 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i4 < 0) {
                    return;
                }
                if (length == 1) {
                    cVarArr2 = f77229i;
                } else {
                    c[] cVarArr3 = new c[length - 1];
                    System.arraycopy(cVarArr, 0, cVarArr3, 0, i4);
                    System.arraycopy(cVarArr, i4 + 1, cVarArr3, i4, (length - i4) - 1);
                    cVarArr2 = cVarArr3;
                }
            } while (!this.f77233c.compareAndSet(cVarArr, cVarArr2));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77233c.set(f77230j);
            this.f77237g.compareAndSet(this, null);
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77233c.get() == f77230j;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77232b) {
                return;
            }
            this.f77232b = true;
            this.f77231a.complete();
            for (c<T> cVar : this.f77233c.getAndSet(f77230j)) {
                this.f77231a.c(cVar);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            if (!this.f77232b) {
                this.f77232b = true;
                this.f77231a.a(e4);
                for (c<T> cVar : this.f77233c.getAndSet(f77230j)) {
                    this.f77231a.c(cVar);
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77232b) {
                return;
            }
            this.f77231a.b(t9);
            for (c<T> cVar : this.f77233c.get()) {
                this.f77231a.c(cVar);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e p9) {
            if (SubscriptionHelper.setOnce(this, p9)) {
                b();
                for (c<T> cVar : this.f77233c.get()) {
                    this.f77231a.c(cVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class j<T> implements q7.s<f<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f77238a;

        /* renamed from: b  reason: collision with root package name */
        private final long f77239b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f77240c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.o0 f77241d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f77242e;

        j(int bufferSize, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            this.f77238a = bufferSize;
            this.f77239b = maxAge;
            this.f77240c = unit;
            this.f77241d = scheduler;
            this.f77242e = eagerTruncate;
        }

        @Override // q7.s
        /* renamed from: a */
        public f<T> get() {
            return new k(this.f77238a, this.f77239b, this.f77240c, this.f77241d, this.f77242e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class k<T> extends a<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f77243j = 3457957419649567404L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f77244f;

        /* renamed from: g  reason: collision with root package name */
        final long f77245g;

        /* renamed from: h  reason: collision with root package name */
        final TimeUnit f77246h;

        /* renamed from: i  reason: collision with root package name */
        final int f77247i;

        k(int limit, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
            super(eagerTruncate);
            this.f77244f = scheduler;
            this.f77247i = limit;
            this.f77245g = maxAge;
            this.f77246h = unit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        Object h(Object value, boolean terminal) {
            return new io.reactivex.rxjava3.schedulers.d(value, terminal ? Long.MAX_VALUE : this.f77244f.e(this.f77246h), this.f77246h);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        e i() {
            e eVar;
            long e4 = this.f77244f.e(this.f77246h) - this.f77245g;
            e eVar2 = get();
            e eVar3 = eVar2.get();
            while (true) {
                e eVar4 = eVar3;
                eVar = eVar2;
                eVar2 = eVar4;
                if (eVar2 != null) {
                    io.reactivex.rxjava3.schedulers.d dVar = (io.reactivex.rxjava3.schedulers.d) eVar2.f77222a;
                    if (NotificationLite.isComplete(dVar.d()) || NotificationLite.isError(dVar.d()) || dVar.a() > e4) {
                        break;
                    }
                    eVar3 = eVar2.get();
                } else {
                    break;
                }
            }
            return eVar;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        Object l(Object value) {
            return ((io.reactivex.rxjava3.schedulers.d) value).d();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        void q() {
            e eVar;
            long e4 = this.f77244f.e(this.f77246h) - this.f77245g;
            e eVar2 = get();
            e eVar3 = eVar2.get();
            int i4 = 0;
            while (true) {
                e eVar4 = eVar3;
                eVar = eVar2;
                eVar2 = eVar4;
                int i10 = this.f77207c;
                if (i10 > 1) {
                    if (i10 > this.f77247i) {
                        i4++;
                        this.f77207c = i10 - 1;
                        eVar3 = eVar2.get();
                    } else if (((io.reactivex.rxjava3.schedulers.d) eVar2.f77222a).a() > e4) {
                        break;
                    } else {
                        i4++;
                        this.f77207c--;
                        eVar3 = eVar2.get();
                    }
                } else {
                    break;
                }
            }
            if (i4 != 0) {
                o(eVar);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        void r() {
            e eVar;
            long e4 = this.f77244f.e(this.f77246h) - this.f77245g;
            e eVar2 = get();
            e eVar3 = eVar2.get();
            int i4 = 0;
            while (true) {
                e eVar4 = eVar3;
                eVar = eVar2;
                eVar2 = eVar4;
                if (this.f77207c <= 1 || ((io.reactivex.rxjava3.schedulers.d) eVar2.f77222a).a() > e4) {
                    break;
                }
                i4++;
                this.f77207c--;
                eVar3 = eVar2.get();
            }
            if (i4 != 0) {
                o(eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    public static final class l<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77248g = -5898283885385201806L;

        /* renamed from: f  reason: collision with root package name */
        final int f77249f;

        l(int limit, boolean eagerTruncate) {
            super(eagerTruncate);
            this.f77249f = limit;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.a
        void q() {
            if (this.f77207c > this.f77249f) {
                m();
            }
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes4.dex */
    static final class m<T> extends ArrayList<Object> implements f<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f77250b = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f77251a;

        m(int capacityHint) {
            super(capacityHint);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public void a(Throwable e4) {
            add(NotificationLite.error(e4));
            this.f77251a++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public void b(T value) {
            add(NotificationLite.next(value));
            this.f77251a++;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public void c(c<T> output) {
            synchronized (output) {
                if (output.f77215e) {
                    output.f77216f = true;
                    return;
                }
                output.f77215e = true;
                org.reactivestreams.d<? super T> dVar = output.f77212b;
                while (!output.isDisposed()) {
                    int i4 = this.f77251a;
                    Integer num = (Integer) output.a();
                    int intValue = num != null ? num.intValue() : 0;
                    long j4 = output.get();
                    long j10 = j4;
                    long j11 = 0;
                    while (j10 != 0 && intValue < i4) {
                        Object obj = get(intValue);
                        try {
                            if (NotificationLite.accept(obj, dVar) || output.isDisposed()) {
                                return;
                            }
                            intValue++;
                            j10--;
                            j11++;
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            output.dispose();
                            if (!NotificationLite.isError(obj) && !NotificationLite.isComplete(obj)) {
                                dVar.onError(th);
                                return;
                            } else {
                                io.reactivex.rxjava3.plugins.a.Y(th);
                                return;
                            }
                        }
                    }
                    if (j11 != 0) {
                        output.f77213c = Integer.valueOf(intValue);
                        if (j4 != Long.MAX_VALUE) {
                            output.b(j11);
                        }
                    }
                    synchronized (output) {
                        if (!output.f77216f) {
                            output.f77215e = false;
                            return;
                        }
                        output.f77216f = false;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.g3.f
        public void complete() {
            add(NotificationLite.complete());
            this.f77251a++;
        }
    }

    private g3(org.reactivestreams.c<T> onSubscribe, io.reactivex.rxjava3.core.m<T> source, final AtomicReference<i<T>> current, final q7.s<? extends f<T>> bufferFactory) {
        this.f77203e = onSubscribe;
        this.f77200b = source;
        this.f77201c = current;
        this.f77202d = bufferFactory;
    }

    public static <T> io.reactivex.rxjava3.flowables.a<T> s9(io.reactivex.rxjava3.core.m<T> source, final int bufferSize, boolean eagerTruncate) {
        if (bufferSize == Integer.MAX_VALUE) {
            return w9(source);
        }
        return v9(source, new g(bufferSize, eagerTruncate));
    }

    public static <T> io.reactivex.rxjava3.flowables.a<T> t9(io.reactivex.rxjava3.core.m<T> source, final long maxAge, final TimeUnit unit, final io.reactivex.rxjava3.core.o0 scheduler, final int bufferSize, boolean eagerTruncate) {
        return v9(source, new j(bufferSize, maxAge, unit, scheduler, eagerTruncate));
    }

    public static <T> io.reactivex.rxjava3.flowables.a<T> u9(io.reactivex.rxjava3.core.m<T> source, long maxAge, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean eagerTruncate) {
        return t9(source, maxAge, unit, scheduler, Integer.MAX_VALUE, eagerTruncate);
    }

    static <T> io.reactivex.rxjava3.flowables.a<T> v9(io.reactivex.rxjava3.core.m<T> source, final q7.s<? extends f<T>> bufferFactory) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.rxjava3.plugins.a.T(new g3(new h(atomicReference, bufferFactory), source, atomicReference, bufferFactory));
    }

    public static <T> io.reactivex.rxjava3.flowables.a<T> w9(io.reactivex.rxjava3.core.m<? extends T> source) {
        return v9(source, f77199f);
    }

    public static <U, R> io.reactivex.rxjava3.core.m<R> x9(final q7.s<? extends io.reactivex.rxjava3.flowables.a<U>> connectableFactory, final q7.o<? super io.reactivex.rxjava3.core.m<U>, ? extends org.reactivestreams.c<R>> selector) {
        return new d(connectableFactory, selector);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f77203e.i(s9);
    }

    @Override // io.reactivex.rxjava3.flowables.a
    public void k9(q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        i<T> iVar;
        while (true) {
            iVar = this.f77201c.get();
            if (iVar != null && !iVar.isDisposed()) {
                break;
            }
            try {
                i<T> iVar2 = new i<>(this.f77202d.get(), this.f77201c);
                if (this.f77201c.compareAndSet(iVar, iVar2)) {
                    iVar = iVar2;
                    break;
                }
            } finally {
                io.reactivex.rxjava3.exceptions.a.b(th);
                RuntimeException i4 = io.reactivex.rxjava3.internal.util.g.i(th);
            }
        }
        boolean z9 = !iVar.f77234d.get() && iVar.f77234d.compareAndSet(false, true);
        try {
            connection.accept(iVar);
            if (z9) {
                this.f77200b.G6(iVar);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (z9) {
                iVar.f77234d.compareAndSet(true, false);
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // io.reactivex.rxjava3.flowables.a
    public void r9() {
        i<T> iVar = this.f77201c.get();
        if (iVar == null || !iVar.isDisposed()) {
            return;
        }
        this.f77201c.compareAndSet(iVar, null);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.j
    public org.reactivestreams.c<T> source() {
        return this.f77200b;
    }
}
