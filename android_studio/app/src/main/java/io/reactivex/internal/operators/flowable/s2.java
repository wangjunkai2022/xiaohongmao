package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowablePublishMulticast.java */
/* loaded from: classes3.dex */
public final class s2<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super io.reactivex.j<T>, ? extends org.reactivestreams.c<? extends R>> f72627c;

    /* renamed from: d  reason: collision with root package name */
    final int f72628d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f72629e;

    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.j<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: m  reason: collision with root package name */
        static final b[] f72630m = new b[0];

        /* renamed from: n  reason: collision with root package name */
        static final b[] f72631n = new b[0];

        /* renamed from: d  reason: collision with root package name */
        final int f72634d;

        /* renamed from: e  reason: collision with root package name */
        final int f72635e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f72636f;

        /* renamed from: h  reason: collision with root package name */
        volatile o7.o<T> f72638h;

        /* renamed from: i  reason: collision with root package name */
        int f72639i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f72640j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f72641k;

        /* renamed from: l  reason: collision with root package name */
        int f72642l;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f72632b = new AtomicInteger();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72637g = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<b<T>[]> f72633c = new AtomicReference<>(f72630m);

        a(int i4, boolean z9) {
            this.f72634d = i4;
            this.f72635e = i4 - (i4 >> 2);
            this.f72636f = z9;
        }

        boolean M8(b<T> bVar) {
            b<T>[] bVarArr;
            b<T>[] bVarArr2;
            do {
                bVarArr = this.f72633c.get();
                if (bVarArr == f72631n) {
                    return false;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = bVar;
            } while (!this.f72633c.compareAndSet(bVarArr, bVarArr2));
            return true;
        }

        void N8() {
            b<T>[] andSet;
            for (b<T> bVar : this.f72633c.getAndSet(f72631n)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f72644a.onComplete();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:131:?, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00e8, code lost:
            r8 = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00f8, code lost:
            if (r7 != 0) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x00fe, code lost:
            if (isDisposed() == false) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0100, code lost:
            r0.clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0103, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0104, code lost:
            r5 = r24.f72640j;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0106, code lost:
            if (r5 == false) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x010a, code lost:
            if (r24.f72636f != false) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x010c, code lost:
            r6 = r24.f72641k;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x010e, code lost:
            if (r6 == null) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0110, code lost:
            P8(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0113, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0114, code lost:
            if (r5 == false) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x011a, code lost:
            if (r0.isEmpty() == false) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x011c, code lost:
            r0 = r24.f72641k;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x011e, code lost:
            if (r0 == null) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0120, code lost:
            P8(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0124, code lost:
            N8();
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0127, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void O8() {
            /*
                Method dump skipped, instructions count: 326
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.s2.a.O8():void");
        }

        void P8(Throwable th) {
            b<T>[] andSet;
            for (b<T> bVar : this.f72633c.getAndSet(f72631n)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f72644a.onError(th);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void Q8(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f72633c.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (bVarArr[i10] == bVar) {
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
                    bVarArr2 = f72630m;
                } else {
                    b[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i4);
                    System.arraycopy(bVarArr, i4 + 1, bVarArr3, i4, (length - i4) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!this.f72633c.compareAndSet(bVarArr, bVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            o7.o<T> oVar;
            SubscriptionHelper.cancel(this.f72637g);
            if (this.f72632b.getAndIncrement() != 0 || (oVar = this.f72638h) == null) {
                return;
            }
            oVar.clear();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72637g.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.j
        protected void k6(org.reactivestreams.d<? super T> dVar) {
            b<T> bVar = new b<>(dVar, this);
            dVar.onSubscribe(bVar);
            if (M8(bVar)) {
                if (bVar.a()) {
                    Q8(bVar);
                    return;
                } else {
                    O8();
                    return;
                }
            }
            Throwable th = this.f72641k;
            if (th != null) {
                dVar.onError(th);
            } else {
                dVar.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72640j) {
                return;
            }
            this.f72640j = true;
            O8();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72640j) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72641k = th;
            this.f72640j = true;
            O8();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72640j) {
                return;
            }
            if (this.f72639i == 0 && !this.f72638h.offer(t9)) {
                this.f72637g.get().cancel();
                onError(new MissingBackpressureException());
                return;
            }
            O8();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72637g, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f72639i = requestFusion;
                        this.f72638h = lVar;
                        this.f72640j = true;
                        O8();
                        return;
                    } else if (requestFusion == 2) {
                        this.f72639i = requestFusion;
                        this.f72638h = lVar;
                        io.reactivex.internal.util.o.j(eVar, this.f72634d);
                        return;
                    }
                }
                this.f72638h = io.reactivex.internal.util.o.c(this.f72634d);
                io.reactivex.internal.util.o.j(eVar, this.f72634d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72643d = 8664815189257569791L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72644a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f72645b;

        /* renamed from: c  reason: collision with root package name */
        long f72646c;

        b(org.reactivestreams.d<? super T> dVar, a<T> aVar) {
            this.f72644a = dVar;
            this.f72645b = aVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f72645b.Q8(this);
                this.f72645b.O8();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this, j4);
                this.f72645b.O8();
            }
        }
    }

    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes3.dex */
    static final class c<R> implements io.reactivex.o<R>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72647a;

        /* renamed from: b  reason: collision with root package name */
        final a<?> f72648b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72649c;

        c(org.reactivestreams.d<? super R> dVar, a<?> aVar) {
            this.f72647a = dVar;
            this.f72648b = aVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72649c.cancel();
            this.f72648b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72647a.onComplete();
            this.f72648b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72647a.onError(th);
            this.f72648b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(R r9) {
            this.f72647a.onNext(r9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72649c, eVar)) {
                this.f72649c = eVar;
                this.f72647a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72649c.request(j4);
        }
    }

    public s2(io.reactivex.j<T> jVar, n7.o<? super io.reactivex.j<T>, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
        super(jVar);
        this.f72627c = oVar;
        this.f72628d = i4;
        this.f72629e = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        a aVar = new a(this.f72628d, this.f72629e);
        try {
            ((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72627c.apply(aVar), "selector returned a null Publisher")).i(new c(dVar, aVar));
            this.f71538b.j6(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
