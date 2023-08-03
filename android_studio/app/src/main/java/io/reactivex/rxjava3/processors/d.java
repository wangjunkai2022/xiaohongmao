package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.fuseable.n;
import io.reactivex.rxjava3.internal.fuseable.q;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MulticastProcessor.java */
@p7.g("none")
@p7.a(BackpressureKind.FULL)
/* loaded from: classes4.dex */
public final class d<T> extends c<T> {

    /* renamed from: m  reason: collision with root package name */
    static final a[] f81437m = new a[0];

    /* renamed from: n  reason: collision with root package name */
    static final a[] f81438n = new a[0];

    /* renamed from: e  reason: collision with root package name */
    final int f81442e;

    /* renamed from: f  reason: collision with root package name */
    final int f81443f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f81444g;

    /* renamed from: h  reason: collision with root package name */
    volatile q<T> f81445h;

    /* renamed from: i  reason: collision with root package name */
    volatile boolean f81446i;

    /* renamed from: j  reason: collision with root package name */
    volatile Throwable f81447j;

    /* renamed from: k  reason: collision with root package name */
    int f81448k;

    /* renamed from: l  reason: collision with root package name */
    int f81449l;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f81439b = new AtomicInteger();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81441d = new AtomicReference<>(f81437m);

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f81440c = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MulticastProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f81450d = -363282618957264509L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f81451a;

        /* renamed from: b  reason: collision with root package name */
        final d<T> f81452b;

        /* renamed from: c  reason: collision with root package name */
        long f81453c;

        a(org.reactivestreams.d<? super T> actual, d<T> parent) {
            this.f81451a = actual;
            this.f81452b = parent;
        }

        void a() {
            if (get() != Long.MIN_VALUE) {
                this.f81451a.onComplete();
            }
        }

        void b(Throwable t9) {
            if (get() != Long.MIN_VALUE) {
                this.f81451a.onError(t9);
            }
        }

        void c(T t9) {
            if (get() != Long.MIN_VALUE) {
                this.f81453c++;
                this.f81451a.onNext(t9);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f81452b.s9(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                long b10 = io.reactivex.rxjava3.internal.util.b.b(this, n9);
                if (b10 == Long.MIN_VALUE || b10 == Long.MAX_VALUE) {
                    return;
                }
                this.f81452b.q9();
            }
        }
    }

    d(int bufferSize, boolean refCount) {
        this.f81442e = bufferSize;
        this.f81443f = bufferSize - (bufferSize >> 2);
        this.f81444g = refCount;
    }

    @p7.c
    @p7.e
    public static <T> d<T> m9() {
        return new d<>(m.V(), false);
    }

    @p7.c
    @p7.e
    public static <T> d<T> n9(int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return new d<>(bufferSize, false);
    }

