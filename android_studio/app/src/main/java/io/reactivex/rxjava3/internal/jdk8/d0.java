package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;
import java.util.Optional;

/* compiled from: ParallelMapTryOptional.java */
/* loaded from: classes4.dex */
public final class d0<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f76284a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76285b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f76286c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelMapTryOptional.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f76287a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f76287a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f76287a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f76287a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: ParallelMapTryOptional.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super R> f76288a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76289b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f76290c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f76291d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76292e;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super R> actual, q7.o<? super T, Optional<? extends R>> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f76288a = actual;
            this.f76289b = mapper;
            this.f76290c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76291d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f76292e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                q7.o<? super T, java.util.Optional<? extends R>> r4 = r9.f76289b     // Catch: java.lang.Throwable -> L2a
                java.lang.Object r4 = r4.apply(r10)     // Catch: java.lang.Throwable -> L2a
                java.lang.String r5 = "The mapper returned a null Optional"
                java.util.Objects.requireNonNull(r4, r5)     // Catch: java.lang.Throwable -> L2a
                java.util.Optional r4 = (java.util.Optional) r4     // Catch: java.lang.Throwable -> L2a
                boolean r10 = r4.isPresent()
                if (r10 == 0) goto L29
                io.reactivex.rxjava3.internal.fuseable.c<? super R> r10 = r9.f76288a
                java.lang.Object r2 = r4.get()
                boolean r10 = r10.h(r2)
                if (r10 == 0) goto L29
                r1 = 1
            L29:
                return r1
            L2a:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f76290c     // Catch: java.lang.Throwable -> L60
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L60
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L60
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L60
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L60
                int[] r7 = io.reactivex.rxjava3.internal.jdk8.d0.a.f76287a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L5f
                r10 = 3
                if (r6 == r10) goto L59
                r9.cancel()
                r9.onError(r4)
                return r1
            L59:
                r9.cancel()
                r9.onComplete()
            L5f:
                return r1
            L60:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.jdk8.d0.b.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76292e) {
                return;
            }
            this.f76292e = true;
            this.f76288a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76292e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76292e = true;
            this.f76288a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f76292e) {
                return;
            }
            this.f76291d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76291d, s9)) {
                this.f76291d = s9;
                this.f76288a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f76291d.request(n9);
        }
    }

    /* compiled from: ParallelMapTryOptional.java */
    /* loaded from: classes4.dex */
    static final class c<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76293a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76294b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super Long, ? super Throwable, ParallelFailureHandling> f76295c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f76296d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76297e;

        c(org.reactivestreams.d<? super R> actual, q7.o<? super T, Optional<? extends R>> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f76293a = actual;
            this.f76294b = mapper;
            this.f76295c = errorHandler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76296d.cancel();
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
        @Override // io.reactivex.rxjava3.internal.fuseable.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean h(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.f76297e
                r1 = 0
                if (r0 == 0) goto L6
                return r1
            L6:
                r2 = 0
            L8:
                r0 = 1
                q7.o<? super T, java.util.Optional<? extends R>> r4 = r9.f76294b     // Catch: java.lang.Throwable -> L27
                java.lang.Object r4 = r4.apply(r10)     // Catch: java.lang.Throwable -> L27
                java.lang.String r5 = "The mapper returned a null Optional"
                java.util.Objects.requireNonNull(r4, r5)     // Catch: java.lang.Throwable -> L27
                java.util.Optional r4 = (java.util.Optional) r4     // Catch: java.lang.Throwable -> L27
                boolean r10 = r4.isPresent()
                if (r10 == 0) goto L26
                org.reactivestreams.d<? super R> r10 = r9.f76293a
                java.lang.Object r1 = r4.get()
                r10.onNext(r1)
                return r0
            L26:
                return r1
            L27:
                r4 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r4)
                r5 = 2
                q7.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.rxjava3.parallel.ParallelFailureHandling> r6 = r9.f76295c     // Catch: java.lang.Throwable -> L5d
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L5d
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch: java.lang.Throwable -> L5d
                java.lang.String r7 = "The errorHandler returned a null ParallelFailureHandling"
                java.util.Objects.requireNonNull(r6, r7)     // Catch: java.lang.Throwable -> L5d
                io.reactivex.rxjava3.parallel.ParallelFailureHandling r6 = (io.reactivex.rxjava3.parallel.ParallelFailureHandling) r6     // Catch: java.lang.Throwable -> L5d
                int[] r7 = io.reactivex.rxjava3.internal.jdk8.d0.a.f76287a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L8
                if (r6 == r5) goto L5c
                r10 = 3
                if (r6 == r10) goto L56
                r9.cancel()
                r9.onError(r4)
                return r1
            L56:
                r9.cancel()
                r9.onComplete()
            L5c:
                return r1
            L5d:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.jdk8.d0.c.h(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76297e) {
                return;
            }
            this.f76297e = true;
            this.f76293a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76297e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76297e = true;
            this.f76293a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f76297e) {
                return;
            }
            this.f76296d.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76296d, s9)) {
                this.f76296d = s9;
                this.f76293a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f76296d.request(n9);
        }
    }

    public d0(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, Optional<? extends R>> mapper, q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f76284a = source;
        this.f76285b = mapper;
        this.f76286c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f76284a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new b((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f76285b, this.f76286c);
                } else {
                    dVarArr[i4] = new c(dVar, this.f76285b, this.f76286c);
                }
            }
            this.f76284a.X(dVarArr);
        }
    }
}
