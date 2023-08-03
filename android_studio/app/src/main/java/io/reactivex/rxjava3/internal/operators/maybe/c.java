package io.reactivex.rxjava3.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeCache.java */
/* loaded from: classes4.dex */
public final class c<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.core.y<T> {

    /* renamed from: e  reason: collision with root package name */
    static final a[] f78482e = new a[0];

    /* renamed from: f  reason: collision with root package name */
    static final a[] f78483f = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<io.reactivex.rxjava3.core.b0<T>> f78484a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f78485b = new AtomicReference<>(f78482e);

    /* renamed from: c  reason: collision with root package name */
    T f78486c;

    /* renamed from: d  reason: collision with root package name */
    Throwable f78487d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeCache.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<c<T>> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78488b = -5791853038359966195L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78489a;

        a(io.reactivex.rxjava3.core.y<? super T> actual, c<T> parent) {
            super(parent);
            this.f78489a = actual;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            c<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.V2(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public c(io.reactivex.rxjava3.core.b0<T> source) {
        this.f78484a = new AtomicReference<>(source);
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        a<T> aVar = new a<>(observer, this);
        observer.onSubscribe(aVar);
        if (U2(aVar)) {
            if (aVar.isDisposed()) {
                V2(aVar);
                return;
            }
            io.reactivex.rxjava3.core.b0<T> andSet = this.f78484a.getAndSet(null);
            if (andSet != null) {
                andSet.b(this);
            }
        } else if (aVar.isDisposed()) {
        } else {
            Throwable th = this.f78487d;
            if (th != null) {
                observer.onError(th);
                return;
            }
            Object obj = (T) this.f78486c;
            if (obj != null) {
                observer.onSuccess(obj);
            } else {
                observer.onComplete();
            }
        }
    }

    boolean U2(a<T> inner) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f78485b.get();
            if (aVarArr == f78483f) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = inner;
        } while (!this.f78485b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void V2(a<T> inner) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f78485b.get();
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
                aVarArr2 = f78482e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f78485b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
    public void onComplete() {
        a<T>[] andSet;
        for (a<T> aVar : this.f78485b.getAndSet(f78483f)) {
            if (!aVar.isDisposed()) {
                aVar.f78489a.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onError(Throwable e4) {
        a<T>[] andSet;
        this.f78487d = e4;
        for (a<T> aVar : this.f78485b.getAndSet(f78483f)) {
            if (!aVar.isDisposed()) {
                aVar.f78489a.onError(e4);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
    }

    @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
    public void onSuccess(T value) {
        a<T>[] andSet;
        this.f78486c = value;
        for (a<T> aVar : this.f78485b.getAndSet(f78483f)) {
            if (!aVar.isDisposed()) {
                aVar.f78489a.onSuccess(value);
            }
        }
    }
}
