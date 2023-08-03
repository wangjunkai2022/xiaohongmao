package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowablePublish.java */
/* loaded from: classes3.dex */
public final class p2<T> extends io.reactivex.flowables.a<T> implements o7.h<T>, r2<T> {

    /* renamed from: f  reason: collision with root package name */
    static final long f72437f = Long.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f72438b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<c<T>> f72439c;

    /* renamed from: d  reason: collision with root package name */
    final int f72440d;

    /* renamed from: e  reason: collision with root package name */
    final org.reactivestreams.c<T> f72441e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublish.java */
    /* loaded from: classes3.dex */
    public static final class a<T> implements org.reactivestreams.c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<c<T>> f72442a;

        /* renamed from: b  reason: collision with root package name */
        private final int f72443b;

        a(AtomicReference<c<T>> atomicReference, int i4) {
            this.f72442a = atomicReference;
            this.f72443b = i4;
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> dVar) {
            c<T> cVar;
            b<T> bVar = new b<>(dVar);
            dVar.onSubscribe(bVar);
            while (true) {
                cVar = this.f72442a.get();
                if (cVar == null || cVar.isDisposed()) {
                    c<T> cVar2 = new c<>(this.f72442a, this.f72443b);
                    if (this.f72442a.compareAndSet(cVar, cVar2)) {
                        cVar = cVar2;
                    } else {
                        continue;
                    }
                }
                if (cVar.a(bVar)) {
                    break;
                }
            }
            if (bVar.get() == Long.MIN_VALUE) {
                cVar.d(bVar);
            } else {
                bVar.f72446b = cVar;
            }
            cVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublish.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72444d = -4453897557930727610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72445a;

        /* renamed from: b  reason: collision with root package name */
        volatile c<T> f72446b;

        /* renamed from: c  reason: collision with root package name */
        long f72447c;

        b(org.reactivestreams.d<? super T> dVar) {
            this.f72445a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            c<T> cVar;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (cVar = this.f72446b) == null) {
                return;
            }
            cVar.d(this);
            cVar.c();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
                c<T> cVar = this.f72446b;
                if (cVar != null) {
                    cVar.c();
                }
            }
        }
    }

    /* compiled from: FlowablePublish.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72448i = -202316842419149694L;

        /* renamed from: j  reason: collision with root package name */
        static final b[] f72449j = new b[0];

        /* renamed from: k  reason: collision with root package name */
        static final b[] f72450k = new b[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<c<T>> f72451a;

        /* renamed from: b  reason: collision with root package name */
        final int f72452b;

        /* renamed from: f  reason: collision with root package name */
        volatile Object f72456f;

        /* renamed from: g  reason: collision with root package name */
        int f72457g;

        /* renamed from: h  reason: collision with root package name */
        volatile o7.o<T> f72458h;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72455e = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<b<T>[]> f72453c = new AtomicReference<>(f72449j);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f72454d = new AtomicBoolean();

        c(AtomicReference<c<T>> atomicReference, int i4) {
            this.f72451a = atomicReference;
            this.f72452b = i4;
        }

        boolean a(b<T> bVar) {
            b<T>[] bVarArr;
            b<T>[] bVarArr2;
            do {
                bVarArr = this.f72453c.get();
                if (bVarArr == f72450k) {
                    return false;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = bVar;
            } while (!this.f72453c.compareAndSet(bVarArr, bVarArr2));
            return true;
        }

        boolean b(Object obj, boolean z9) {
            int i4 = 0;
            if (obj != null) {
                if (!NotificationLite.isComplete(obj)) {
                    Throwable error = NotificationLite.getError(obj);
                    this.f72451a.compareAndSet(this, null);
                    b<T>[] andSet = this.f72453c.getAndSet(f72450k);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i4 < length) {
                            andSet[i4].f72445a.onError(error);
                            i4++;
                        }
                    } else {
                        io.reactivex.plugins.a.Y(error);
                    }
                    return true;
                } else if (z9) {
                    this.f72451a.compareAndSet(this, null);
                    b<T>[] andSet2 = this.f72453c.getAndSet(f72450k);
                    int length2 = andSet2.length;
                    while (i4 < length2) {
                        andSet2[i4].f72445a.onComplete();
                        i4++;
                    }
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:110:0x0014, code lost:
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x011f, code lost:
            if (r11 == 0) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0124, code lost:
            if (r25.f72457g == 1) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0126, code lost:
            r25.f72455e.get().request(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0132, code lost:
            r4 = r0;
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0136, code lost:
            if (r11 == 0) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0138, code lost:
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x013b, code lost:
            if (r25.f72457g == 1) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x013d, code lost:
            r25.f72455e.get().request(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0149, code lost:
            r3 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x014e, code lost:
            if (r14 == 0) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0150, code lost:
            if (r8 != false) goto L74;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void c() {
            /*
                Method dump skipped, instructions count: 357
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.p2.c.c():void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f72453c.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (bVarArr[i10].equals(bVar)) {
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
                    bVarArr2 = f72449j;
                } else {
                    b[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i4);
                    System.arraycopy(bVarArr, i4 + 1, bVarArr3, i4, (length - i4) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!this.f72453c.compareAndSet(bVarArr, bVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            b<T>[] bVarArr = this.f72453c.get();
            b<T>[] bVarArr2 = f72450k;
            if (bVarArr == bVarArr2 || this.f72453c.getAndSet(bVarArr2) == bVarArr2) {
                return;
            }
            this.f72451a.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f72455e);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72453c.get() == f72450k;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72456f == null) {
                this.f72456f = NotificationLite.complete();
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72456f == null) {
                this.f72456f = NotificationLite.error(th);
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72457g == 0 && !this.f72458h.offer(t9)) {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            } else {
                c();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72455e, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f72457g = requestFusion;
                        this.f72458h = lVar;
                        this.f72456f = NotificationLite.complete();
                        c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f72457g = requestFusion;
                        this.f72458h = lVar;
                        eVar.request(this.f72452b);
                        return;
                    }
                }
                this.f72458h = new SpscArrayQueue(this.f72452b);
                eVar.request(this.f72452b);
            }
        }
    }

    private p2(org.reactivestreams.c<T> cVar, io.reactivex.j<T> jVar, AtomicReference<c<T>> atomicReference, int i4) {
        this.f72441e = cVar;
        this.f72438b = jVar;
        this.f72439c = atomicReference;
        this.f72440d = i4;
    }

    public static <T> io.reactivex.flowables.a<T> Y8(io.reactivex.j<T> jVar, int i4) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.T(new p2(new a(atomicReference, i4), jVar, atomicReference, i4));
    }

    @Override // io.reactivex.flowables.a
    public void Q8(n7.g<? super io.reactivex.disposables.c> gVar) {
        c<T> cVar;
        while (true) {
            cVar = this.f72439c.get();
            if (cVar != null && !cVar.isDisposed()) {
                break;
            }
            c<T> cVar2 = new c<>(this.f72439c, this.f72440d);
            if (this.f72439c.compareAndSet(cVar, cVar2)) {
                cVar = cVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (cVar.f72454d.get() || !cVar.f72454d.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(cVar);
            if (z9) {
                this.f72438b.j6(cVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // io.reactivex.internal.operators.flowable.r2
    public org.reactivestreams.c<T> a() {
        return this.f72438b;
    }

    @Override // io.reactivex.internal.operators.flowable.r2
    public int b() {
        return this.f72440d;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f72441e.i(dVar);
    }

    @Override // o7.h
    public org.reactivestreams.c<T> source() {
        return this.f72438b;
    }
}
