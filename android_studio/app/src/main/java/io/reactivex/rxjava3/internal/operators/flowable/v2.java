package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowablePublishMulticast.java */
/* loaded from: classes4.dex */
public final class v2<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super io.reactivex.rxjava3.core.m<T>, ? extends org.reactivestreams.c<? extends R>> f78086c;

    /* renamed from: d  reason: collision with root package name */
    final int f78087d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f78088e;

    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.core.m<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: m  reason: collision with root package name */
        static final b[] f78089m = new b[0];

        /* renamed from: n  reason: collision with root package name */
        static final b[] f78090n = new b[0];

        /* renamed from: d  reason: collision with root package name */
        final int f78093d;

        /* renamed from: e  reason: collision with root package name */
        final int f78094e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f78095f;

        /* renamed from: h  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<T> f78097h;

        /* renamed from: i  reason: collision with root package name */
        int f78098i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78099j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f78100k;

        /* renamed from: l  reason: collision with root package name */
        int f78101l;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f78091b = new AtomicInteger();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f78096g = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<b<T>[]> f78092c = new AtomicReference<>(f78089m);

        a(int prefetch, boolean delayError) {
            this.f78093d = prefetch;
            this.f78094e = prefetch - (prefetch >> 2);
            this.f78095f = delayError;
        }

        @Override // io.reactivex.rxjava3.core.m
        protected void H6(org.reactivestreams.d<? super T> s9) {
            b<T> bVar = new b<>(s9, this);
            s9.onSubscribe(bVar);
            if (g9(bVar)) {
                if (bVar.a()) {
                    k9(bVar);
                    return;
                } else {
                    i9();
                    return;
                }
            }
            Throwable th = this.f78100k;
            if (th != null) {
                s9.onError(th);
            } else {
                s9.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar;
            SubscriptionHelper.cancel(this.f78096g);
            if (this.f78091b.getAndIncrement() != 0 || (qVar = this.f78097h) == null) {
                return;
            }
            qVar.clear();
        }

        boolean g9(b<T> s9) {
            b<T>[] bVarArr;
            b<T>[] bVarArr2;
            do {
                bVarArr = this.f78092c.get();
                if (bVarArr == f78090n) {
                    return false;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = s9;
            } while (!this.f78092c.compareAndSet(bVarArr, bVarArr2));
            return true;
        }

        void h9() {
            b<T>[] andSet;
            for (b<T> bVar : this.f78092c.getAndSet(f78090n)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f78103a.onComplete();
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
            r5 = r24.f78099j;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0106, code lost:
            if (r5 == false) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x010a, code lost:
            if (r24.f78095f != false) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x010c, code lost:
            r6 = r24.f78100k;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x010e, code lost:
            if (r6 == null) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0110, code lost:
            j9(r6);
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
            r0 = r24.f78100k;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x011e, code lost:
            if (r0 == null) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0120, code lost:
            j9(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0124, code lost:
            h9();
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0127, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void i9() {
            /*
                Method dump skipped, instructions count: 326
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.v2.a.i9():void");
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78096g.get() == SubscriptionHelper.CANCELLED;
        }

        void j9(Throwable ex) {
            b<T>[] andSet;
            for (b<T> bVar : this.f78092c.getAndSet(f78090n)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f78103a.onError(ex);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void k9(b<T> s9) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f78092c.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (bVarArr[i10] == s9) {
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
                    bVarArr2 = f78089m;
                } else {
                    b[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i4);
                    System.arraycopy(bVarArr, i4 + 1, bVarArr3, i4, (length - i4) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!this.f78092c.compareAndSet(bVarArr, bVarArr2));
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78099j) {
                return;
            }
            this.f78099j = true;
            i9();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78099j) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78100k = t9;
            this.f78099j = true;
            i9();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78099j) {
                return;
            }
            if (this.f78098i == 0 && !this.f78097h.offer(t9)) {
                this.f78096g.get().cancel();
                onError(new MissingBackpressureException());
                return;
            }
            i9();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f78096g, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f78098i = requestFusion;
                        this.f78097h = nVar;
                        this.f78099j = true;
                        i9();
                        return;
                    } else if (requestFusion == 2) {
                        this.f78098i = requestFusion;
                        this.f78097h = nVar;
                        io.reactivex.rxjava3.internal.util.o.j(s9, this.f78093d);
                        return;
                    }
                }
                this.f78097h = io.reactivex.rxjava3.internal.util.o.c(this.f78093d);
                io.reactivex.rxjava3.internal.util.o.j(s9, this.f78093d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78102d = 8664815189257569791L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78103a;

        /* renamed from: b  reason: collision with root package name */
        final a<T> f78104b;

        /* renamed from: c  reason: collision with root package name */
        long f78105c;

        b(org.reactivestreams.d<? super T> actual, a<T> parent) {
            this.f78103a = actual;
            this.f78104b = parent;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f78104b.k9(this);
                this.f78104b.i9();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.b(this, n9);
                this.f78104b.i9();
            }
        }
    }

    /* compiled from: FlowablePublishMulticast.java */
    /* loaded from: classes4.dex */
    static final class c<R> implements io.reactivex.rxjava3.core.r<R>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78106a;

        /* renamed from: b  reason: collision with root package name */
        final a<?> f78107b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78108c;

        c(org.reactivestreams.d<? super R> actual, a<?> processor) {
            this.f78106a = actual;
            this.f78107b = processor;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78108c.cancel();
            this.f78107b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78106a.onComplete();
            this.f78107b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78106a.onError(t9);
            this.f78107b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(R t9) {
            this.f78106a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78108c, s9)) {
                this.f78108c = s9;
                this.f78106a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78108c.request(n9);
        }
    }

    public v2(io.reactivex.rxjava3.core.m<T> source, q7.o<? super io.reactivex.rxjava3.core.m<T>, ? extends org.reactivestreams.c<? extends R>> selector, int prefetch, boolean delayError) {
        super(source);
        this.f78086c = selector;
        this.f78087d = prefetch;
        this.f78088e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        a aVar = new a(this.f78087d, this.f78088e);
        try {
            org.reactivestreams.c<? extends R> apply = this.f78086c.apply(aVar);
            Objects.requireNonNull(apply, "selector returned a null Publisher");
            apply.i(new c(s9, aVar));
            this.f76811b.G6(aVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
