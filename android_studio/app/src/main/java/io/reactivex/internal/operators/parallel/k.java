package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;

/* compiled from: ParallelMapTry.java */
/* loaded from: classes3.dex */
public final class k<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75230a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends R> f75231b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75232c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f75233a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f75233a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75233a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75233a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final o7.a<? super R> f75234a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f75235b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75236c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f75237d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75238e;

        b(o7.a<? super R> aVar, n7.o<? super T, ? extends R> oVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f75234a = aVar;
            this.f75235b = oVar;
            this.f75236c = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75237d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75238e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                n7.o<? super T, ? extends R> r0 = r9.f75235b     // Catch: java.lang.Throwable -> L1b
                java.lang.Object r0 = r0.apply(r10)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r4 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.functions.b.g(r0, r4)     // Catch: java.lang.Throwable -> L1b
                o7.a<? super R> r0 = r9.f75234a
                boolean r10 = r0.h(r10)
                return r10
            L1b:
                r0 = move-exception
                io.reactivex.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75236c     // Catch: java.lang.Throwable -> L53
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L53
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L53
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L53
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L53
                int[] r7 = io.reactivex.internal.operators.parallel.k.a.f75233a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L52
                r10 = 3
                if (r6 == r10) goto L4c
                r9.cancel()
                r9.onError(r0)
                return r1
            L4c:
                r9.cancel()
                r9.onComplete()
            L52:
                return r1
            L53:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.k.b.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75238e) {
                return;
            }
            this.f75238e = true;
            this.f75234a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75238e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75238e = true;
            this.f75234a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f75238e) {
                return;
            }
            this.f75237d.request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75237d, eVar)) {
                this.f75237d = eVar;
                this.f75234a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75237d.request(j4);
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes3.dex */
    static final class c<T, R> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f75239a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f75240b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75241c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f75242d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75243e;

        c(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends R> oVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f75239a = dVar;
            this.f75240b = oVar;
            this.f75241c = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75242d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75243e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                n7.o<? super T, ? extends R> r4 = r9.f75240b     // Catch: java.lang.Throwable -> L1b
                java.lang.Object r4 = r4.apply(r10)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r5 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.functions.b.g(r4, r5)     // Catch: java.lang.Throwable -> L1b
                org.reactivestreams.d<? super R> r1 = r9.f75239a
                r1.onNext(r10)
                return r0
            L1b:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75241c     // Catch: java.lang.Throwable -> L52
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L52
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L52
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L52
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L52
                int[] r7 = io.reactivex.internal.operators.parallel.k.a.f75233a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L51
                r10 = 3
                if (r6 == r10) goto L4b
                r9.cancel()
                r9.onError(r4)
                return r1
            L4b:
                r9.cancel()
                r9.onComplete()
            L51:
                return r1
            L52:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.k.c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75243e) {
                return;
            }
            this.f75243e = true;
            this.f75239a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75243e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75243e = true;
            this.f75239a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f75243e) {
                return;
            }
            this.f75242d.request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75242d, eVar)) {
                this.f75242d = eVar;
                this.f75239a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75242d.request(j4);
        }
    }

    public k(io.reactivex.parallel.a<T> aVar, n7.o<? super T, ? extends R> oVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f75230a = aVar;
        this.f75231b = oVar;
        this.f75232c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75230a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super R>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = dVarArr[i4];
                if (dVar instanceof o7.a) {
                    dVarArr2[i4] = new b((o7.a) dVar, this.f75231b, this.f75232c);
                } else {
                    dVarArr2[i4] = new c(dVar, this.f75231b, this.f75232c);
                }
            }
            this.f75230a.Q(dVarArr2);
        }
    }
}
