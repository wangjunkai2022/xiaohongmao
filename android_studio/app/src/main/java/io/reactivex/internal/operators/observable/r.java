package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCache.java */
/* loaded from: classes3.dex */
public final class r<T> extends io.reactivex.internal.operators.observable.a<T, T> implements io.reactivex.g0<T> {

    /* renamed from: k  reason: collision with root package name */
    static final a[] f74653k = new a[0];

    /* renamed from: l  reason: collision with root package name */
    static final a[] f74654l = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f74655b;

    /* renamed from: c  reason: collision with root package name */
    final int f74656c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a<T>[]> f74657d;

    /* renamed from: e  reason: collision with root package name */
    volatile long f74658e;

    /* renamed from: f  reason: collision with root package name */
    final b<T> f74659f;

    /* renamed from: g  reason: collision with root package name */
    b<T> f74660g;

    /* renamed from: h  reason: collision with root package name */
    int f74661h;

    /* renamed from: i  reason: collision with root package name */
    Throwable f74662i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f74663j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCache.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f74664g = 6770240836423125754L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74665a;

        /* renamed from: b  reason: collision with root package name */
        final r<T> f74666b;

        /* renamed from: c  reason: collision with root package name */
        b<T> f74667c;

        /* renamed from: d  reason: collision with root package name */
        int f74668d;

        /* renamed from: e  reason: collision with root package name */
        long f74669e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f74670f;

        a(io.reactivex.g0<? super T> g0Var, r<T> rVar) {
            this.f74665a = g0Var;
            this.f74666b = rVar;
            this.f74667c = rVar.f74659f;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74670f) {
                return;
            }
            this.f74670f = true;
            this.f74666b.g(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74670f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCache.java */
    /* loaded from: classes3.dex */
    public static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f74671a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f74672b;

        b(int i4) {
            this.f74671a = (T[]) new Object[i4];
        }
    }

    public r(io.reactivex.z<T> zVar, int i4) {
        super(zVar);
        this.f74656c = i4;
        this.f74655b = new AtomicBoolean();
        b<T> bVar = new b<>(i4);
        this.f74659f = bVar;
        this.f74660g = bVar;
        this.f74657d = new AtomicReference<>(f74653k);
    }

    void b(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f74657d.get();
            if (aVarArr == f74654l) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f74657d.compareAndSet(aVarArr, aVarArr2));
    }

    long d() {
        return this.f74658e;
    }

    boolean e() {
        return this.f74657d.get().length != 0;
    }

    boolean f() {
        return this.f74655b.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void g(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f74657d.get();
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
                aVarArr2 = f74653k;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f74657d.compareAndSet(aVarArr, aVarArr2));
    }

    void h(a<T> aVar) {
        if (aVar.getAndIncrement() != 0) {
            return;
        }
        long j4 = aVar.f74669e;
        int i4 = aVar.f74668d;
        b<T> bVar = aVar.f74667c;
        io.reactivex.g0<? super T> g0Var = aVar.f74665a;
        int i10 = this.f74656c;
        int i11 = 1;
        while (!aVar.f74670f) {
            boolean z9 = this.f74663j;
            boolean z10 = this.f74658e == j4;
            if (z9 && z10) {
                aVar.f74667c = null;
                Throwable th = this.f74662i;
                if (th != null) {
                    g0Var.onError(th);
                    return;
                } else {
                    g0Var.onComplete();
                    return;
                }
            } else if (!z10) {
                if (i4 == i10) {
                    bVar = bVar.f74672b;
                    i4 = 0;
                }
                g0Var.onNext((Object) bVar.f74671a[i4]);
                i4++;
                j4++;
            } else {
                aVar.f74669e = j4;
                aVar.f74668d = i4;
                aVar.f74667c = bVar;
                i11 = aVar.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }
        aVar.f74667c = null;
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        this.f74663j = true;
        for (a<T> aVar : this.f74657d.getAndSet(f74654l)) {
            h(aVar);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        this.f74662i = th;
        this.f74663j = true;
        for (a<T> aVar : this.f74657d.getAndSet(f74654l)) {
            h(aVar);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        int i4 = this.f74661h;
        if (i4 == this.f74656c) {
            b<T> bVar = new b<>(i4);
            bVar.f74671a[0] = t9;
            this.f74661h = 1;
            this.f74660g.f74672b = bVar;
            this.f74660g = bVar;
        } else {
            this.f74660g.f74671a[i4] = t9;
            this.f74661h = i4 + 1;
        }
        this.f74658e++;
        for (a<T> aVar : this.f74657d.get()) {
            h(aVar);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a<T> aVar = new a<>(g0Var, this);
        g0Var.onSubscribe(aVar);
        b(aVar);
        if (!this.f74655b.get() && this.f74655b.compareAndSet(false, true)) {
            this.f73827a.subscribe(this);
        } else {
            h(aVar);
        }
    }
}
