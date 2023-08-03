package io.reactivex.internal.operators.single;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleCache.java */
/* loaded from: classes4.dex */
public final class b<T> extends io.reactivex.i0<T> implements io.reactivex.l0<T> {

    /* renamed from: f  reason: collision with root package name */
    static final a[] f75332f = new a[0];

    /* renamed from: g  reason: collision with root package name */
    static final a[] f75333g = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75334a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f75335b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<a<T>[]> f75336c = new AtomicReference<>(f75332f);

    /* renamed from: d  reason: collision with root package name */
    T f75337d;

    /* renamed from: e  reason: collision with root package name */
    Throwable f75338e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleCache.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicBoolean implements io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75339c = 7514387411091976596L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75340a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f75341b;

        a(io.reactivex.l0<? super T> l0Var, b<T> bVar) {
            this.f75340a = l0Var;
            this.f75341b = bVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f75341b.O1(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get();
        }
    }

    public b(io.reactivex.o0<? extends T> o0Var) {
        this.f75334a = o0Var;
    }

    boolean N1(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f75336c.get();
            if (aVarArr == f75333g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f75336c.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void O1(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f75336c.get();
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
                aVarArr2 = f75332f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f75336c.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        a<T> aVar = new a<>(l0Var, this);
        l0Var.onSubscribe(aVar);
        if (N1(aVar)) {
            if (aVar.isDisposed()) {
                O1(aVar);
            }
            if (this.f75335b.getAndIncrement() == 0) {
                this.f75334a.d(this);
                return;
            }
            return;
        }
        Throwable th = this.f75338e;
        if (th != null) {
            l0Var.onError(th);
        } else {
            l0Var.onSuccess((T) this.f75337d);
        }
    }

    @Override // io.reactivex.l0
    public void onError(Throwable th) {
        a<T>[] andSet;
        this.f75338e = th;
        for (a<T> aVar : this.f75336c.getAndSet(f75333g)) {
            if (!aVar.isDisposed()) {
                aVar.f75340a.onError(th);
            }
        }
    }

    @Override // io.reactivex.l0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
    }

    @Override // io.reactivex.l0
    public void onSuccess(T t9) {
        a<T>[] andSet;
        this.f75337d = t9;
        for (a<T> aVar : this.f75336c.getAndSet(f75333g)) {
            if (!aVar.isDisposed()) {
                aVar.f75340a.onSuccess(t9);
            }
        }
    }
}
