package io.reactivex.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeCache.java */
/* loaded from: classes3.dex */
public final class c<T> extends io.reactivex.q<T> implements io.reactivex.t<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f73206e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f73207f = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.w<T>> f73208a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f73209b = new AtomicReference<>(f73206e);

    /* renamed from: c  reason: collision with root package name */
    T f73210c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f73211d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeCache.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<c<T>> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73212b = -5791853038359966195L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73213a;

        a(io.reactivex.t<? super T> tVar, c<T> cVar) {
            super(cVar);
            this.f73213a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            c<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.f2(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public c(io.reactivex.w<T> wVar) {
        this.f73208a = new AtomicReference<>(wVar);
    }

    boolean e2(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f73209b.get();
            if (aVarArr == f73207f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f73209b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void f2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f73209b.get();
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
                aVarArr2 = f73206e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f73209b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.t
    public void onComplete() {
        a<T>[] andSet;
        for (a<T> aVar : this.f73209b.getAndSet(f73207f)) {
            if (!aVar.isDisposed()) {
                aVar.f73213a.onComplete();
            }
        }
    }

    @Override // io.reactivex.t
    public void onError(Throwable th) {
        a<T>[] andSet;
        this.f73211d = th;
        for (a<T> aVar : this.f73209b.getAndSet(f73207f)) {
            if (!aVar.isDisposed()) {
                aVar.f73213a.onError(th);
            }
        }
    }

    @Override // io.reactivex.t
    public void onSubscribe(io.reactivex.disposables.c cVar) {
    }

    @Override // io.reactivex.t
    public void onSuccess(T t9) {
        a<T>[] andSet;
        this.f73210c = t9;
        for (a<T> aVar : this.f73209b.getAndSet(f73207f)) {
            if (!aVar.isDisposed()) {
                aVar.f73213a.onSuccess(t9);
            }
        }
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        a<T> aVar = new a<>(tVar, this);
        tVar.onSubscribe(aVar);
        if (e2(aVar)) {
            if (aVar.isDisposed()) {
                f2(aVar);
                return;
            }
            io.reactivex.w<T> andSet = this.f73208a.getAndSet(null);
            if (andSet != null) {
                andSet.b(this);
            }
        } else if (aVar.isDisposed()) {
        } else {
            Throwable th = this.f73211d;
            if (th != null) {
                tVar.onError(th);
                return;
            }
            Object obj = (T) this.f73210c;
            if (obj != null) {
                tVar.onSuccess(obj);
            } else {
                tVar.onComplete();
            }
        }
    }
}
