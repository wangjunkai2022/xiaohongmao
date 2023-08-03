package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservablePublishAlt.java */
/* loaded from: classes3.dex */
public final class g2<T> extends io.reactivex.observables.a<T> implements o7.g<T>, io.reactivex.internal.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74135a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f74136b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservablePublishAlt.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<b<T>> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f74137b = 7463222674719692880L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74138a;

        a(io.reactivex.g0<? super T> g0Var, b<T> bVar) {
            this.f74138a = g0Var;
            lazySet(bVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            b<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.b(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* compiled from: ObservablePublishAlt.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicReference<a<T>[]> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74139e = -3251430252873581268L;

        /* renamed from: f  reason: collision with root package name */
        static final a[] f74140f = new a[0];

        /* renamed from: g  reason: collision with root package name */
        static final a[] f74141g = new a[0];

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<b<T>> f74143b;

        /* renamed from: d  reason: collision with root package name */
        Throwable f74145d;

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f74142a = new AtomicBoolean();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74144c = new AtomicReference<>();

        b(AtomicReference<b<T>> atomicReference) {
            this.f74143b = atomicReference;
            lazySet(f74140f);
        }

        public boolean a(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = get();
                if (aVarArr == f74141g) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        public void b(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = get();
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
                aVarArr2 = f74140f;
                if (length != 1) {
                    aVarArr2 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr2, i4, (length - i4) - 1);
                }
            } while (!compareAndSet(aVarArr, aVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            getAndSet(f74141g);
            this.f74143b.compareAndSet(this, null);
            DisposableHelper.dispose(this.f74144c);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == f74141g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74144c.lazySet(DisposableHelper.DISPOSED);
            for (a<T> aVar : getAndSet(f74141g)) {
                aVar.f74138a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74145d = th;
            this.f74144c.lazySet(DisposableHelper.DISPOSED);
            for (a<T> aVar : getAndSet(f74141g)) {
                aVar.f74138a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            for (a<T> aVar : get()) {
                aVar.f74138a.onNext(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74144c, cVar);
        }
    }

    public g2(io.reactivex.e0<T> e0Var) {
        this.f74135a = e0Var;
    }

    @Override // io.reactivex.internal.disposables.c
    public void c(io.reactivex.disposables.c cVar) {
        this.f74136b.compareAndSet((b) cVar, null);
    }

    @Override // io.reactivex.observables.a
    public void g(n7.g<? super io.reactivex.disposables.c> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f74136b.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f74136b);
            if (this.f74136b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (bVar.f74142a.get() || !bVar.f74142a.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(bVar);
            if (z9) {
                this.f74135a.subscribe(bVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // o7.g
    public io.reactivex.e0<T> source() {
        return this.f74135a;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        b<T> bVar;
        while (true) {
            bVar = this.f74136b.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.f74136b);
            if (this.f74136b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(g0Var, bVar);
        g0Var.onSubscribe(aVar);
        if (bVar.a(aVar)) {
            if (aVar.isDisposed()) {
                bVar.b(aVar);
                return;
            }
            return;
        }
        Throwable th = bVar.f74145d;
        if (th != null) {
            g0Var.onError(th);
        } else {
            g0Var.onComplete();
        }
    }
}
