package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleSubject.java */
/* loaded from: classes4.dex */
public final class h<T> extends p0<T> implements s0<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81623e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f81624f = new a[0];

    /* renamed from: c  reason: collision with root package name */
    T f81627c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f81628d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81626b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81625a = new AtomicReference<>(f81623e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<h<T>> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81629b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final s0<? super T> f81630a;

        a(s0<? super T> actual, h<T> parent) {
            this.f81630a = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            h<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.Q2(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }
    }

    h() {
    }

    @p7.c
    @p7.e
    public static <T> h<T> J2() {
        return new h<>();
    }

    boolean I2(@p7.e a<T> inner) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81625a.get();
            if (aVarArr == f81624f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f81625a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.f
    public Throwable K2() {
        if (this.f81625a.get() == f81624f) {
            return this.f81628d;
        }
        return null;
    }

    @p7.f
    public T L2() {
        if (this.f81625a.get() == f81624f) {
            return this.f81627c;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(@p7.e s0<? super T> observer) {
        a<T> aVar = new a<>(observer, this);
        observer.onSubscribe(aVar);
        if (I2(aVar)) {
            if (aVar.isDisposed()) {
                Q2(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81628d;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onSuccess((T) this.f81627c);
        }
    }

    public boolean M2() {
        return this.f81625a.get().length != 0;
    }

    public boolean N2() {
        return this.f81625a.get() == f81624f && this.f81628d != null;
    }

    public boolean O2() {
        return this.f81625a.get() == f81624f && this.f81627c != null;
    }

    int P2() {
        return this.f81625a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Q2(@p7.e a<T> inner) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81625a.get();
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
                aVarArr2 = f81623e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81625a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(@p7.e Throwable e4) {
        io.reactivex.rxjava3.internal.util.g.d(e4, "onError called with a null Throwable.");
        if (this.f81626b.compareAndSet(false, true)) {
            this.f81628d = e4;
            for (a<T> aVar : this.f81625a.getAndSet(f81624f)) {
                aVar.f81630a.onError(e4);
            }
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(e4);
    }

    @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81625a.get() == f81624f) {
            d4.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.s0
    public void onSuccess(@p7.e T value) {
        io.reactivex.rxjava3.internal.util.g.d(value, "onSuccess called with a null value.");
        if (this.f81626b.compareAndSet(false, true)) {
            this.f81627c = value;
            for (a<T> aVar : this.f81625a.getAndSet(f81624f)) {
                aVar.f81630a.onSuccess(value);
            }
        }
    }
}
