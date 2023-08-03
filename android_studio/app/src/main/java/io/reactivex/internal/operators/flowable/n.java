package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableBufferBoundary.java */
/* loaded from: classes3.dex */
public final class n<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f72317c;

    /* renamed from: d  reason: collision with root package name */
    final org.reactivestreams.c<? extends Open> f72318d;

    /* renamed from: e  reason: collision with root package name */
    final n7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> f72319e;

    /* compiled from: FlowableBufferBoundary.java */
    /* loaded from: classes3.dex */
    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72320o = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f72321a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f72322b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.c<? extends Open> f72323c;

        /* renamed from: d  reason: collision with root package name */
        final n7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> f72324d;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f72329i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72331k;

        /* renamed from: l  reason: collision with root package name */
        long f72332l;

        /* renamed from: n  reason: collision with root package name */
        long f72334n;

        /* renamed from: j  reason: collision with root package name */
        final io.reactivex.internal.queue.b<C> f72330j = new io.reactivex.internal.queue.b<>(io.reactivex.j.Y());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f72325e = new io.reactivex.disposables.b();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f72326f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72327g = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        Map<Long, C> f72333m = new LinkedHashMap();

        /* renamed from: h  reason: collision with root package name */
        final AtomicThrowable f72328h = new AtomicThrowable();

        /* compiled from: FlowableBufferBoundary.java */
        /* renamed from: io.reactivex.internal.operators.flowable.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0559a<Open> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Open>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f72335b = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f72336a;

            C0559a(a<?, ?, Open, ?> aVar) {
                this.f72336a = aVar;
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                SubscriptionHelper.cancel(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return get() == SubscriptionHelper.CANCELLED;
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f72336a.e(this);
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f72336a.a(this, th);
            }

            @Override // org.reactivestreams.d
            public void onNext(Open open) {
                this.f72336a.d(open);
            }

            @Override // io.reactivex.o, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e eVar) {
                SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super C> dVar, org.reactivestreams.c<? extends Open> cVar, n7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> oVar, Callable<C> callable) {
            this.f72321a = dVar;
            this.f72322b = callable;
            this.f72323c = cVar;
            this.f72324d = oVar;
        }

        void a(io.reactivex.disposables.c cVar, Throwable th) {
            SubscriptionHelper.cancel(this.f72327g);
            this.f72325e.c(cVar);
            onError(th);
        }

        void b(b<T, C> bVar, long j4) {
            boolean z9;
            this.f72325e.c(bVar);
            if (this.f72325e.g() == 0) {
                SubscriptionHelper.cancel(this.f72327g);
                z9 = true;
            } else {
                z9 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f72333m;
                if (map == null) {
                    return;
                }
                this.f72330j.offer(map.remove(Long.valueOf(j4)));
                if (z9) {
                    this.f72329i = true;
                }
                c();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
            if (r8 != 0) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
            if (r12.f72331k == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
            r3.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0063, code lost:
            if (r12.f72329i == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x006b, code lost:
            if (r12.f72328h.get() == null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x006d, code lost:
            r3.clear();
            r2.onError(r12.f72328h.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0079, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007e, code lost:
            if (r3.isEmpty() == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0080, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
            r12.f72334n = r0;
            r5 = addAndGet(-r5);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void c() {
            /*
                r12 = this;
                int r0 = r12.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                long r0 = r12.f72334n
                org.reactivestreams.d<? super C extends java.util.Collection<? super T>> r2 = r12.f72321a
                io.reactivex.internal.queue.b<C extends java.util.Collection<? super T>> r3 = r12.f72330j
                r4 = 1
                r5 = 1
            Lf:
                java.util.concurrent.atomic.AtomicLong r6 = r12.f72326f
                long r6 = r6.get()
            L15:
                int r8 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                if (r8 == 0) goto L57
                boolean r9 = r12.f72331k
                if (r9 == 0) goto L21
                r3.clear()
                return
            L21:
                boolean r9 = r12.f72329i
                if (r9 == 0) goto L3a
                io.reactivex.internal.util.AtomicThrowable r10 = r12.f72328h
                java.lang.Object r10 = r10.get()
                if (r10 == 0) goto L3a
                r3.clear()
                io.reactivex.internal.util.AtomicThrowable r0 = r12.f72328h
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L3a:
                java.lang.Object r10 = r3.poll()
                java.util.Collection r10 = (java.util.Collection) r10
                if (r10 != 0) goto L44
                r11 = 1
                goto L45
            L44:
                r11 = 0
            L45:
                if (r9 == 0) goto L4d
                if (r11 == 0) goto L4d
                r2.onComplete()
                return
            L4d:
                if (r11 == 0) goto L50
                goto L57
            L50:
                r2.onNext(r10)
                r8 = 1
                long r0 = r0 + r8
                goto L15
            L57:
                if (r8 != 0) goto L84
                boolean r6 = r12.f72331k
                if (r6 == 0) goto L61
                r3.clear()
                return
            L61:
                boolean r6 = r12.f72329i
                if (r6 == 0) goto L84
                io.reactivex.internal.util.AtomicThrowable r6 = r12.f72328h
                java.lang.Object r6 = r6.get()
                if (r6 == 0) goto L7a
                r3.clear()
                io.reactivex.internal.util.AtomicThrowable r0 = r12.f72328h
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L7a:
                boolean r6 = r3.isEmpty()
                if (r6 == 0) goto L84
                r2.onComplete()
                return
            L84:
                r12.f72334n = r0
                int r5 = -r5
                int r5 = r12.addAndGet(r5)
                if (r5 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.n.a.c():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (SubscriptionHelper.cancel(this.f72327g)) {
                this.f72331k = true;
                this.f72325e.dispose();
                synchronized (this) {
                    this.f72333m = null;
                }
                if (getAndIncrement() != 0) {
                    this.f72330j.clear();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.f72322b.call(), "The bufferSupplier returned a null Collection");
                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72324d.apply(open), "The bufferClose returned a null Publisher");
                long j4 = this.f72332l;
                this.f72332l = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f72333m;
                    if (map == 0) {
                        return;
                    }
                    map.put(Long.valueOf(j4), collection);
                    b bVar = new b(this, j4);
                    this.f72325e.b(bVar);
                    cVar.i(bVar);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                SubscriptionHelper.cancel(this.f72327g);
                onError(th);
            }
        }

        void e(C0559a<Open> c0559a) {
            this.f72325e.c(c0559a);
            if (this.f72325e.g() == 0) {
                SubscriptionHelper.cancel(this.f72327g);
                this.f72329i = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72325e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f72333m;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    this.f72330j.offer(c10);
                }
                this.f72333m = null;
                this.f72329i = true;
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72328h.addThrowable(th)) {
                this.f72325e.dispose();
                synchronized (this) {
                    this.f72333m = null;
                }
                this.f72329i = true;
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                Map<Long, C> map = this.f72333m;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    c10.add(t9);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72327g, eVar)) {
                C0559a c0559a = new C0559a(this);
                this.f72325e.b(c0559a);
                this.f72323c.i(c0559a);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f72326f, j4);
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableBufferBoundary.java */
    /* loaded from: classes3.dex */
    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f72337c = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f72338a;

        /* renamed from: b  reason: collision with root package name */
        final long f72339b;

        b(a<T, C, ?, ?> aVar, long j4) {
            this.f72338a = aVar;
            this.f72339b = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f72338a.b(this, this.f72339b);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f72338a.a(this, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                eVar.cancel();
                this.f72338a.b(this, this.f72339b);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public n(io.reactivex.j<T> jVar, org.reactivestreams.c<? extends Open> cVar, n7.o<? super Open, ? extends org.reactivestreams.c<? extends Close>> oVar, Callable<U> callable) {
        super(jVar);
        this.f72318d = cVar;
        this.f72319e = oVar;
        this.f72317c = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        a aVar = new a(dVar, this.f72318d, this.f72319e, this.f72317c);
        dVar.onSubscribe(aVar);
        this.f71538b.j6(aVar);
    }
}
