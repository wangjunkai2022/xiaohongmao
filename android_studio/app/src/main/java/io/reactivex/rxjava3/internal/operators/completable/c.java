package io.reactivex.rxjava3.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableCache.java */
/* loaded from: classes4.dex */
public final class c extends io.reactivex.rxjava3.core.a implements io.reactivex.rxjava3.core.d {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f76556e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f76557f = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76558a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a[]> f76559b = new AtomicReference<>(f76556e);

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f76560c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    Throwable f76561d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompletableCache.java */
    /* loaded from: classes4.dex */
    public final class a extends AtomicBoolean implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f76562c = 8943152917179642732L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76563a;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76563a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (compareAndSet(false, true)) {
                c.this.C1(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get();
        }
    }

    public c(io.reactivex.rxjava3.core.g source) {
        this.f76558a = source;
    }

    boolean B1(a inner) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f76559b.get();
            if (aVarArr == f76557f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f76559b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    void C1(a inner) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f76559b.get();
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
                aVarArr2 = f76556e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f76559b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        if (B1(aVar)) {
            if (aVar.isDisposed()) {
                C1(aVar);
            }
            if (this.f76560c.compareAndSet(false, true)) {
                this.f76558a.d(this);
                return;
            }
            return;
        }
        Throwable th = this.f76561d;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onComplete() {
        a[] andSet;
        for (a aVar : this.f76559b.getAndSet(f76557f)) {
            if (!aVar.get()) {
                aVar.f76563a.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        a[] andSet;
        this.f76561d = e4;
        for (a aVar : this.f76559b.getAndSet(f76557f)) {
            if (!aVar.get()) {
                aVar.f76563a.onError(e4);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
    }
}
