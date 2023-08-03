package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCache.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> implements io.reactivex.rxjava3.core.r<T> {

    /* renamed from: l  reason: collision with root package name */
    static final a[] f77786l = new a[0];

    /* renamed from: m  reason: collision with root package name */
    static final a[] f77787m = new a[0];

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f77788c;

    /* renamed from: d  reason: collision with root package name */
    final int f77789d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicReference<a<T>[]> f77790e;

    /* renamed from: f  reason: collision with root package name */
    volatile long f77791f;

    /* renamed from: g  reason: collision with root package name */
    final b<T> f77792g;

    /* renamed from: h  reason: collision with root package name */
    b<T> f77793h;

    /* renamed from: i  reason: collision with root package name */
    int f77794i;

    /* renamed from: j  reason: collision with root package name */
    Throwable f77795j;

    /* renamed from: k  reason: collision with root package name */
    volatile boolean f77796k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCache.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77797g = 6770240836423125754L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77798a;

        /* renamed from: b  reason: collision with root package name */
        final q<T> f77799b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f77800c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        b<T> f77801d;

        /* renamed from: e  reason: collision with root package name */
        int f77802e;

        /* renamed from: f  reason: collision with root package name */
        long f77803f;

        a(org.reactivestreams.d<? super T> downstream, q<T> parent) {
            this.f77798a = downstream;
            this.f77799b = parent;
            this.f77801d = parent.f77792g;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77800c.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f77799b.k9(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.b(this.f77800c, n9);
                this.f77799b.l9(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCache.java */
    /* loaded from: classes4.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f77804a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f77805b;

        b(int capacityHint) {
            this.f77804a = (T[]) new Object[capacityHint];
        }
    }

    public q(io.reactivex.rxjava3.core.m<T> source, int capacityHint) {
        super(source);
        this.f77789d = capacityHint;
        this.f77788c = new AtomicBoolean();
        b<T> bVar = new b<>(capacityHint);
        this.f77792g = bVar;
        this.f77793h = bVar;
        this.f77790e = new AtomicReference<>(f77786l);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> t9) {
        a<T> aVar = new a<>(t9, this);
        t9.onSubscribe(aVar);
        g9(aVar);
        if (!this.f77788c.get() && this.f77788c.compareAndSet(false, true)) {
            this.f76811b.G6(this);
        } else {
            l9(aVar);
        }
    }

    void g9(a<T> consumer) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f77790e.get();
            if (aVarArr == f77787m) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = consumer;
        } while (!this.f77790e.compareAndSet(aVarArr, aVarArr2));
    }

    long h9() {
        return this.f77791f;
    }

    boolean i9() {
        return this.f77790e.get().length != 0;
    }

    boolean j9() {
        return this.f77788c.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void k9(a<T> consumer) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f77790e.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == consumer) {
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
                aVarArr2 = f77786l;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f77790e.compareAndSet(aVarArr, aVarArr2));
    }

    void l9(a<T> consumer) {
        if (consumer.getAndIncrement() != 0) {
            return;
        }
        long j4 = consumer.f77803f;
        int i4 = consumer.f77802e;
        b<T> bVar = consumer.f77801d;
        AtomicLong atomicLong = consumer.f77800c;
        org.reactivestreams.d<? super T> dVar = consumer.f77798a;
        int i10 = this.f77789d;
        int i11 = 1;
        while (true) {
            boolean z9 = this.f77796k;
            boolean z10 = this.f77791f == j4;
            if (z9 && z10) {
                consumer.f77801d = null;
                Throwable th = this.f77795j;
                if (th != null) {
                    dVar.onError(th);
                    return;
                } else {
                    dVar.onComplete();
                    return;
                }
            }
            if (!z10) {
                long j10 = atomicLong.get();
                if (j10 == Long.MIN_VALUE) {
                    consumer.f77801d = null;
                    return;
                } else if (j10 != j4) {
                    if (i4 == i10) {
                        bVar = bVar.f77805b;
                        i4 = 0;
                    }
                    dVar.onNext((Object) bVar.f77804a[i4]);
                    i4++;
                    j4++;
                }
            }
            consumer.f77803f = j4;
            consumer.f77802e = i4;
            consumer.f77801d = bVar;
            i11 = consumer.addAndGet(-i11);
            if (i11 == 0) {
                return;
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f77796k = true;
        for (a<T> aVar : this.f77790e.getAndSet(f77787m)) {
            l9(aVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f77796k) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f77795j = t9;
        this.f77796k = true;
        for (a<T> aVar : this.f77790e.getAndSet(f77787m)) {
            l9(aVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        int i4 = this.f77794i;
        if (i4 == this.f77789d) {
            b<T> bVar = new b<>(i4);
            bVar.f77804a[0] = t9;
            this.f77794i = 1;
            this.f77793h.f77805b = bVar;
            this.f77793h = bVar;
        } else {
            this.f77793h.f77804a[i4] = t9;
            this.f77794i = i4 + 1;
        }
        this.f77791f++;
        for (a<T> aVar : this.f77790e.get()) {
            l9(aVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        s9.request(Long.MAX_VALUE);
    }
}
