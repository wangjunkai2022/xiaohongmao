package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;

/* compiled from: ParallelDoOnNextTry.java */
/* loaded from: classes4.dex */
public final class c<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80521a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f80522b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80523c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f80524a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f80524a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f80524a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f80524a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* loaded from: classes4.dex */
    static final class b<T> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f80525a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f80526b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80527c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f80528d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80529e;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.g<? super T> onNext, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f80525a = actual;
            this.f80526b = onNext;
            this.f80527c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80528d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80529e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                q7.g<? super T> r0 = r9.f80526b     // Catch: java.lang.Throwable -> L14
                r0.accept(r10)     // Catch: java.lang.Throwable -> L14
                io.reactivex.rxjava3.internal.fuseable.c<? super T> r0 = r9.f80525a
                boolean r10 = r0.h(r10)
                return r10
            L14:
                r0 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r0)
                r4 = 1
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80527c     // Catch: java.lang.Throwable -> L4b
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4b
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch: java.lang.Throwable -> L4b
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L4b
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4b
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.c.a.f80524a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L8
                if (r6 == r5) goto L4a
                r10 = 3
                if (r6 == r10) goto L44
                r9.cancel()
                r9.onError(r0)
                return r1
            L44:
                r9.cancel()
                r9.onComplete()
            L4a:
                return r1
            L4b:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.c.b.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80529e) {
                return;
            }
            this.f80529e = true;
            this.f80525a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80529e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80529e = true;
            this.f80525a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f80529e) {
                return;
            }
            this.f80528d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80528d, s9)) {
                this.f80528d = s9;
                this.f80525a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80528d.request(n9);
        }
    }

    /* compiled from: ParallelDoOnNextTry.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0683c<T> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80530a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f80531b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f80532c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f80533d;

        /* renamed from: e  reason: collision with root package name */
        boolean f80534e;

        C0683c(org.reactivestreams.d<? super T> actual, q7.g<? super T> onNext, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f80530a = actual;
            this.f80531b = onNext;
            this.f80532c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80533d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f80534e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                q7.g<? super T> r4 = r9.f80531b     // Catch: java.lang.Throwable -> L14
                r4.accept(r10)     // Catch: java.lang.Throwable -> L14
                org.reactivestreams.d<? super T> r1 = r9.f80530a
                r1.onNext(r10)
                return r0
            L14:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f80532c     // Catch: java.lang.Throwable -> L4a
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4a
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L4a
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L4a
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L4a
                int[] r7 = io.reactivex.rxjava3.internal.operators.parallel.c.a.f80524a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L49
                r10 = 3
                if (r6 == r10) goto L43
                r9.cancel()
                r9.onError(r4)
                return r1
            L43:
                r9.cancel()
                r9.onComplete()
            L49:
                return r1
            L4a:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.c.C0683c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80534e) {
                return;
            }
            this.f80534e = true;
            this.f80530a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80534e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80534e = true;
            this.f80530a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f80533d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80533d, s9)) {
                this.f80533d = s9;
                this.f80530a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80533d.request(n9);
        }
    }

    public c(io.reactivex.rxjava3.parallel.a<T> source, q7.g<? super T> onNext, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f80521a = source;
        this.f80522b = onNext;
        this.f80523c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80521a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new b((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80522b, this.f80523c);
                } else {
                    dVarArr[i4] = new C0683c(dVar, this.f80522b, this.f80523c);
                }
            }
            this.f80521a.X(dVarArr);
        }
    }
}
