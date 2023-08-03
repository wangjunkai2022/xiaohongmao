package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;
import q7.r;

/* compiled from: ParallelFilterTry.java */
/* loaded from: classes4.dex */
public final class e<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80542a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f80543b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80544c;

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f80545a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f80545a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80545a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80545a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes4.dex */
    public static abstract class b<T> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f80546a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80547b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f80548c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80549d;

        b(r<? super T> predicate, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f80546a = predicate;
            this.f80547b = errorHandler;
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f80548c.cancel();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (h(t9) || this.f80549d) {
                return;
            }
            this.f80548c.request(1L);
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            this.f80548c.request(n9);
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f80550e;

        c(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, r<? super T> predicate, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            super(predicate, errorHandler);
            this.f80550e = actual;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80549d
                r1 = 0
                if (r0 != 0) goto L65
                r2 = 0
            L7:
                r0 = 1
                q7.r<? super T> r4 = r9.f80546a     // Catch: java.lang.Throwable -> L1a
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L1a
                if (r2 == 0) goto L19
                io.reactivex.rxjava3.internal.fuseable.c<? super T> r2 = r9.f80550e
                boolean r10 = r2.h(r10)
                if (r10 == 0) goto L19
                r1 = 1
            L19:
                return r1
            L1a:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80547b     // Catch: java.lang.Throwable -> L50
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L50
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L50
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L50
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L50
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.e.a.f80545a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
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
            L65:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.e.c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80549d) {
                return;
            }
            this.f80549d = true;
            this.f80550e.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80549d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80549d = true;
            this.f80550e.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80548c, s9)) {
                this.f80548c = s9;
                this.f80550e.onSubscribe(this);
            }
        }
    }

    /* compiled from: ParallelFilterTry.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends b<T> {

        /* renamed from: e  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80551e;

        d(org.reactivestreams.d<? super T> actual, r<? super T> predicate, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            super(predicate, errorHandler);
            this.f80551e = actual;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80549d
                r1 = 0
                if (r0 != 0) goto L62
                r2 = 0
            L7:
                r0 = 1
                q7.r<? super T> r4 = r9.f80546a     // Catch: java.lang.Throwable -> L17
                boolean r2 = r4.test(r10)     // Catch: java.lang.Throwable -> L17
                if (r2 == 0) goto L16
                org.reactivestreams.d<? super T> r1 = r9.f80551e
                r1.onNext(r10)
                return r0
            L16:
                return r1
            L17:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80547b     // Catch: java.lang.Throwable -> L4d
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4d
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4d
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L4d
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4d
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.e.a.f80545a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L7
                if (r6 == r5) goto L4c
                r10 = 3
                if (r6 == r10) goto L46
                r9.cancel()
                r9.onError(r4)
                return r1
            L46:
                r9.cancel()
                r9.onComplete()
            L4c:
                return r1
            L4d:
                r10 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r10)
                r9.cancel()
                io.reactivex.rxjava3.exceptions.CompositeException r2 = new io.reactivex.rxjava3.exceptions.CompositeException
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>(r3)
                r9.onError(r2)
            L62:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.e.d.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80549d) {
                return;
            }
            this.f80549d = true;
            this.f80551e.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80549d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80549d = true;
            this.f80551e.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80548c, s9)) {
                this.f80548c = s9;
                this.f80551e.onSubscribe(this);
            }
        }
    }

    public e(io.reactivex.rxjava3.parallel.a<T> source, r<? super T> predicate, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f80542a = source;
        this.f80543b = predicate;
        this.f80544c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80542a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new c((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80543b, this.f80544c);
                } else {
                    dVarArr[i4] = new d(dVar, this.f80543b, this.f80544c);
                }
            }
            this.f80542a.X(dVarArr);
        }
    }
}
