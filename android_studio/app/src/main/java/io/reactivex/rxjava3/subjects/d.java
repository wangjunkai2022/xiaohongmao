package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.v;
import io.reactivex.rxjava3.core.y;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSubject.java */
/* loaded from: classes4.dex */
public final class d<T> extends v<T> implements y<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81569e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f81570f = new a[0];

    /* renamed from: c  reason: collision with root package name */
    T f81573c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f81574d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81572b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81571a = new AtomicReference<>(f81569e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<d<T>> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81575b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final y<? super T> f81576a;

        a(y<? super T> actual, d<T> parent) {
            this.f81576a = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            d<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.d3(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }
    }

    d() {
    }

    @p7.c
    @p7.e
    public static <T> d<T> V2() {
        return new d<>();
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(y<? super T> observer) {
        a<T> aVar = new a<>(observer, this);
        observer.onSubscribe(aVar);
        if (U2(aVar)) {
            if (aVar.isDisposed()) {
                d3(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81574d;
        if (th != null) {
            observer.onError(th);
            return;
        }
        Object obj = (T) this.f81573c;
        if (obj == null) {
            observer.onComplete();
        } else {
            observer.onSuccess(obj);
        }
    }

    boolean U2(a<T> inner) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81571a.get();
            if (aVarArr == f81570f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f81571a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.f
    public Throwable W2() {
        if (this.f81571a.get() == f81570f) {
            return this.f81574d;
        }
        return null;
    }

    @p7.f
    public T X2() {
        if (this.f81571a.get() == f81570f) {
            return this.f81573c;
        }
        return null;
    }

    public boolean Y2() {
        return this.f81571a.get() == f81570f && this.f81573c == null && this.f81574d == null;
    }

    public boolean Z2() {
        return this.f81571a.get().length != 0;
    }

    public boolean a3() {
        return this.f81571a.get() == f81570f && this.f81574d != null;
    }

    public boolean b3() {
        return this.f81571a.get() == f81570f && this.f81573c != null;
    }

    int c3() {
        return this.f81571a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void d3(a<T> inner) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81571a.get();
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
                aVarArr2 = f81569e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81571a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        if (this.f81572b.compareAndSet(false, true)) {
            for (a<T> aVar : this.f81571a.getAndSet(f81570f)) {
                aVar.f81576a.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        io.reactivex.rxjava3.internal.util.g.d(e4, "onError called with a null Throwable.");
        if (this.f81572b.compareAndSet(false, true)) {
            this.f81574d = e4;
            for (a<T> aVar : this.f81571a.getAndSet(f81570f)) {
                aVar.f81576a.onError(e4);
            }
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(e4);
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81571a.get() == f81570f) {
            d4.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        io.reactivex.rxjava3.internal.util.g.d(value, "onSuccess called with a null value.");
        if (this.f81572b.compareAndSet(false, true)) {
            this.f81573c = value;
            for (a<T> aVar : this.f81571a.getAndSet(f81570f)) {
                aVar.f81576a.onSuccess(value);
            }
        }
    }
}
