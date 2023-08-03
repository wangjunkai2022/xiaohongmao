package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;

/* compiled from: ParallelMapTry.java */
/* loaded from: classes4.dex */
public final class l<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80610a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends R> f80611b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80612c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f80613a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f80613a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80613a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80613a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super R> f80614a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f80615b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80616c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f80617d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80618e;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super R> actual, q7.o<? super T, ? extends R> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f80614a = actual;
            this.f80615b = mapper;
            this.f80616c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80617d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80618e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                q7.o<? super T, ? extends R> r0 = r9.f80615b     // Catch: java.lang.Throwable -> L1a
                java.lang.Object r0 = r0.apply(r10)     // Catch: java.lang.Throwable -> L1a
                java.lang.String r4 = "The mapper returned a null value"
                java.util.Objects.requireNonNull(r0, r4)     // Catch: java.lang.Throwable -> L1a
                io.reactivex.rxjava3.internal.fuseable.c<? super R> r10 = r9.f80614a
                boolean r10 = r10.h(r0)
                return r10
            L1a:
                r0 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80616c     // Catch: java.lang.Throwable -> L51
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L51
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L51
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L51
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L51
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.l.a.f80613a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L50
                r10 = 3
                if (r6 == r10) goto L4a
                r9.cancel()
                r9.onError(r0)
                return r1
            L4a:
                r9.cancel()
                r9.onComplete()
            L50:
                return r1
            L51:
                r10 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.rxjava3.exceptions.CompositeException r2 = new io.reactivex.rxjava3.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r0
                r3[r4] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.l.b.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80618e) {
                return;
            }
            this.f80618e = true;
            this.f80614a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80618e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80618e = true;
            this.f80614a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f80618e) {
                return;
            }
            this.f80617d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80617d, s9)) {
                this.f80617d = s9;
                this.f80614a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80617d.request(n9);
        }
    }

    /* compiled from: ParallelMapTry.java */
    /* loaded from: classes4.dex */
    static final class c<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f80619a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f80620b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80621c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f80622d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80623e;

        c(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends R> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f80619a = actual;
            this.f80620b = mapper;
            this.f80621c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80622d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80623e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                q7.o<? super T, ? extends R> r4 = r9.f80620b     // Catch: java.lang.Throwable -> L1a
                java.lang.Object r4 = r4.apply(r10)     // Catch: java.lang.Throwable -> L1a
                java.lang.String r5 = "The mapper returned a null value"
                java.util.Objects.requireNonNull(r4, r5)     // Catch: java.lang.Throwable -> L1a
                org.reactivestreams.d<? super R> r10 = r9.f80619a
                r10.onNext(r4)
                return r0
            L1a:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80621c     // Catch: java.lang.Throwable -> L50
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L50
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L50
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L50
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L50
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.l.a.f80613a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L4f
                r10 = 3
                if (r6 == r10) goto L49
                r9.cancel()
                r9.onError(r4)
                return r1
            L49:
                r9.cancel()
                r9.onComplete()
            L4f:
                return r1
            L50:
                r10 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.rxjava3.exceptions.CompositeException r2 = new io.reactivex.rxjava3.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.l.c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80623e) {
                return;
            }
            this.f80623e = true;
            this.f80619a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80623e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80623e = true;
            this.f80619a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f80623e) {
                return;
            }
            this.f80622d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80622d, s9)) {
                this.f80622d = s9;
                this.f80619a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80622d.request(n9);
        }
    }

    public l(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends R> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f80610a = source;
        this.f80611b = mapper;
        this.f80612c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80610a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new b((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80611b, this.f80612c);
                } else {
                    dVarArr[i4] = new c(dVar, this.f80611b, this.f80612c);
                }
            }
            this.f80610a.X(dVarArr);
        }
    }
}
