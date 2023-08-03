package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MaybeMergeArray.java */
/* loaded from: classes3.dex */
public final class w0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f73491b;

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends ConcurrentLinkedQueue<T> implements d<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73492c = -4025173261791142821L;

        /* renamed from: a  reason: collision with root package name */
        int f73493a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f73494b = new AtomicInteger();

        a() {
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public void c() {
            poll();
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public int d() {
            return this.f73493a;
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public int e() {
            return this.f73494b.get();
        }

        @Override // o7.o
        public boolean offer(T t9, T t10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.internal.operators.maybe.w0.d, o7.o
        @m7.f
        public T poll() {
            T t9 = (T) super.poll();
            if (t9 != null) {
                this.f73493a++;
            }
            return t9;
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, o7.o
        public boolean offer(T t9) {
            this.f73494b.getAndIncrement();
            return super.offer(t9);
        }
    }

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends BasicIntQueueSubscription<T> implements io.reactivex.t<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f73495k = -660395290758764731L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73496b;

        /* renamed from: e  reason: collision with root package name */
        final d<Object> f73499e;

        /* renamed from: g  reason: collision with root package name */
        final int f73501g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73502h;

        /* renamed from: i  reason: collision with root package name */
        boolean f73503i;

        /* renamed from: j  reason: collision with root package name */
        long f73504j;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f73497c = new io.reactivex.disposables.b();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73498d = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f73500f = new AtomicThrowable();

        b(org.reactivestreams.d<? super T> dVar, int i4, d<Object> dVar2) {
            this.f73496b = dVar;
            this.f73501g = i4;
            this.f73499e = dVar2;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f73503i) {
                j();
            } else {
                k();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f73502h) {
                return;
            }
            this.f73502h = true;
            this.f73497c.dispose();
            if (getAndIncrement() == 0) {
                this.f73499e.clear();
            }
        }

        @Override // o7.o
        public void clear() {
            this.f73499e.clear();
        }

        boolean isCancelled() {
            return this.f73502h;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73499e.isEmpty();
        }

        void j() {
            org.reactivestreams.d<? super T> dVar = this.f73496b;
            d<Object> dVar2 = this.f73499e;
            int i4 = 1;
            while (!this.f73502h) {
                Throwable th = this.f73500f.get();
                if (th != null) {
                    dVar2.clear();
                    dVar.onError(th);
                    return;
                }
                boolean z9 = dVar2.e() == this.f73501g;
                if (!dVar2.isEmpty()) {
                    dVar.onNext(null);
                }
                if (z9) {
                    dVar.onComplete();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            dVar2.clear();
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x004e, code lost:
            if (r7 != 0) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0058, code lost:
            if (r10.f73500f.get() == null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x005a, code lost:
            r1.clear();
            r0.onError(r10.f73500f.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
            if (r1.peek() != io.reactivex.internal.util.NotificationLite.COMPLETE) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x006f, code lost:
            r1.c();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
            if (r1.d() != r10.f73501g) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
            r10.f73504j = r2;
            r4 = addAndGet(-r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void k() {
            /*
                r10 = this;
                org.reactivestreams.d<? super T> r0 = r10.f73496b
                io.reactivex.internal.operators.maybe.w0$d<java.lang.Object> r1 = r10.f73499e
                long r2 = r10.f73504j
                r4 = 1
            L7:
                java.util.concurrent.atomic.AtomicLong r5 = r10.f73498d
                long r5 = r5.get()
            Ld:
                int r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
                if (r7 == 0) goto L4e
                boolean r8 = r10.f73502h
                if (r8 == 0) goto L19
                r1.clear()
                return
            L19:
                io.reactivex.internal.util.AtomicThrowable r8 = r10.f73500f
                java.lang.Object r8 = r8.get()
                java.lang.Throwable r8 = (java.lang.Throwable) r8
                if (r8 == 0) goto L30
                r1.clear()
                io.reactivex.internal.util.AtomicThrowable r1 = r10.f73500f
                java.lang.Throwable r1 = r1.terminate()
                r0.onError(r1)
                return
            L30:
                int r8 = r1.d()
                int r9 = r10.f73501g
                if (r8 != r9) goto L3c
                r0.onComplete()
                return
            L3c:
                java.lang.Object r8 = r1.poll()
                if (r8 != 0) goto L43
                goto L4e
            L43:
                io.reactivex.internal.util.NotificationLite r7 = io.reactivex.internal.util.NotificationLite.COMPLETE
                if (r8 == r7) goto Ld
                r0.onNext(r8)
                r7 = 1
                long r2 = r2 + r7
                goto Ld
            L4e:
                if (r7 != 0) goto L7f
                io.reactivex.internal.util.AtomicThrowable r5 = r10.f73500f
                java.lang.Object r5 = r5.get()
                java.lang.Throwable r5 = (java.lang.Throwable) r5
                if (r5 == 0) goto L67
                r1.clear()
                io.reactivex.internal.util.AtomicThrowable r1 = r10.f73500f
                java.lang.Throwable r1 = r1.terminate()
                r0.onError(r1)
                return
            L67:
                java.lang.Object r5 = r1.peek()
                io.reactivex.internal.util.NotificationLite r6 = io.reactivex.internal.util.NotificationLite.COMPLETE
                if (r5 != r6) goto L73
                r1.c()
                goto L67
            L73:
                int r5 = r1.d()
                int r6 = r10.f73501g
                if (r5 != r6) goto L7f
                r0.onComplete()
                return
            L7f:
                r10.f73504j = r2
                int r4 = -r4
                int r4 = r10.addAndGet(r4)
                if (r4 != 0) goto L7
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.maybe.w0.b.k():void");
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73499e.offer(NotificationLite.COMPLETE);
            b();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (this.f73500f.addThrowable(th)) {
                this.f73497c.dispose();
                this.f73499e.offer(NotificationLite.COMPLETE);
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73497c.b(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73499e.offer(t9);
            b();
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T t9;
            do {
                t9 = (T) this.f73499e.poll();
            } while (t9 == NotificationLite.COMPLETE);
            return t9;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73498d, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f73503i = true;
                return 2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes3.dex */
    public interface d<T> extends o7.o<T> {
        void c();

        int d();

        int e();

        T peek();

        @Override // java.util.Queue, io.reactivex.internal.operators.maybe.w0.d, o7.o
        @m7.f
        T poll();
    }

    public w0(io.reactivex.w<? extends T>[] wVarArr) {
        this.f73491b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        d aVar;
        io.reactivex.w[] wVarArr = this.f73491b;
        int length = wVarArr.length;
        if (length <= io.reactivex.j.Y()) {
            aVar = new c(length);
        } else {
            aVar = new a();
        }
        b bVar = new b(dVar, length, aVar);
        dVar.onSubscribe(bVar);
        AtomicThrowable atomicThrowable = bVar.f73500f;
        for (io.reactivex.w wVar : wVarArr) {
            if (bVar.isCancelled() || atomicThrowable.get() != null) {
                return;
            }
            wVar.b(bVar);
        }
    }

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicReferenceArray<T> implements d<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73505c = -7969063454040569579L;

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f73506a;

        /* renamed from: b  reason: collision with root package name */
        int f73507b;

        c(int i4) {
            super(i4);
            this.f73506a = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public void c() {
            int i4 = this.f73507b;
            lazySet(i4, null);
            this.f73507b = i4 + 1;
        }

        @Override // o7.o
        public void clear() {
            while (poll() != null && !isEmpty()) {
            }
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public int d() {
            return this.f73507b;
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public int e() {
            return this.f73506a.get();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73507b == e();
        }

        @Override // o7.o
        public boolean offer(T t9) {
            io.reactivex.internal.functions.b.g(t9, "value is null");
            int andIncrement = this.f73506a.getAndIncrement();
            if (andIncrement < length()) {
                lazySet(andIncrement, t9);
                return true;
            }
            return false;
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d
        public T peek() {
            int i4 = this.f73507b;
            if (i4 == length()) {
                return null;
            }
            return get(i4);
        }

        @Override // io.reactivex.internal.operators.maybe.w0.d, java.util.Queue, o7.o
        @m7.f
        public T poll() {
            int i4 = this.f73507b;
            if (i4 == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f73506a;
            do {
                T t9 = get(i4);
                if (t9 != null) {
                    this.f73507b = i4 + 1;
                    lazySet(i4, null);
                    return t9;
                }
            } while (atomicInteger.get() != i4);
            return null;
        }

        @Override // o7.o
        public boolean offer(T t9, T t10) {
            throw new UnsupportedOperationException();
        }
    }
}
