package io.reactivex.subjects;

import io.reactivex.i0;
import io.reactivex.l0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleSubject.java */
/* loaded from: classes4.dex */
public final class h<T> extends i0<T> implements l0<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81773e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f81774f = new a[0];

    /* renamed from: c  reason: collision with root package name */
    T f81777c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f81778d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81776b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81775a = new AtomicReference<>(f81773e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<h<T>> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81779b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final l0<? super T> f81780a;

        a(l0<? super T> l0Var, h<T> hVar) {
            this.f81780a = l0Var;
            lazySet(hVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            h<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.V1(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }
    }

    h() {
    }

    @m7.e
    @m7.c
    public static <T> h<T> O1() {
        return new h<>();
    }

    boolean N1(@m7.e a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81775a.get();
            if (aVarArr == f81774f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f81775a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @m7.f
    public Throwable P1() {
        if (this.f81775a.get() == f81774f) {
            return this.f81778d;
        }
        return null;
    }

    @m7.f
    public T Q1() {
        if (this.f81775a.get() == f81774f) {
            return this.f81777c;
        }
        return null;
    }

    public boolean R1() {
        return this.f81775a.get().length != 0;
    }

    public boolean S1() {
        return this.f81775a.get() == f81774f && this.f81778d != null;
    }

    public boolean T1() {
        return this.f81775a.get() == f81774f && this.f81777c != null;
    }

    int U1() {
        return this.f81775a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void V1(@m7.e a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81775a.get();
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
                aVarArr2 = f81773e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81775a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.i0
    protected void b1(@m7.e l0<? super T> l0Var) {
        a<T> aVar = new a<>(l0Var, this);
        l0Var.onSubscribe(aVar);
        if (N1(aVar)) {
            if (aVar.isDisposed()) {
                V1(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81778d;
        if (th != null) {
            l0Var.onError(th);
        } else {
            l0Var.onSuccess((T) this.f81777c);
        }
    }

    @Override // io.reactivex.l0
    public void onError(@m7.e Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81776b.compareAndSet(false, true)) {
            this.f81778d = th;
            for (a<T> aVar : this.f81775a.getAndSet(f81774f)) {
                aVar.f81780a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.l0
    public void onSubscribe(@m7.e io.reactivex.disposables.c cVar) {
        if (this.f81775a.get() == f81774f) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.l0
    public void onSuccess(@m7.e T t9) {
        io.reactivex.internal.functions.b.g(t9, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81776b.compareAndSet(false, true)) {
            this.f81777c = t9;
            for (a<T> aVar : this.f81775a.getAndSet(f81774f)) {
                aVar.f81780a.onSuccess(t9);
            }
        }
    }
}