    @p7.c
    @p7.e
    public static <T> d<T> o9(int bufferSize, boolean refCount) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return new d<>(bufferSize, refCount);
    }

    @p7.c
    @p7.e
    public static <T> d<T> p9(boolean refCount) {
        return new d<>(m.V(), refCount);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super T> s9) {
        Throwable th;
        a<T> aVar = new a<>(s9, this);
        s9.onSubscribe(aVar);
        if (l9(aVar)) {
            if (aVar.get() == Long.MIN_VALUE) {
                s9(aVar);
            } else {
                q9();
            }
        } else if (this.f81446i && (th = this.f81447j) != null) {
            s9.onError(th);
        } else {
            s9.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public Throwable g9() {
        if (this.f81446i) {
            return this.f81447j;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        return this.f81446i && this.f81447j == null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81441d.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        return this.f81446i && this.f81447j != null;
    }

    boolean l9(a<T> inner) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81441d.get();
            if (aVarArr == f81438n) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f81441d.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f81446i = true;
        q9();
    }

    @Override // org.reactivestreams.d
    public void onError(@p7.e Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (!this.f81446i) {
            this.f81447j = t9;
            this.f81446i = true;
            q9();
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(t9);
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        if (this.f81446i) {
            return;
        }
        if (this.f81449l == 0) {
            io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
            if (!this.f81445h.offer(t9)) {
                SubscriptionHelper.cancel(this.f81440c);
                onError(new MissingBackpressureException());
                return;
            }
        }
        q9();
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (SubscriptionHelper.setOnce(this.f81440c, s9)) {
            if (s9 instanceof n) {
                n nVar = (n) s9;
                int requestFusion = nVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f81449l = requestFusion;
                    this.f81445h = nVar;
                    this.f81446i = true;
                    q9();
                    return;
                } else if (requestFusion == 2) {
                    this.f81449l = requestFusion;
                    this.f81445h = nVar;
                    s9.request(this.f81442e);
                    return;
                }
            }
            this.f81445h = new SpscArrayQueue(this.f81442e);
            s9.request(this.f81442e);
        }
    }

    void q9() {
        int i4;
        T t9;
        if (this.f81439b.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<a<T>[]> atomicReference = this.f81441d;
        int i10 = this.f81448k;
        int i11 = this.f81443f;
        int i12 = this.f81449l;
        int i13 = 1;
        while (true) {
            q<T> qVar = this.f81445h;
            if (qVar != null) {
                a<T>[] aVarArr = atomicReference.get();
                if (aVarArr.length != 0) {
                    int length = aVarArr.length;
                    long j4 = -1;
                    long j10 = -1;
                    int i14 = 0;
                    while (i14 < length) {
                        a<T> aVar = aVarArr[i14];
                        long j11 = aVar.get();
                        if (j11 >= 0) {
                            if (j10 == j4) {
                                j10 = j11 - aVar.f81453c;
                            } else {
                                j10 = Math.min(j10, j11 - aVar.f81453c);
                            }
                        }
                        i14++;
                        j4 = -1;
                    }
                    int i15 = i10;
                    while (true) {
                        i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                        if (i4 <= 0) {
                            break;
                        }
                        a<T>[] aVarArr2 = atomicReference.get();
                        if (aVarArr2 == f81438n) {
                            qVar.clear();
                            return;
                        } else if (aVarArr != aVarArr2) {
                            break;
                        } else {
                            boolean z9 = this.f81446i;
                            try {
                                t9 = qVar.poll();
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                SubscriptionHelper.cancel(this.f81440c);
                                this.f81447j = th;
                                this.f81446i = true;
                                t9 = null;
                                z9 = true;
                            }
                            boolean z10 = t9 == null;
                            if (z9 && z10) {
                                Throwable th2 = this.f81447j;
                                if (th2 != null) {
                                    for (a<T> aVar2 : atomicReference.getAndSet(f81438n)) {
                                        aVar2.b(th2);
                                    }
                                    return;
                                }
                                for (a<T> aVar3 : atomicReference.getAndSet(f81438n)) {
                                    aVar3.a();
                                }
                                return;
                            } else if (z10) {
                                break;
                            } else {
                                for (a<T> aVar4 : aVarArr) {
                                    aVar4.c(t9);
                                }
                                j10--;
                                if (i12 != 1 && (i15 = i15 + 1) == i11) {
                                    this.f81440c.get().request(i11);
                                    i15 = 0;
                                }
                            }
                        }
                    }
                    if (i4 == 0) {
                        a<T>[] aVarArr3 = atomicReference.get();
                        a<T>[] aVarArr4 = f81438n;
                        if (aVarArr3 == aVarArr4) {
                            qVar.clear();
                            return;
                        } else if (aVarArr != aVarArr3) {
                            i10 = i15;
                        } else if (this.f81446i && qVar.isEmpty()) {
                            Throwable th3 = this.f81447j;
                            if (th3 != null) {
                                for (a<T> aVar5 : atomicReference.getAndSet(aVarArr4)) {
                                    aVar5.b(th3);
                                }
                                return;
                            }
                            for (a<T> aVar6 : atomicReference.getAndSet(aVarArr4)) {
                                aVar6.a();
                            }
                            return;
                        }
                    }
                    i10 = i15;
                }
            }
            this.f81448k = i10;
            i13 = this.f81439b.addAndGet(-i13);
            if (i13 == 0) {
                return;
            }
        }
    }

    @p7.c
    public boolean r9(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "offer called with a null value.");
        if (this.f81446i) {
            return false;
        }
        if (this.f81449l == 0) {
            if (this.f81445h.offer(t9)) {
                q9();
                return true;
            }
            return false;
        }
        throw new IllegalStateException("offer() should not be called in fusion mode!");
    }

    void s9(a<T> inner) {
        while (true) {
            a<T>[] aVarArr = this.f81441d.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == inner) {
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
                if (this.f81444g) {
                    if (this.f81441d.compareAndSet(aVarArr, f81438n)) {
                        SubscriptionHelper.cancel(this.f81440c);
                        this.f81446i = true;
                        return;
                    }
                } else if (this.f81441d.compareAndSet(aVarArr, f81437m)) {
                    return;
                }
            } else {
                a<T>[] aVarArr2 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr2, i4, (length - i4) - 1);
                if (this.f81441d.compareAndSet(aVarArr, aVarArr2)) {
                    return;
                }
            }
        }
    }

    public void t9() {
        if (SubscriptionHelper.setOnce(this.f81440c, EmptySubscription.INSTANCE)) {
            this.f81445h = new SpscArrayQueue(this.f81442e);
        }
    }

    public void u9() {
        if (SubscriptionHelper.setOnce(this.f81440c, EmptySubscription.INSTANCE)) {
            this.f81445h = new io.reactivex.rxjava3.internal.queue.b(this.f81442e);
        }
    }
}
