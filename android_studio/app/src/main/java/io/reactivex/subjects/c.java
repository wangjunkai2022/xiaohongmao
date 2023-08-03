package io.reactivex.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableSubject.java */
/* loaded from: classes4.dex */
public final class c extends io.reactivex.a implements io.reactivex.d {

    /* renamed from: d  reason: collision with root package name */
    static final a[] f81712d = new a[0];

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81713e = new a[0];

    /* renamed from: c  reason: collision with root package name */
    Throwable f81716c;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81715b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a[]> f81714a = new AtomicReference<>(f81712d);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompletableSubject.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<c> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81717b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f81718a;

        a(io.reactivex.d dVar, c cVar) {
            this.f81718a = dVar;
            lazySet(cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            c andSet = getAndSet(null);
            if (andSet != null) {
                andSet.o1(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }
    }

    c() {
    }

    @m7.e
    @m7.c
    public static c i1() {
        return new c();
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this);
        dVar.onSubscribe(aVar);
        if (h1(aVar)) {
            if (aVar.isDisposed()) {
                o1(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81716c;
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
            aVarArr = this.f81714a.get();
            if (aVarArr == f81713e) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f81714a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @m7.f
    public Throwable j1() {
        if (this.f81714a.get() == f81713e) {
            return this.f81716c;
        }
        return null;
    }

    public boolean k1() {
        return this.f81714a.get() == f81713e && this.f81716c == null;
    }

    public boolean l1() {
        return this.f81714a.get().length != 0;
    }

    public boolean m1() {
        return this.f81714a.get() == f81713e && this.f81716c != null;
    }

    int n1() {
        return this.f81714a.get().length;
    }

    void o1(a aVar) {
        a[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81714a.get();
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
                aVarArr2 = f81712d;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81714a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.d
    public void onComplete() {
        if (this.f81715b.compareAndSet(false, true)) {
            for (a aVar : this.f81714a.getAndSet(f81713e)) {
                aVar.f81718a.onComplete();
            }
        }
    }

    @Override // io.reactivex.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81715b.compareAndSet(false, true)) {
            this.f81716c = th;
            for (a aVar : this.f81714a.getAndSet(f81713e)) {
                aVar.f81718a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.d
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81714a.get() == f81713e) {
            cVar.dispose();
        }
    }
}
