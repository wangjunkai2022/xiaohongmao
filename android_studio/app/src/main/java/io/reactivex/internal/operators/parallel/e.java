package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import n7.r;

/* compiled from: ParallelFilterTry.java */
/* loaded from: classes3.dex */
public final class e<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75165a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f75166b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75167c;

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f75168a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f75168a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75168a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75168a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes3.dex */
    public static abstract class b<T> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f75169a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<? super Long, ? super Throwable, ParallelFailureHandling> f75170b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f75171c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75172d;

        b(r<? super T> rVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f75169a = rVar;
            this.f75170b = cVar;
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f75171c.cancel();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (h(t9) || this.f75172d) {
                return;
            }
            this.f75171c.request(1L);
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            this.f75171c.request(j4);
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final o7.a<? super T> f75173e;

        c(o7.a<? super T> aVar, r<? super T> rVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            super(rVar, cVar);
            this.f75173e = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75172d
                r1 = 0
                if (r0 != 0) goto L66
                r2 = 0
            L7:
                r0 = 1
                n7.r<? super T> r4 = r9.f75169a     // Catch: java.lang.Throwable -> L1a
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L1a
                if (r2 == 0) goto L19
                o7.a<? super T> r2 = r9.f75173e
                boolean r10 = r2.h(r10)
                if (r10 == 0) goto L19
                r1 = 1
            L19:
                return r1
            L1a:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75170b     // Catch: java.lang.Throwable -> L51
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L51
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L51
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L51
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L51
                int[] r7 = io.reactivex.internal.operators.parallel.e.a.f75168a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
                if (r6 == r5) goto L50
                r10 = 3
                if (r6 == r10) goto L4a
                r9.cancel()
                r9.onError(r4)
                return r1
            L4a:
                r9.cancel()
                r9.onComplete()
            L50:
                return r1
            L51:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
            L66:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.e.c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75172d) {
                return;
            }
            this.f75172d = true;
            this.f75173e.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75172d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75172d = true;
            this.f75173e.onError(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75171c, eVar)) {
                this.f75171c = eVar;
                this.f75173e.onSubscribe(this);
            }
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes3.dex */
    static final class d<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75174e;

        d(org.reactivestreams.d<? super T> dVar, r<? super T> rVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            super(rVar, cVar);
            this.f75174e = dVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
        @Override // o7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f75172d
                r1 = 0
                if (r0 != 0) goto L63
                r2 = 0
            L7:
                r0 = 1
                n7.r<? super T> r4 = r9.f75169a     // Catch: java.lang.Throwable -> L17
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L17
                if (r2 == 0) goto L16
                org.reactivestreams.d<? super T> r1 = r9.f75174e
                r1.onNext(r10)
                return r0
            L16:
                return r1
            L17:
                r4 = move-exception
                io.reactivex.exceptions.a.b(r4)
                r5 = 2
                n7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.f75170b     // Catch: java.lang.Throwable -> L4e
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4e
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4e
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.functions.b.g(r6, r7)     // Catch: java.lang.Throwable -> L4e
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4e
                int[] r7 = io.reactivex.internal.operators.parallel.e.a.f75168a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
                if (r6 == r5) goto L4d
                r10 = 3
                if (r6 == r10) goto L47
                r9.cancel()
                r9.onError(r4)
                return r1
            L47:
                r9.cancel()
                r9.onComplete()
            L4d:
                return r1
            L4e:
                r10 = move-exception
                io.reactivex.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.exceptions.CompositeException r2 = new io.reactivex.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
            L63:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.e.d.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75172d) {
                return;
            }
            this.f75172d = true;
            this.f75174e.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75172d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75172d = true;
            this.f75174e.onError(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75171c, eVar)) {
                this.f75171c = eVar;
                this.f75174e.onSubscribe(this);
            }
        }
    }

    public e(io.reactivex.parallel.a<T> aVar, r<? super T> rVar, n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f75165a = aVar;
        this.f75166b = rVar;
        this.f75167c = cVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75165a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = dVarArr[i4];
                if (dVar instanceof o7.a) {
                    dVarArr2[i4] = new c((o7.a) dVar, this.f75166b, this.f75167c);
                } else {
                    dVarArr2[i4] = new d(dVar, this.f75166b, this.f75167c);
                }
            }
            this.f75165a.Q(dVarArr2);
        }
    }
}
