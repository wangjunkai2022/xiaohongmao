package io.reactivex.rxjava3.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableSubject.java */
/* loaded from: classes4.dex */
public final class c extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.core.d {

    /* renamed from: d  reason: collision with root package name */
    static final a[] f81562d = new a[0];

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81563e = new a[0];

    /* renamed from: c  reason: collision with root package name */
    Throwable f81566c;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81565b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a[]> f81564a = new AtomicReference<>(f81562d);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompletableSubject.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<c> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81567b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f81568a;

        a(io.reactivex.rxjava3.core.d actual, c parent) {
            this.f81568a = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            c andSet = getAndSet(null);
            if (andSet != null) {
                andSet.I1(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }
    }

    c() {
    }

    @p7.c
    @p7.e
    public static c C1() {
        return new c();
    }

    boolean B1(a inner) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81564a.get();
            if (aVarArr == f81563e) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f81564a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.f
    public Throwable D1() {
        if (this.f81564a.get() == f81563e) {
            return this.f81566c;
        }
        return null;
    }

    public boolean E1() {
        return this.f81564a.get() == f81563e && this.f81566c == null;
    }

    public boolean F1() {
        return this.f81564a.get().length != 0;
    }

    public boolean G1() {
        return this.f81564a.get() == f81563e && this.f81566c != null;
    }

    int H1() {
        return this.f81564a.get().length;
    }

    void I1(a inner) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81564a.get();
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
                aVarArr2 = f81562d;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81564a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this);
        observer.onSubscribe(aVar);
        if (B1(aVar)) {
            if (aVar.isDisposed()) {
                I1(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81566c;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        if (this.f81565b.compareAndSet(false, true)) {
            for (a aVar : this.f81564a.getAndSet(f81563e)) {
                aVar.f81568a.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        io.reactivex.rxjava3.internal.util.g.d(e4, "onError called with a null Throwable.");
        if (this.f81565b.compareAndSet(false, true)) {
            this.f81566c = e4;
            for (a aVar : this.f81564a.getAndSet(f81563e)) {
                aVar.f81568a.onError(e4);
            }
            return;
        }
        io.reactivex.rxjava3.plugins.a.Y(e4);
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81564a.get() == f81563e) {
            d4.dispose();
        }
    }
}
