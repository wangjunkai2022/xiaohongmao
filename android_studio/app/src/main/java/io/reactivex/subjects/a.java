package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AsyncSubject.java */
/* loaded from: classes4.dex */
public final class a<T> extends i<T> {

    /* renamed from: d  reason: collision with root package name */
    static final C0704a[] f81687d = new C0704a[0];

    /* renamed from: e  reason: collision with root package name */
    static final C0704a[] f81688e = new C0704a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<C0704a<T>[]> f81689a = new AtomicReference<>(f81687d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f81690b;

    /* renamed from: c  reason: collision with root package name */
    T f81691c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncSubject.java */
    /* renamed from: io.reactivex.subjects.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0704a<T> extends DeferredScalarDisposable<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f81692k = 5629876084736248016L;

        /* renamed from: j  reason: collision with root package name */
        final a<T> f81693j;

        C0704a(g0<? super T> g0Var, a<T> aVar) {
            super(g0Var);
            this.f81693j = aVar;
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.c
        public void dispose() {
            if (super.tryDispose()) {
                this.f81693j.n(this);
            }
        }

        void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f71190b.onComplete();
        }

        void onError(Throwable th) {
            if (isDisposed()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f71190b.onError(th);
            }
        }
    }

    a() {
    }

    @m7.e
    @m7.c
    public static <T> a<T> i() {
        return new a<>();
    }

    @Override // io.reactivex.subjects.i
    public Throwable b() {
        if (this.f81689a.get() == f81688e) {
            return this.f81690b;
        }
        return null;
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return this.f81689a.get() == f81688e && this.f81690b == null;
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81689a.get().length != 0;
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return this.f81689a.get() == f81688e && this.f81690b != null;
    }

    boolean h(C0704a<T> c0704a) {
        C0704a<T>[] c0704aArr;
        C0704a<T>[] c0704aArr2;
        do {
            c0704aArr = this.f81689a.get();
            if (c0704aArr == f81688e) {
                return false;
            }
            int length = c0704aArr.length;
            c0704aArr2 = new C0704a[length + 1];
            System.arraycopy(c0704aArr, 0, c0704aArr2, 0, length);
            c0704aArr2[length] = c0704a;
        } while (!this.f81689a.compareAndSet(c0704aArr, c0704aArr2));
        return true;
    }

    @m7.f
    public T j() {
        if (this.f81689a.get() == f81688e) {
            return this.f81691c;
        }
        return null;
    }

    @Deprecated
    public Object[] k() {
        T j4 = j();
        return j4 != null ? new Object[]{j4} : new Object[0];
    }

    @Deprecated
    public T[] l(T[] tArr) {
        T j4 = j();
        if (j4 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = j4;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean m() {
        return this.f81689a.get() == f81688e && this.f81691c != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void n(C0704a<T> c0704a) {
        C0704a<T>[] c0704aArr;
        C0704a[] c0704aArr2;
        do {
            c0704aArr = this.f81689a.get();
            int length = c0704aArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (c0704aArr[i10] == c0704a) {
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
                c0704aArr2 = f81687d;
            } else {
                C0704a[] c0704aArr3 = new C0704a[length - 1];
                System.arraycopy(c0704aArr, 0, c0704aArr3, 0, i4);
                System.arraycopy(c0704aArr, i4 + 1, c0704aArr3, i4, (length - i4) - 1);
                c0704aArr2 = c0704aArr3;
            }
        } while (!this.f81689a.compareAndSet(c0704aArr, c0704aArr2));
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        C0704a<T>[] c0704aArr = this.f81689a.get();
        C0704a<T>[] c0704aArr2 = f81688e;
        if (c0704aArr == c0704aArr2) {
            return;
        }
        T t9 = this.f81691c;
        C0704a<T>[] andSet = this.f81689a.getAndSet(c0704aArr2);
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

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0704a<T>[] c0704aArr = this.f81689a.get();
        C0704a<T>[] c0704aArr2 = f81688e;
        if (c0704aArr == c0704aArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f81691c = null;
        this.f81690b = th;
        for (C0704a<T> c0704a : this.f81689a.getAndSet(c0704aArr2)) {
            c0704a.onError(th);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81689a.get() == f81688e) {
            return;
        }
        this.f81691c = t9;
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81689a.get() == f81688e) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        C0704a<T> c0704a = new C0704a<>(g0Var, this);
        g0Var.onSubscribe(c0704a);
        if (h(c0704a)) {
            if (c0704a.isDisposed()) {
                n(c0704a);
                return;
            }
            return;
        }
        Throwable th = this.f81690b;
        if (th != null) {
            g0Var.onError(th);
            return;
        }
        T t9 = this.f81691c;
        if (t9 != null) {
            c0704a.complete(t9);
        } else {
            c0704a.onComplete();
        }
    }
}
