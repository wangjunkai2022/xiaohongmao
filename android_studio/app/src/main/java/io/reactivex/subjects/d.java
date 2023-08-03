package io.reactivex.subjects;

import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSubject.java */
/* loaded from: classes4.dex */
public final class d<T> extends q<T> implements t<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f81719e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f81720f = new a[0];

    /* renamed from: c  reason: collision with root package name */
    T f81723c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f81724d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f81722b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81721a = new AtomicReference<>(f81719e);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<d<T>> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81725b = -7650903191002190468L;

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f81726a;

        a(t<? super T> tVar, d<T> dVar) {
            this.f81726a = tVar;
            lazySet(dVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            d<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.n2(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }
    }

    d() {
    }

    @m7.e
    @m7.c
    public static <T> d<T> f2() {
        return new d<>();
    }

    boolean e2(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81721a.get();
            if (aVarArr == f81720f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f81721a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @m7.f
    public Throwable g2() {
        if (this.f81721a.get() == f81720f) {
            return this.f81724d;
        }
        return null;
    }

    @m7.f
    public T h2() {
        if (this.f81721a.get() == f81720f) {
            return this.f81723c;
        }
        return null;
    }

    public boolean i2() {
        return this.f81721a.get() == f81720f && this.f81723c == null && this.f81724d == null;
    }

    public boolean j2() {
        return this.f81721a.get().length != 0;
    }

    public boolean k2() {
        return this.f81721a.get() == f81720f && this.f81724d != null;
    }

    public boolean l2() {
        return this.f81721a.get() == f81720f && this.f81723c != null;
    }

    int m2() {
        return this.f81721a.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void n2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81721a.get();
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
                aVarArr2 = f81719e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81721a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.t
    public void onComplete() {
        if (this.f81722b.compareAndSet(false, true)) {
            for (a<T> aVar : this.f81721a.getAndSet(f81720f)) {
                aVar.f81726a.onComplete();
            }
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81722b.compareAndSet(false, true)) {
            this.f81724d = th;
            for (a<T> aVar : this.f81721a.getAndSet(f81720f)) {
                aVar.f81726a.onError(th);
            }
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81721a.get() == f81720f) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.t
    public void onSuccess(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81722b.compareAndSet(false, true)) {
            this.f81723c = t9;
            for (a<T> aVar : this.f81721a.getAndSet(f81720f)) {
                aVar.f81726a.onSuccess(t9);
            }
        }
    }

    @Override // io.reactivex.q
    protected void q1(t<? super T> tVar) {
        a<T> aVar = new a<>(tVar, this);
        tVar.onSubscribe(aVar);
        if (e2(aVar)) {
            if (aVar.isDisposed()) {
                n2(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81724d;
        if (th != null) {
            tVar.onError(th);
            return;
        }
        Object obj = (T) this.f81723c;
        if (obj == null) {
            tVar.onComplete();
        } else {
            tVar.onSuccess(obj);
        }
    }
}
