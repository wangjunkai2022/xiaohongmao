package io.reactivex.rxjava3.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCache.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> implements io.reactivex.rxjava3.core.n0<T> {

    /* renamed from: k  reason: collision with root package name */
    static final a[] f79958k = new a[0];

    /* renamed from: l  reason: collision with root package name */
    static final a[] f79959l = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f79960b;

    /* renamed from: c  reason: collision with root package name */
    final int f79961c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a<T>[]> f79962d;

    /* renamed from: e  reason: collision with root package name */
    volatile long f79963e;

    /* renamed from: f  reason: collision with root package name */
    final b<T> f79964f;

    /* renamed from: g  reason: collision with root package name */
    b<T> f79965g;

    /* renamed from: h  reason: collision with root package name */
    int f79966h;

    /* renamed from: i  reason: collision with root package name */
    Throwable f79967i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f79968j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCache.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79969g = 6770240836423125754L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79970a;

        /* renamed from: b  reason: collision with root package name */
        final q<T> f79971b;

        /* renamed from: c  reason: collision with root package name */
        b<T> f79972c;

        /* renamed from: d  reason: collision with root package name */
        int f79973d;

        /* renamed from: e  reason: collision with root package name */
        long f79974e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f79975f;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream, q<T> parent) {
            this.f79970a = downstream;
            this.f79971b = parent;
            this.f79972c = parent.f79964f;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79975f) {
                return;
            }
            this.f79975f = true;
            this.f79971b.E8(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79975f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCache.java */
    /* loaded from: classes4.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f79976a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f79977b;

        b(int capacityHint) {
            this.f79976a = (T[]) new Object[capacityHint];
        }
    }

    public q(io.reactivex.rxjava3.core.g0<T> source, int capacityHint) {
        super(source);
        this.f79961c = capacityHint;
        this.f79960b = new AtomicBoolean();
        b<T> bVar = new b<>(capacityHint);
        this.f79964f = bVar;
        this.f79965g = bVar;
        this.f79962d = new AtomicReference<>(f79958k);
    }

    void A8(a<T> consumer) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f79962d.get();
            if (aVarArr == f79959l) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = consumer;
        } while (!this.f79962d.compareAndSet(aVarArr, aVarArr2));
    }

    long B8() {
        return this.f79963e;
    }

    boolean C8() {
        return this.f79962d.get().length != 0;
    }

    boolean D8() {
        return this.f79960b.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void E8(a<T> consumer) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f79962d.get();
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
                aVarArr2 = f79958k;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f79962d.compareAndSet(aVarArr, aVarArr2));
    }

    void F8(a<T> consumer) {
        if (consumer.getAndIncrement() != 0) {
            return;
        }
        long j4 = consumer.f79974e;
        int i4 = consumer.f79973d;
        b<T> bVar = consumer.f79972c;
        io.reactivex.rxjava3.core.n0<? super T> n0Var = consumer.f79970a;
        int i10 = this.f79961c;
        int i11 = 1;
        while (!consumer.f79975f) {
            boolean z9 = this.f79968j;
            boolean z10 = this.f79963e == j4;
            if (z9 && z10) {
                consumer.f79972c = null;
                Throwable th = this.f79967i;
                if (th != null) {
                    n0Var.onError(th);
                    return;
                } else {
                    n0Var.onComplete();
                    return;
                }
            } else if (!z10) {
                if (i4 == i10) {
                    bVar = bVar.f79977b;
                    i4 = 0;
                }
                n0Var.onNext((Object) bVar.f79976a[i4]);
                i4++;
                j4++;
            } else {
                consumer.f79974e = j4;
                consumer.f79973d = i4;
                consumer.f79972c = bVar;
                i11 = consumer.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }
        consumer.f79972c = null;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        a<T> aVar = new a<>(t9, this);
        t9.onSubscribe(aVar);
        A8(aVar);
        if (!this.f79960b.get() && this.f79960b.compareAndSet(false, true)) {
            this.f79141a.a(this);
        } else {
            F8(aVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        this.f79968j = true;
        for (a<T> aVar : this.f79962d.getAndSet(f79959l)) {
            F8(aVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        this.f79967i = t9;
        this.f79968j = true;
        for (a<T> aVar : this.f79962d.getAndSet(f79959l)) {
            F8(aVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        int i4 = this.f79966h;
        if (i4 == this.f79961c) {
            b<T> bVar = new b<>(i4);
            bVar.f79976a[0] = t9;
            this.f79966h = 1;
            this.f79965g.f79977b = bVar;
            this.f79965g = bVar;
        } else {
            this.f79965g.f79976a[i4] = t9;
            this.f79966h = i4 + 1;
        }
        this.f79963e++;
        for (a<T> aVar : this.f79962d.get()) {
            F8(aVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
    }
}
