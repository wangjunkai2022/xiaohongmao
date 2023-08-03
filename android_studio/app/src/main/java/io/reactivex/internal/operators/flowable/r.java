package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCache.java */
/* loaded from: classes3.dex */
public final class r<T> extends io.reactivex.internal.operators.flowable.a<T, T> implements io.reactivex.o<T> {

    /* renamed from: l  reason: collision with root package name */
    static final a[] f72544l = new a[0];

    /* renamed from: m  reason: collision with root package name */
    static final a[] f72545m = new a[0];

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f72546c;

    /* renamed from: d  reason: collision with root package name */
    final int f72547d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicReference<a<T>[]> f72548e;

    /* renamed from: f  reason: collision with root package name */
    volatile long f72549f;

    /* renamed from: g  reason: collision with root package name */
    final b<T> f72550g;

    /* renamed from: h  reason: collision with root package name */
    b<T> f72551h;

    /* renamed from: i  reason: collision with root package name */
    int f72552i;

    /* renamed from: j  reason: collision with root package name */
    Throwable f72553j;

    /* renamed from: k  reason: collision with root package name */
    volatile boolean f72554k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCache.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72555g = 6770240836423125754L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72556a;

        /* renamed from: b  reason: collision with root package name */
        final r<T> f72557b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f72558c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        b<T> f72559d;

        /* renamed from: e  reason: collision with root package name */
        int f72560e;

        /* renamed from: f  reason: collision with root package name */
        long f72561f;

        a(org.reactivestreams.d<? super T> dVar, r<T> rVar) {
            this.f72556a = dVar;
            this.f72557b = rVar;
            this.f72559d = rVar.f72550g;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72558c.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f72557b.Q8(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.b(this.f72558c, j4);
                this.f72557b.R8(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCache.java */
    /* loaded from: classes3.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f72562a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f72563b;

        b(int i4) {
            this.f72562a = (T[]) new Object[i4];
        }
    }

    public r(io.reactivex.j<T> jVar, int i4) {
        super(jVar);
        this.f72547d = i4;
        this.f72546c = new AtomicBoolean();
        b<T> bVar = new b<>(i4);
        this.f72550g = bVar;
        this.f72551h = bVar;
        this.f72548e = new AtomicReference<>(f72544l);
    }

    void M8(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f72548e.get();
            if (aVarArr == f72545m) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f72548e.compareAndSet(aVarArr, aVarArr2));
    }

    long N8() {
        return this.f72549f;
    }

    boolean O8() {
        return this.f72548e.get().length != 0;
    }

    boolean P8() {
        return this.f72546c.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Q8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f72548e.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == aVar) {
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
                aVarArr2 = f72544l;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f72548e.compareAndSet(aVarArr, aVarArr2));
    }

    void R8(a<T> aVar) {
        if (aVar.getAndIncrement() != 0) {
            return;
        }
        long j4 = aVar.f72561f;
        int i4 = aVar.f72560e;
        b<T> bVar = aVar.f72559d;
        AtomicLong atomicLong = aVar.f72558c;
        org.reactivestreams.d<? super T> dVar = aVar.f72556a;
        int i10 = this.f72547d;
        int i11 = 1;
        while (true) {
            boolean z9 = this.f72554k;
            boolean z10 = this.f72549f == j4;
            if (z9 && z10) {
                aVar.f72559d = null;
                Throwable th = this.f72553j;
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
                    aVar.f72559d = null;
                    return;
                } else if (j10 != j4) {
                    if (i4 == i10) {
                        bVar = bVar.f72563b;
                        i4 = 0;
                    }
                    dVar.onNext((Object) bVar.f72562a[i4]);
                    i4++;
                    j4++;
                }
            }
            aVar.f72561f = j4;
            aVar.f72560e = i4;
            aVar.f72559d = bVar;
            i11 = aVar.addAndGet(-i11);
            if (i11 == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a<T> aVar = new a<>(dVar, this);
        dVar.onSubscribe(aVar);
        M8(aVar);
        if (!this.f72546c.get() && this.f72546c.compareAndSet(false, true)) {
            this.f71538b.j6(this);
        } else {
            R8(aVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        this.f72554k = true;
        for (a<T> aVar : this.f72548e.getAndSet(f72545m)) {
            R8(aVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f72554k) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f72553j = th;
        this.f72554k = true;
        for (a<T> aVar : this.f72548e.getAndSet(f72545m)) {
            R8(aVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        int i4 = this.f72552i;
        if (i4 == this.f72547d) {
            b<T> bVar = new b<>(i4);
            bVar.f72562a[0] = t9;
            this.f72552i = 1;
            this.f72551h.f72563b = bVar;
            this.f72551h = bVar;
        } else {
            this.f72551h.f72562a[i4] = t9;
            this.f72552i = i4 + 1;
        }
        this.f72549f++;
        for (a<T> aVar : this.f72548e.get()) {
            R8(aVar);
        }
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        eVar.request(Long.MAX_VALUE);
    }
}
