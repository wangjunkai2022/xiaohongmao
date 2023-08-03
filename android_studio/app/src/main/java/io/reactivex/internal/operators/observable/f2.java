package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservablePublish.java */
/* loaded from: classes3.dex */
public final class f2<T> extends io.reactivex.observables.a<T> implements o7.g<T>, h2<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74079a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f74080b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<T> f74081c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservablePublish.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<Object> implements io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f74082b = -1100270633763673112L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74083a;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74083a = g0Var;
        }

        void a(b<T> bVar) {
            if (compareAndSet(null, bVar)) {
                return;
            }
            bVar.b(this);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((b) andSet).b(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservablePublish.java */
    /* loaded from: classes3.dex */
    public static final class b<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        static final a[] f74084e = new a[0];

        /* renamed from: f  reason: collision with root package name */
        static final a[] f74085f = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f74086a;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74089d = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<a<T>[]> f74087b = new AtomicReference<>(f74084e);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f74088c = new AtomicBoolean();

        b(AtomicReference<b<T>> atomicReference) {
            this.f74086a = atomicReference;
        }

        boolean a(a<T> aVar) {
            a<T>[] aVarArr;
            a<T>[] aVarArr2;
            do {
                aVarArr = this.f74087b.get();
                if (aVarArr == f74085f) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f74087b.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f74087b.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10].equals(aVar)) {
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
                    aVarArr2 = f74084e;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f74087b.compareAndSet(aVarArr, aVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            AtomicReference<a<T>[]> atomicReference = this.f74087b;
            a<T>[] aVarArr = f74085f;
            if (atomicReference.getAndSet(aVarArr) != aVarArr) {
                this.f74086a.compareAndSet(this, null);
                DisposableHelper.dispose(this.f74089d);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74087b.get() == f74085f;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74086a.compareAndSet(this, null);
            for (a<T> aVar : this.f74087b.getAndSet(f74085f)) {
                aVar.f74083a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74086a.compareAndSet(this, null);
            a<T>[] andSet = this.f74087b.getAndSet(f74085f);
            if (andSet.length != 0) {
                for (a<T> aVar : andSet) {
                    aVar.f74083a.onError(th);
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            for (a<T> aVar : this.f74087b.get()) {
                aVar.f74083a.onNext(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74089d, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservablePublish.java */
    /* loaded from: classes3.dex */
    public static final class c<T> implements io.reactivex.e0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<b<T>> f74090a;

        c(AtomicReference<b<T>> atomicReference) {
            this.f74090a = atomicReference;
        }

        @Override // io.reactivex.e0
        public void subscribe(io.reactivex.g0<? super T> g0Var) {
            a aVar = new a(g0Var);
            g0Var.onSubscribe(aVar);
            while (true) {
                b<T> bVar = this.f74090a.get();
                if (bVar == null || bVar.isDisposed()) {
                    b<T> bVar2 = new b<>(this.f74090a);
                    if (this.f74090a.compareAndSet(bVar, bVar2)) {
                        bVar = bVar2;
                    } else {
                        continue;
                    }
                }
                if (bVar.a(aVar)) {
                    aVar.a(bVar);
                    return;
                }
            }
        }
    }

    private f2(io.reactivex.e0<T> e0Var, io.reactivex.e0<T> e0Var2, AtomicReference<b<T>> atomicReference) {
        this.f74081c = e0Var;
        this.f74079a = e0Var2;
        this.f74080b = atomicReference;
    }

    public static <T> io.reactivex.observables.a<T> o(io.reactivex.e0<T> e0Var) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.U(new f2(new c(atomicReference), e0Var, atomicReference));
    }

    @Override // io.reactivex.internal.operators.observable.h2
    public io.reactivex.e0<T> a() {
        return this.f74079a;
    }

    @Override // io.reactivex.observables.a
    public void g(n7.g<? super io.reactivex.disposables.c> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f74080b.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f74080b);
            if (this.f74080b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (bVar.f74088c.get() || !bVar.f74088c.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(bVar);
            if (z9) {
                this.f74079a.subscribe(bVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // o7.g
    public io.reactivex.e0<T> source() {
        return this.f74079a;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f74081c.subscribe(g0Var);
    }
}
