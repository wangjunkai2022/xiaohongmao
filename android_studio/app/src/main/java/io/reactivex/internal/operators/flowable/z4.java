package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableZip.java */
/* loaded from: classes3.dex */
public final class z4<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f73145b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f73146c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f73147d;

    /* renamed from: e  reason: collision with root package name */
    final int f73148e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f73149f;

    /* compiled from: FlowableZip.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73150i = -2434867452883857743L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73151a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, R>[] f73152b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f73153c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73154d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f73155e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f73156f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73157g;

        /* renamed from: h  reason: collision with root package name */
        final Object[] f73158h;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super Object[], ? extends R> oVar, int i4, int i10, boolean z9) {
            this.f73151a = dVar;
            this.f73153c = oVar;
            this.f73156f = z9;
            b<T, R>[] bVarArr = new b[i4];
            for (int i11 = 0; i11 < i4; i11++) {
                bVarArr[i11] = new b<>(this, i10);
            }
            this.f73158h = new Object[i4];
            this.f73152b = bVarArr;
            this.f73154d = new AtomicLong();
            this.f73155e = new AtomicThrowable();
        }

        void a() {
            for (b<T, R> bVar : this.f73152b) {
                bVar.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:127:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00cd, code lost:
            if (r16 != 0) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00d1, code lost:
            if (r18.f73157g == false) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00d3, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00d6, code lost:
            if (r18.f73156f != false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00de, code lost:
            if (r18.f73155e.get() == null) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00e0, code lost:
            a();
            r2.onError(r18.f73155e.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00ec, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00ed, code lost:
            r6 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00ee, code lost:
            if (r6 >= r4) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00f0, code lost:
            r0 = r3[r6];
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00f4, code lost:
            if (r5[r6] != null) goto L105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00f6, code lost:
            r10 = r0.f73165f;
            r0 = r0.f73163d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00fa, code lost:
            if (r0 == null) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00fc, code lost:
            r0 = r0.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0101, code lost:
            r0 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0102, code lost:
            if (r0 != null) goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0104, code lost:
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0106, code lost:
            r11 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0107, code lost:
            if (r10 == false) goto L91;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0109, code lost:
            if (r11 == false) goto L91;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x010b, code lost:
            a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0116, code lost:
            if (r18.f73155e.get() == null) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0118, code lost:
            r2.onError(r18.f73155e.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0122, code lost:
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0125, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0126, code lost:
            if (r11 != false) goto L95;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0128, code lost:
            r5[r6] = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x012b, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x012c, code lost:
            io.reactivex.exceptions.a.b(r0);
            r18.f73155e.addThrowable(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0136, code lost:
            if (r18.f73156f == false) goto L101;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0138, code lost:
            a();
            r2.onError(r18.f73155e.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0144, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0145, code lost:
            r6 = r6 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x014c, code lost:
            if (r12 == 0) goto L118;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x014e, code lost:
            r0 = r3.length;
            r15 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0150, code lost:
            if (r15 >= r0) goto L114;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0152, code lost:
            r3[r15].request(r12);
            r15 = r15 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0161, code lost:
            if (r8 == Long.MAX_VALUE) goto L118;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0163, code lost:
            r18.f73154d.addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0169, code lost:
            r7 = addAndGet(-r7);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 369
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.z4.a.b():void");
        }

        void c(b<T, R> bVar, Throwable th) {
            if (this.f73155e.addThrowable(th)) {
                bVar.f73165f = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f73157g) {
                return;
            }
            this.f73157g = true;
            a();
        }

        void d(org.reactivestreams.c<? extends T>[] cVarArr, int i4) {
            b<T, R>[] bVarArr = this.f73152b;
            for (int i10 = 0; i10 < i4 && !this.f73157g; i10++) {
                if (!this.f73156f && this.f73155e.get() != null) {
                    return;
                }
                cVarArr[i10].i(bVarArr[i10]);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73154d, j4);
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableZip.java */
    /* loaded from: classes3.dex */
    public static final class b<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f73159h = -4627193790118206028L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f73160a;

        /* renamed from: b  reason: collision with root package name */
        final int f73161b;

        /* renamed from: c  reason: collision with root package name */
        final int f73162c;

        /* renamed from: d  reason: collision with root package name */
        o7.o<T> f73163d;

        /* renamed from: e  reason: collision with root package name */
        long f73164e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f73165f;

        /* renamed from: g  reason: collision with root package name */
        int f73166g;

        b(a<T, R> aVar, int i4) {
            this.f73160a = aVar;
            this.f73161b = i4;
            this.f73162c = i4 - (i4 >> 2);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73165f = true;
            this.f73160a.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73160a.c(this, th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f73166g != 2) {
                this.f73163d.offer(t9);
            }
            this.f73160a.b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f73166g = requestFusion;
                        this.f73163d = lVar;
                        this.f73165f = true;
                        this.f73160a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f73166g = requestFusion;
                        this.f73163d = lVar;
                        eVar.request(this.f73161b);
                        return;
                    }
                }
                this.f73163d = new SpscArrayQueue(this.f73161b);
                eVar.request(this.f73161b);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (this.f73166g != 1) {
                long j10 = this.f73164e + j4;
                if (j10 >= this.f73162c) {
                    this.f73164e = 0L;
                    get().request(j10);
                    return;
                }
                this.f73164e = j10;
            }
        }
    }

    public z4(org.reactivestreams.c<? extends T>[] cVarArr, Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
        this.f73145b = cVarArr;
        this.f73146c = iterable;
        this.f73147d = oVar;
        this.f73148e = i4;
        this.f73149f = z9;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super R> dVar) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f73145b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            length = 0;
            for (org.reactivestreams.c<? extends T> cVar : this.f73146c) {
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
            EmptySubscription.complete(dVar);
            return;
        }
        a aVar = new a(dVar, this.f73147d, i4, this.f73148e, this.f73149f);
        dVar.onSubscribe(aVar);
        aVar.d(cVarArr, i4);
    }
}
