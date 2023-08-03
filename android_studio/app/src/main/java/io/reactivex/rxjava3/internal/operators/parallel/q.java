package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelSortedJoin.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<List<T>> f80682b;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super T> f80683c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelSortedJoin.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements r<List<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80684c = 6751017204873808094L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f80685a;

        /* renamed from: b  reason: collision with root package name */
        final int f80686b;

        a(b<T> parent, int index) {
            this.f80685a = parent;
            this.f80686b = index;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        /* renamed from: b */
        public void onNext(List<T> t9) {
            this.f80685a.d(t9, this.f80686b);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f80685a.c(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelSortedJoin.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: j  reason: collision with root package name */
        private static final long f80687j = 3481980673745556697L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80688a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f80689b;

        /* renamed from: c  reason: collision with root package name */
        final List<T>[] f80690c;

        /* renamed from: d  reason: collision with root package name */
        final int[] f80691d;

        /* renamed from: e  reason: collision with root package name */
        final Comparator<? super T> f80692e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80694g;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f80693f = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f80695h = new AtomicInteger();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<Throwable> f80696i = new AtomicReference<>();

        b(org.reactivestreams.d<? super T> actual, int n9, Comparator<? super T> comparator) {
            this.f80688a = actual;
            this.f80692e = comparator;
            a<T>[] aVarArr = new a[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                aVarArr[i4] = new a<>(this, i4);
            }
            this.f80689b = aVarArr;
            this.f80690c = new List[n9];
            this.f80691d = new int[n9];
            this.f80695h.lazySet(n9);
        }

        void a() {
            for (a<T> aVar : this.f80689b) {
                aVar.a();
            }
        }

        void b() {
            boolean z9;
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f80688a;
            List<T>[] listArr = this.f80690c;
            int[] iArr = this.f80691d;
            int length = iArr.length;
            int i4 = 1;
            do {
                long j4 = this.f80693f.get();
                long j10 = 0;
                while (j10 != j4) {
                    if (this.f80694g) {
                        Arrays.fill(listArr, (Object) null);
                        return;
                    }
                    Throwable th = this.f80696i.get();
                    if (th != null) {
                        a();
                        Arrays.fill(listArr, (Object) null);
                        dVar.onError(th);
                        return;
                    }
                    int i10 = -1;
                    T t9 = (Object) null;
                    for (int i11 = 0; i11 < length; i11++) {
                        List<T> list = listArr[i11];
                        int i12 = iArr[i11];
                        if (list.size() != i12) {
                            if (t9 == null) {
                                t9 = list.get(i12);
                            } else {
                                T t10 = list.get(i12);
                                try {
                                    if (this.f80692e.compare(t9, t10) > 0) {
                                        t9 = t10;
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    a();
                                    Arrays.fill(listArr, (Object) null);
                                    if (!this.f80696i.compareAndSet(null, th2)) {
                                        io.reactivex.rxjava3.plugins.a.Y(th2);
                                    }
                                    dVar.onError(this.f80696i.get());
                                    return;
                                }
                            }
                            i10 = i11;
                        }
                    }
                    if (t9 == null) {
                        Arrays.fill(listArr, (Object) null);
                        dVar.onComplete();
                        return;
                    }
                    dVar.onNext(t9);
                    iArr[i10] = iArr[i10] + 1;
                    j10++;
                }
                if (this.f80694g) {
                    Arrays.fill(listArr, (Object) null);
                    return;
                }
                Throwable th3 = this.f80696i.get();
                if (th3 != null) {
                    a();
                    Arrays.fill(listArr, (Object) null);
                    dVar.onError(th3);
                    return;
                }
                int i13 = 0;
                while (true) {
                    if (i13 >= length) {
                        z9 = true;
                        break;
                    } else if (iArr[i13] != listArr[i13].size()) {
                        z9 = false;
                        break;
                    } else {
                        i13++;
                    }
                }
                if (z9) {
                    Arrays.fill(listArr, (Object) null);
                    dVar.onComplete();
                    return;
                }
                if (j10 != 0) {
                    io.reactivex.rxjava3.internal.util.b.e(this.f80693f, j10);
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        void c(Throwable e4) {
            if (this.f80696i.compareAndSet(null, e4)) {
                b();
            } else if (e4 != this.f80696i.get()) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f80694g) {
                return;
            }
            this.f80694g = true;
            a();
            if (getAndIncrement() == 0) {
                Arrays.fill(this.f80690c, (Object) null);
            }
        }

        void d(List<T> value, int index) {
            this.f80690c[index] = value;
            if (this.f80695h.decrementAndGet() == 0) {
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f80693f, n9);
                if (this.f80695h.get() == 0) {
                    b();
                }
            }
        }
    }

    public q(io.reactivex.rxjava3.parallel.a<List<T>> source, Comparator<? super T> comparator) {
        this.f80682b = source;
        this.f80683c = comparator;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        b bVar = new b(s9, this.f80682b.M(), this.f80683c);
        s9.onSubscribe(bVar);
        this.f80682b.X(bVar.f80689b);
    }
}
