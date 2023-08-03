package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.operators.flowable.z1;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCombineLatest.java */
/* loaded from: classes3.dex */
public final class u<T, R> extends io.reactivex.j<R> {
    @m7.f

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f72766b;
    @m7.f

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f72767c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f72768d;

    /* renamed from: e  reason: collision with root package name */
    final int f72769e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f72770f;

    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72771o = -5082275438355852221L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72772b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f72773c;

        /* renamed from: d  reason: collision with root package name */
        final b<T>[] f72774d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f72775e;

        /* renamed from: f  reason: collision with root package name */
        final Object[] f72776f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f72777g;

        /* renamed from: h  reason: collision with root package name */
        boolean f72778h;

        /* renamed from: i  reason: collision with root package name */
        int f72779i;

        /* renamed from: j  reason: collision with root package name */
        int f72780j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72781k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicLong f72782l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f72783m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicReference<Throwable> f72784n;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super Object[], ? extends R> oVar, int i4, int i10, boolean z9) {
            this.f72772b = dVar;
            this.f72773c = oVar;
            b<T>[] bVarArr = new b[i4];
            for (int i11 = 0; i11 < i4; i11++) {
                bVarArr[i11] = new b<>(this, i11, i10);
            }
            this.f72774d = bVarArr;
            this.f72776f = new Object[i4];
            this.f72775e = new io.reactivex.internal.queue.b<>(i10);
            this.f72782l = new AtomicLong();
            this.f72784n = new AtomicReference<>();
            this.f72777g = z9;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f72778h) {
                m();
            } else {
                l();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72781k = true;
            j();
        }

        @Override // o7.o
        public void clear() {
            this.f72775e.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f72775e.isEmpty();
        }

        void j() {
            for (b<T> bVar : this.f72774d) {
                bVar.a();
            }
        }

        boolean k(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, io.reactivex.internal.queue.b<?> bVar) {
            if (this.f72781k) {
                j();
                bVar.clear();
                return true;
            } else if (z9) {
                if (this.f72777g) {
                    if (z10) {
                        j();
                        Throwable c10 = io.reactivex.internal.util.g.c(this.f72784n);
                        if (c10 != null && c10 != io.reactivex.internal.util.g.f75916a) {
                            dVar.onError(c10);
                        } else {
                            dVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable c11 = io.reactivex.internal.util.g.c(this.f72784n);
                if (c11 != null && c11 != io.reactivex.internal.util.g.f75916a) {
                    j();
                    bVar.clear();
                    dVar.onError(c11);
                    return true;
                } else if (z10) {
                    j();
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void l() {
            int i4;
            org.reactivestreams.d<? super R> dVar = this.f72772b;
            io.reactivex.internal.queue.b<?> bVar = this.f72775e;
            int i10 = 1;
            do {
                long j4 = this.f72782l.get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f72783m;
                    Object poll = bVar.poll();
                    boolean z10 = poll == null;
                    if (k(z9, z10, dVar, bVar)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    try {
                        dVar.onNext((Object) io.reactivex.internal.functions.b.g(this.f72773c.apply((Object[]) bVar.poll()), "The combiner returned a null value"));
                        ((b) poll).b();
                        j10++;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        j();
                        io.reactivex.internal.util.g.a(this.f72784n, th);
                        dVar.onError(io.reactivex.internal.util.g.c(this.f72784n));
                        return;
                    }
                }
                if (i4 == 0 && k(this.f72783m, bVar.isEmpty(), dVar, bVar)) {
                    return;
                }
                if (j10 != 0 && j4 != Long.MAX_VALUE) {
                    this.f72782l.addAndGet(-j10);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        void m() {
            org.reactivestreams.d<? super R> dVar = this.f72772b;
            io.reactivex.internal.queue.b<Object> bVar = this.f72775e;
            int i4 = 1;
            while (!this.f72781k) {
                Throwable th = this.f72784n.get();
                if (th != null) {
                    bVar.clear();
                    dVar.onError(th);
                    return;
                }
                boolean z9 = this.f72783m;
                boolean isEmpty = bVar.isEmpty();
                if (!isEmpty) {
                    dVar.onNext(null);
                }
                if (z9 && isEmpty) {
                    dVar.onComplete();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            bVar.clear();
        }

        void n(int i4) {
            synchronized (this) {
                Object[] objArr = this.f72776f;
                if (objArr[i4] != null) {
                    int i10 = this.f72780j + 1;
                    if (i10 == objArr.length) {
                        this.f72783m = true;
                    } else {
                        this.f72780j = i10;
                        return;
                    }
                } else {
                    this.f72783m = true;
                }
                b();
            }
        }

        void o(int i4, Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f72784n, th)) {
                if (!this.f72777g) {
                    j();
                    this.f72783m = true;
                    b();
                    return;
                }
                n(i4);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void p(int i4, T t9) {
            boolean z9;
            synchronized (this) {
                Object[] objArr = this.f72776f;
                int i10 = this.f72779i;
                if (objArr[i4] == null) {
                    i10++;
                    this.f72779i = i10;
                }
                objArr[i4] = t9;
                if (objArr.length == i10) {
                    this.f72775e.offer(this.f72774d[i4], objArr.clone());
                    z9 = false;
                } else {
                    z9 = true;
                }
            }
            if (z9) {
                this.f72774d[i4].b();
            } else {
                b();
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Object poll = this.f72775e.poll();
            if (poll == null) {
                return null;
            }
            R r9 = (R) io.reactivex.internal.functions.b.g(this.f72773c.apply((Object[]) this.f72775e.poll()), "The combiner returned a null value");
            ((b) poll).b();
            return r9;
        }

        void q(org.reactivestreams.c<? extends T>[] cVarArr, int i4) {
            b<T>[] bVarArr = this.f72774d;
            for (int i10 = 0; i10 < i4 && !this.f72783m && !this.f72781k; i10++) {
                cVarArr[i10].i(bVarArr[i10]);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72782l, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 4) != 0) {
                return 0;
            }
            int i10 = i4 & 2;
            this.f72778h = i10 != 0;
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f72785f = -8730235182291002949L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, ?> f72786a;

        /* renamed from: b  reason: collision with root package name */
        final int f72787b;

        /* renamed from: c  reason: collision with root package name */
        final int f72788c;

        /* renamed from: d  reason: collision with root package name */
        final int f72789d;

        /* renamed from: e  reason: collision with root package name */
        int f72790e;

        b(a<T, ?> aVar, int i4, int i10) {
            this.f72786a = aVar;
            this.f72787b = i4;
            this.f72788c = i10;
            this.f72789d = i10 - (i10 >> 2);
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b() {
            int i4 = this.f72790e + 1;
            if (i4 == this.f72789d) {
                this.f72790e = 0;
                get().request(i4);
                return;
            }
            this.f72790e = i4;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72786a.n(this.f72787b);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72786a.o(this.f72787b, th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72786a.p(this.f72787b, t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, this.f72788c);
        }
    }

    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes3.dex */
    final class c implements n7.o<T, R> {
        c() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return u.this.f72768d.apply(new Object[]{t9});
        }
    }

    public u(@m7.e org.reactivestreams.c<? extends T>[] cVarArr, @m7.e n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
        this.f72766b = cVarArr;
        this.f72767c = null;
        this.f72768d = oVar;
        this.f72769e = i4;
        this.f72770f = z9;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super R> dVar) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f72766b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                Iterator it = (Iterator) io.reactivex.internal.functions.b.g(this.f72767c.iterator(), "The iterator returned is null");
                length = 0;
                while (it.hasNext()) {
                    try {
                        try {
                            org.reactivestreams.c<? extends T> cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(it.next(), "The publisher returned by the iterator is null");
                            if (length == cVarArr.length) {
                                org.reactivestreams.c<? extends T>[] cVarArr2 = new org.reactivestreams.c[(length >> 2) + length];
                                System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
                                cVarArr = cVarArr2;
                            }
                            cVarArr[length] = cVar;
                            length++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            EmptySubscription.error(th, dVar);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptySubscription.error(th2, dVar);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                EmptySubscription.error(th3, dVar);
                return;
            }
        } else {
            length = cVarArr.length;
        }
        int i4 = length;
        if (i4 == 0) {
            EmptySubscription.complete(dVar);
        } else if (i4 == 1) {
            cVarArr[0].i(new z1.b(dVar, new c()));
        } else {
            a aVar = new a(dVar, this.f72768d, i4, this.f72769e, this.f72770f);
            dVar.onSubscribe(aVar);
            aVar.q(cVarArr, i4);
        }
    }

    public u(@m7.e Iterable<? extends org.reactivestreams.c<? extends T>> iterable, @m7.e n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
        this.f72766b = null;
        this.f72767c = iterable;
        this.f72768d = oVar;
        this.f72769e = i4;
        this.f72770f = z9;
    }
}
