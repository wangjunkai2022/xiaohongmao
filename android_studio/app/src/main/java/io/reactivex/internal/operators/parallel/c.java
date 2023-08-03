package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;

/* compiled from: ParallelDoOnNextTry.java */
/* loaded from: classes3.dex */
public final class c<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75144a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f75145b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75146c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f75147a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f75147a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75147a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75147a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes3.dex */
    static final class b<T> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final o7.a<? super T> f75148a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f75149b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75150c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f75151d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75152e;

        b(o7.a<? super T> aVar, n7.g<? super T> gVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f75148a = aVar;
            this.f75149b = gVar;
            this.f75150c = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75151d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75152e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                n7.g<? super T> r0 = r9.f75149b     // Catch: java.lang.Throwable -> L14
                r0.accept(r10)     // Catch: java.lang.Throwable -> L14
                o7.a<? super T> r0 = r9.f75148a
                boolean r10 = r0.h(r10)
                return r10
            L14:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75150c     // Catch: java.lang.Throwable -> L4c
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4c
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L4c
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L4c
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4c
                int[] r7 = io.reactivex.internal.operators.parallel.c.a.f75147a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L4b
                r10 = 3
                if (r6 == r10) goto L45
                r9.cancel()
                r9.onError(r0)
                return r1
            L45:
                r9.cancel()
                r9.onComplete()
            L4b:
                return r1
            L4c:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r0
                r3[r4] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.c.b.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75152e) {
                return;
            }
            this.f75152e = true;
            this.f75148a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75152e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75152e = true;
            this.f75148a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f75152e) {
                return;
            }
            this.f75151d.request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75151d, eVar)) {
                this.f75151d = eVar;
                this.f75148a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75151d.request(j4);
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* renamed from: io.reactivex.internal.operators.parallel.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0604c<T> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75153a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f75154b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75155c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f75156d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75157e;

        C0604c(org.reactivestreams.d<? super T> dVar, n7.g<? super T> gVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f75153a = dVar;
            this.f75154b = gVar;
            this.f75155c = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75156d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75157e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                n7.g<? super T> r4 = r9.f75154b     // Catch: java.lang.Throwable -> L14
                r4.accept(r10)     // Catch: java.lang.Throwable -> L14
                org.reactivestreams.d<? super T> r1 = r9.f75153a
                r1.onNext(r10)
                return r0
            L14:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75155c     // Catch: java.lang.Throwable -> L4b
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4b
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4b
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L4b
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4b
                int[] r7 = io.reactivex.internal.operators.parallel.c.a.f75147a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L4a
                r10 = 3
                if (r6 == r10) goto L44
                r9.cancel()
                r9.onError(r4)
                return r1
            L44:
                r9.cancel()
                r9.onComplete()
            L4a:
                return r1
            L4b:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.c.C0604c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75157e) {
                return;
            }
            this.f75157e = true;
            this.f75153a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75157e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75157e = true;
            this.f75153a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f75156d.request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75156d, eVar)) {
                this.f75156d = eVar;
                this.f75153a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75156d.request(j4);
        }
    }

    public c(io.reactivex.parallel.a<T> aVar, n7.g<? super T> gVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f75144a = aVar;
        this.f75145b = gVar;
        this.f75146c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75144a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = dVarArr[i4];
                if (dVar instanceof o7.a) {
                    dVarArr2[i4] = new b((o7.a) dVar, this.f75145b, this.f75146c);
                } else {
                    dVarArr2[i4] = new C0604c(dVar, this.f75145b, this.f75146c);
                }
            }
            this.f75144a.Q(dVarArr2);
        }
    }
}
