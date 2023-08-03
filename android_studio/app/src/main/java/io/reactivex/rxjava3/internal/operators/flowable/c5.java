package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableZip.java */
/* loaded from: classes4.dex */
public final class c5<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f76989b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f76990c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f76991d;

    /* renamed from: e  reason: collision with root package name */
    final int f76992e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f76993f;

    /* compiled from: FlowableZip.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f76994i = -2434867452883857743L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76995a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, R>[] f76996b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f76997c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76998d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f76999e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f77000f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f77001g;

        /* renamed from: h  reason: collision with root package name */
        final Object[] f77002h;

        a(org.reactivestreams.d<? super R> actual, q7.o<? super Object[], ? extends R> zipper, int n9, int prefetch, boolean delayErrors) {
            this.f76995a = actual;
            this.f76997c = zipper;
            this.f77000f = delayErrors;
            b<T, R>[] bVarArr = new b[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                bVarArr[i4] = new b<>(this, prefetch);
            }
            this.f77002h = new Object[n9];
            this.f76996b = bVarArr;
            this.f76998d = new AtomicLong();
            this.f76999e = new AtomicThrowable();
        }

        void a() {
            for (b<T, R> bVar : this.f76996b) {
                bVar.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x00b7, code lost:
            if (r16 != 0) goto L104;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00bb, code lost:
            if (r20.f77001g == false) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00bd, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00c0, code lost:
            if (r20.f77000f != false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00c8, code lost:
            if (r20.f76999e.get() == null) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00ca, code lost:
            a();
            r20.f76999e.tryTerminateConsumer(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00d2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00d3, code lost:
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00d4, code lost:
            if (r6 >= r4) goto L101;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00d6, code lost:
            r0 = r3[r6];
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00da, code lost:
            if (r5[r6] != null) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00dc, code lost:
            r15 = r0.f77009f;
            r0 = r0.f77007d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00e0, code lost:
            if (r0 == null) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00e2, code lost:
            r0 = r0.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00e7, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00e8, code lost:
            io.reactivex.rxjava3.exceptions.a.b(r0);
            r20.f76999e.tryAddThrowableOrReport(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x00f3, code lost:
            if (r20.f77000f == false) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x00f5, code lost:
            a();
            r20.f76999e.tryTerminateConsumer(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x00fd, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00fe, code lost:
            r0 = null;
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0101, code lost:
            r0 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0102, code lost:
            if (r0 != null) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0104, code lost:
            r16 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0107, code lost:
            r16 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0109, code lost:
            if (r15 == false) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x010b, code lost:
            if (r16 == false) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x010d, code lost:
            a();
            r20.f76999e.tryTerminateConsumer(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0115, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0116, code lost:
            if (r16 != false) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0118, code lost:
            r5[r6] = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x011a, code lost:
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x011f, code lost:
            if (r12 == 0) goto L113;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0121, code lost:
            r0 = r3.length;
            r15 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0123, code lost:
            if (r15 >= r0) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0125, code lost:
            r3[r15].request(r12);
            r15 = r15 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0134, code lost:
            if (r8 == Long.MAX_VALUE) goto L113;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0136, code lost:
            r20.f76998d.addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x013c, code lost:
            r7 = addAndGet(-r7);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 324
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.c5.a.b():void");
        }

        void c(b<T, R> inner, Throwable e4) {
            if (this.f76999e.tryAddThrowableOrReport(e4)) {
                inner.f77009f = true;
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77001g) {
                return;
            }
            this.f77001g = true;
            a();
        }

        void d(org.reactivestreams.c<? extends T>[] sources, int n9) {
            b<T, R>[] bVarArr = this.f76996b;
            for (int i4 = 0; i4 < n9 && !this.f77001g; i4++) {
                if (!this.f77000f && this.f76999e.get() != null) {
                    return;
                }
                sources[i4].i(bVarArr[i4]);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76998d, n9);
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableZip.java */
    /* loaded from: classes4.dex */
    public static final class b<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77003h = -4627193790118206028L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f77004a;

        /* renamed from: b  reason: collision with root package name */
        final int f77005b;

        /* renamed from: c  reason: collision with root package name */
        final int f77006c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f77007d;

        /* renamed from: e  reason: collision with root package name */
        long f77008e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f77009f;

        /* renamed from: g  reason: collision with root package name */
        int f77010g;

        b(a<T, R> parent, int prefetch) {
            this.f77004a = parent;
            this.f77005b = prefetch;
            this.f77006c = prefetch - (prefetch >> 2);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77009f = true;
            this.f77004a.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77004a.c(this, t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77010g != 2) {
                this.f77007d.offer(t9);
            }
            this.f77004a.b();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f77010g = requestFusion;
                        this.f77007d = nVar;
                        this.f77009f = true;
                        this.f77004a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f77010g = requestFusion;
                        this.f77007d = nVar;
                        s9.request(this.f77005b);
                        return;
                    }
                }
                this.f77007d = new SpscArrayQueue(this.f77005b);
                s9.request(this.f77005b);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (this.f77010g != 1) {
                long j4 = this.f77008e + n9;
                if (j4 >= this.f77006c) {
                    this.f77008e = 0L;
                    get().request(j4);
                    return;
                }
                this.f77008e = j4;
            }
        }
    }

    public c5(org.reactivestreams.c<? extends T>[] sources, Iterable<? extends org.reactivestreams.c<? extends T>> sourcesIterable, q7.o<? super Object[], ? extends R> zipper, int bufferSize, boolean delayError) {
        this.f76989b = sources;
        this.f76990c = sourcesIterable;
        this.f76991d = zipper;
        this.f76992e = bufferSize;
        this.f76993f = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super R> s9) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f76989b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            length = 0;
            for (org.reactivestreams.c<? extends T> cVar : this.f76990c) {
                if (length == cVarArr.length) {
                    org.reactivestreams.c<? extends T>[] cVarArr2 = new org.reactivestreams.c[(length >> 2) + length];
                    System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
                    cVarArr = cVarArr2;
                }
                cVarArr[length] = cVar;
                length++;
            }
        } else {
            length = cVarArr.length;
        }
        int i4 = length;
        if (i4 == 0) {
            EmptySubscription.complete(s9);
            return;
        }
        a aVar = new a(s9, this.f76991d, i4, this.f76992e, this.f76993f);
        s9.onSubscribe(aVar);
        aVar.d(cVarArr, i4);
    }
}
