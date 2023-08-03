package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.n0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PublishSubject.java */
/* loaded from: classes4.dex */
public final class e<T> extends i<T> {

    /* renamed from: c  reason: collision with root package name */
    static final a[] f81577c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    static final a[] f81578d = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81579a = new AtomicReference<>(f81578d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f81580b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublishSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicBoolean implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81581c = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super T> f81582a;

        /* renamed from: b  reason: collision with root package name */
        final e<T> f81583b;

        a(n0<? super T> actual, e<T> parent) {
            this.f81582a = actual;
            this.f81583b = parent;
        }

        public void a() {
            if (get()) {
                return;
            }
            this.f81582a.onComplete();
        }

        public void b(Throwable t9) {
            if (get()) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f81582a.onError(t9);
            }
        }

        public void c(T t9) {
            if (get()) {
                return;
            }
            this.f81582a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f81583b.H8(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get();
        }
    }

    e() {
    }

    @p7.c
    @p7.e
    public static <T> e<T> G8() {
        return new e<>();
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    @p7.f
    public Throwable A8() {
        if (this.f81579a.get() == f81577c) {
            return this.f81580b;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean B8() {
        return this.f81579a.get() == f81577c && this.f81580b == null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean C8() {
        return this.f81579a.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean D8() {
        return this.f81579a.get() == f81577c && this.f81580b != null;
    }

    boolean F8(a<T> ps) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81579a.get();
            if (aVarArr == f81577c) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = ps;
        } while (!this.f81579a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void H8(a<T> ps) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81579a.get();
            if (aVarArr == f81577c || aVarArr == f81578d) {
                return;
            }
            int length = aVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == ps) {
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
                aVarArr2 = f81578d;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81579a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> t9) {
        a<T> aVar = new a<>(t9, this);
        t9.onSubscribe(aVar);
        if (F8(aVar)) {
            if (aVar.isDisposed()) {
                H8(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81580b;
        if (th != null) {
            t9.onError(th);
        } else {
            t9.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        a<T>[] aVarArr = this.f81579a.get();
        a<T>[] aVarArr2 = f81577c;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f81579a.getAndSet(aVarArr2)) {
            aVar.a();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        a<T>[] aVarArr = this.f81579a.get();
        a<T>[] aVarArr2 = f81577c;
        if (aVarArr == aVarArr2) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81580b = t9;
        for (a<T> aVar : this.f81579a.getAndSet(aVarArr2)) {
            aVar.b(t9);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        for (a<T> aVar : this.f81579a.get()) {
            aVar.c(t9);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81579a.get() == f81577c) {
            d4.dispose();
        }
    }
}
