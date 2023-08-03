package io.reactivex.rxjava3.internal.operators.single;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleCache.java */
/* loaded from: classes4.dex */
public final class b<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.core.s0<T> {

    /* renamed from: f  reason: collision with root package name */
    static final a[] f80711f = new a[0];

    /* renamed from: g  reason: collision with root package name */
    static final a[] f80712g = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80713a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f80714b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<a<T>[]> f80715c = new AtomicReference<>(f80711f);

    /* renamed from: d  reason: collision with root package name */
    T f80716d;

    /* renamed from: e  reason: collision with root package name */
    Throwable f80717e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleCache.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicBoolean implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80718c = 7514387411091976596L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80719a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f80720b;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, b<T> parent) {
            this.f80719a = actual;
            this.f80720b = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f80720b.J2(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get();
        }
    }

    public b(io.reactivex.rxjava3.core.v0<? extends T> source) {
        this.f80713a = source;
    }

    boolean I2(a<T> observer) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f80715c.get();
            if (aVarArr == f80712g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = observer;
        } while (!this.f80715c.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void J2(a<T> observer) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f80715c.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == observer) {
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
                aVarArr2 = f80711f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f80715c.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        a<T> aVar = new a<>(observer, this);
        observer.onSubscribe(aVar);
        if (I2(aVar)) {
            if (aVar.isDisposed()) {
                J2(aVar);
            }
            if (this.f80714b.getAndIncrement() == 0) {
                this.f80713a.d(this);
                return;
            }
            return;
        }
        Throwable th = this.f80717e;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onSuccess((T) this.f80716d);
        }
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        a<T>[] andSet;
        this.f80717e = e4;
        for (a<T> aVar : this.f80715c.getAndSet(f80712g)) {
            if (!aVar.isDisposed()) {
                aVar.f80719a.onError(e4);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        a<T>[] andSet;
        this.f80716d = value;
        for (a<T> aVar : this.f80715c.getAndSet(f80712g)) {
            if (!aVar.isDisposed()) {
                aVar.f80719a.onSuccess(value);
            }
        }
    }
}
