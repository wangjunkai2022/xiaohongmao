package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableCache.java */
/* loaded from: classes3.dex */
public final class c extends io.reactivex.a implements io.reactivex.d {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f71294e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f71295f = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71296a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a[]> f71297b = new AtomicReference<>(f71294e);

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f71298c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    Throwable f71299d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompletableCache.java */
    /* loaded from: classes3.dex */
    public final class a extends AtomicBoolean implements io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f71300c = 8943152917179642732L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71301a;

        a(io.reactivex.d dVar) {
            this.f71301a = dVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (compareAndSet(false, true)) {
                c.this.i1(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get();
        }
    }

    public c(io.reactivex.g gVar) {
        this.f71296a = gVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        if (h1(aVar)) {
            if (aVar.isDisposed()) {
                i1(aVar);
            }
            if (this.f71298c.compareAndSet(false, true)) {
                this.f71296a.d(this);
                return;
            }
            return;
        }
        Throwable th = this.f71299d;
        if (th != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    boolean h1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f71297b.get();
            if (aVarArr == f71295f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f71297b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    void i1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f71297b.get();
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
                aVarArr2 = f71294e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f71297b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.d
    public void onComplete() {
        a[] andSet;
        for (a aVar : this.f71297b.getAndSet(f71295f)) {
            if (!aVar.get()) {
                aVar.f71301a.onComplete();
            }
        }
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        a[] andSet;
        this.f71299d = th;
        for (a aVar : this.f71297b.getAndSet(f71295f)) {
            if (!aVar.get()) {
                aVar.f71301a.onError(th);
            }
        }
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.c cVar) {
    }
}
