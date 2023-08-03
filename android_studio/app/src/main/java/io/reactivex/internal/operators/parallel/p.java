package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelSortedJoin.java */
/* loaded from: classes3.dex */
public final class p<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<List<T>> f75302b;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super T> f75303c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelSortedJoin.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<List<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75304c = 6751017204873808094L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f75305a;

        /* renamed from: b  reason: collision with root package name */
        final int f75306b;

        a(b<T> bVar, int i4) {
            this.f75305a = bVar;
            this.f75306b = i4;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        /* renamed from: b */
        public void onNext(List<T> list) {
            this.f75305a.d(list, this.f75306b);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75305a.c(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelSortedJoin.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: j  reason: collision with root package name */
        private static final long f75307j = 3481980673745556697L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75308a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f75309b;

        /* renamed from: c  reason: collision with root package name */
        final List<T>[] f75310c;

        /* renamed from: d  reason: collision with root package name */
        final int[] f75311d;

        /* renamed from: e  reason: collision with root package name */
        final Comparator<? super T> f75312e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f75314g;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f75313f = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f75315h = new AtomicInteger();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<Throwable> f75316i = new AtomicReference<>();

        b(org.reactivestreams.d<? super T> dVar, int i4, Comparator<? super T> comparator) {
            this.f75308a = dVar;
            this.f75312e = comparator;
            a<T>[] aVarArr = new a[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                aVarArr[i10] = new a<>(this, i10);
            }
            this.f75309b = aVarArr;
            this.f75310c = new List[i4];
            this.f75311d = new int[i4];
            this.f75315h.lazySet(i4);
        }

        void a() {
            for (a<T> aVar : this.f75309b) {
                aVar.a();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x00a3, code lost:
            if (r15 != 0) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00a7, code lost:
            if (r16.f75314g == false) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00a9, code lost:
            java.util.Arrays.fill(r3, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00ad, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
            r10 = r16.f75316i.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00b7, code lost:
            if (r10 == null) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00b9, code lost:
            a();
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.onError(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00c2, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
            r5 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00c4, code lost:
            if (r5 >= r4) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00ce, code lost:
            if (r0[r5] == r3[r5].size()) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00d0, code lost:
            r13 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00d2, code lost:
            r5 = r5 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00d5, code lost:
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
            if (r13 == false) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00d8, code lost:
            java.util.Arrays.fill(r3, (java.lang.Object) null);
            r2.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00df, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00e4, code lost:
            if (r11 == 0) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00ed, code lost:
            if (r7 == Long.MAX_VALUE) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00ef, code lost:
            r16.f75313f.addAndGet(-r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00f5, code lost:
            r5 = get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00f9, code lost:
            if (r5 != r6) goto L90;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00fb, code lost:
            r5 = addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0100, code lost:
            if (r5 != 0) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0102, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 262
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.p.b.b():void");
        }

        void c(Throwable th) {
            if (this.f75316i.compareAndSet(null, th)) {
                b();
            } else if (th != this.f75316i.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f75314g) {
                return;
            }
            this.f75314g = true;
            a();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.f75310c, (Object) null);
            }
        }

        void d(List<T> list, int i4) {
            this.f75310c[i4] = list;
            if (this.f75315h.decrementAndGet() == 0) {
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f75313f, j4);
                if (this.f75315h.get() == 0) {
                    b();
                }
            }
        }
    }

    public p(io.reactivex.parallel.a<List<T>> aVar, Comparator<? super T> comparator) {
        this.f75302b = aVar;
        this.f75303c = comparator;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        b bVar = new b(dVar, this.f75302b.F(), this.f75303c);
        dVar.onSubscribe(bVar);
        this.f75302b.Q(bVar.f75309b);
    }
}
