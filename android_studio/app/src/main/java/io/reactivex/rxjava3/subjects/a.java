package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AsyncSubject.java */
/* loaded from: classes4.dex */
public final class a<T> extends i<T> {

    /* renamed from: d  reason: collision with root package name */
    static final C0700a[] f81538d = new C0700a[0];

    /* renamed from: e  reason: collision with root package name */
    static final C0700a[] f81539e = new C0700a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<C0700a<T>[]> f81540a = new AtomicReference<>(f81538d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f81541b;

    /* renamed from: c  reason: collision with root package name */
    T f81542c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncSubject.java */
    /* renamed from: io.reactivex.rxjava3.subjects.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0700a<T> extends DeferredScalarDisposable<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f81543k = 5629876084736248016L;

        /* renamed from: j  reason: collision with root package name */
        final a<T> f81544j;

        C0700a(n0<? super T> actual, a<T> parent) {
            super(actual);
            this.f81544j = parent;
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (super.tryDispose()) {
                this.f81544j.J8(this);
            }
        }

        void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f76449b.onComplete();
        }

        void onError(Throwable t9) {
            if (isDisposed()) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f76449b.onError(t9);
            }
        }
    }

    a() {
    }

    @p7.c
    @p7.e
    public static <T> a<T> G8() {
        return new a<>();
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public Throwable A8() {
        if (this.f81540a.get() == f81539e) {
            return this.f81541b;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean B8() {
        return this.f81540a.get() == f81539e && this.f81541b == null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean C8() {
        return this.f81540a.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean D8() {
        return this.f81540a.get() == f81539e && this.f81541b != null;
    }

    boolean F8(C0700a<T> ps) {
        C0700a<T>[] c0700aArr;
        C0700a<T>[] c0700aArr2;
        do {
            c0700aArr = this.f81540a.get();
            if (c0700aArr == f81539e) {
                return false;
            }
            int length = c0700aArr.length;
            c0700aArr2 = new C0700a[length + 1];
            System.arraycopy(c0700aArr, 0, c0700aArr2, 0, length);
            c0700aArr2[length] = ps;
        } while (!this.f81540a.compareAndSet(c0700aArr, c0700aArr2));
        return true;
    }

    @p7.c
    @p7.f
    public T H8() {
        if (this.f81540a.get() == f81539e) {
            return this.f81542c;
        }
        return null;
    }

    @p7.c
    public boolean I8() {
        return this.f81540a.get() == f81539e && this.f81542c != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void J8(C0700a<T> ps) {
        C0700a<T>[] c0700aArr;
        C0700a[] c0700aArr2;
        do {
            c0700aArr = this.f81540a.get();
            int length = c0700aArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (c0700aArr[i10] == ps) {
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
                c0700aArr2 = f81538d;
            } else {
                C0700a[] c0700aArr3 = new C0700a[length - 1];
                System.arraycopy(c0700aArr, 0, c0700aArr3, 0, i4);
                System.arraycopy(c0700aArr, i4 + 1, c0700aArr3, i4, (length - i4) - 1);
                c0700aArr2 = c0700aArr3;
            }
        } while (!this.f81540a.compareAndSet(c0700aArr, c0700aArr2));
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        C0700a<T> c0700a = new C0700a<>(observer, this);
        observer.onSubscribe(c0700a);
        if (F8(c0700a)) {
            if (c0700a.isDisposed()) {
                J8(c0700a);
                return;
            }
            return;
        }
        Throwable th = this.f81541b;
        if (th != null) {
            observer.onError(th);
            return;
        }
        T t9 = this.f81542c;
        if (t9 != null) {
            c0700a.complete(t9);
        } else {
            c0700a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        C0700a<T>[] c0700aArr = this.f81540a.get();
        C0700a<T>[] c0700aArr2 = f81539e;
        if (c0700aArr == c0700aArr2) {
            return;
        }
        T t9 = this.f81542c;
        C0700a<T>[] andSet = this.f81540a.getAndSet(c0700aArr2);
        int i4 = 0;
        if (t9 == null) {
            int length = andSet.length;
            while (i4 < length) {
                andSet[i4].onComplete();
                i4++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i4 < length2) {
            andSet[i4].complete(t9);
            i4++;
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        C0700a<T>[] c0700aArr = this.f81540a.get();
        C0700a<T>[] c0700aArr2 = f81539e;
        if (c0700aArr == c0700aArr2) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81542c = null;
        this.f81541b = t9;
        for (C0700a<T> c0700a : this.f81540a.getAndSet(c0700aArr2)) {
            c0700a.onError(t9);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81540a.get() == f81539e) {
            return;
        }
        this.f81542c = t9;
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81540a.get() == f81539e) {
            d4.dispose();
        }
    }
}
