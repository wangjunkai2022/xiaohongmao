package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservablePublish.java */
/* loaded from: classes4.dex */
public final class k2<T> extends io.reactivex.rxjava3.observables.a<T> implements io.reactivex.rxjava3.internal.fuseable.i<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79628a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f79629b = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservablePublish.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<b<T>> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f79630b = 7463222674719692880L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79631a;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream, b<T> parent) {
            this.f79631a = downstream;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            b<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.b(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* compiled from: ObservablePublish.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicReference<a<T>[]> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79632e = -3251430252873581268L;

        /* renamed from: f  reason: collision with root package name */
        static final a[] f79633f = new a[0];

        /* renamed from: g  reason: collision with root package name */
        static final a[] f79634g = new a[0];

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<b<T>> f79636b;

        /* renamed from: d  reason: collision with root package name */
        Throwable f79638d;

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f79635a = new AtomicBoolean();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79637c = new AtomicReference<>();

        b(AtomicReference<b<T>> current) {
            this.f79636b = current;
            lazySet(f79633f);
        }

        public boolean a(a<T> inner) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = get();
                if (aVarArr == f79634g) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = inner;
            } while (!compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        public void b(a<T> inner) {
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
                aVarArr2 = f79633f;
                if (length != 1) {
                    aVarArr2 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr2, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr2, i4, (length - i4) - 1);
                }
            } while (!compareAndSet(aVarArr, aVarArr2));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            getAndSet(f79634g);
            this.f79636b.compareAndSet(this, null);
            DisposableHelper.dispose(this.f79637c);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == f79634g;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79637c.lazySet(DisposableHelper.DISPOSED);
            for (a<T> aVar : getAndSet(f79634g)) {
                aVar.f79631a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.disposables.f fVar = this.f79637c.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                this.f79638d = e4;
                this.f79637c.lazySet(disposableHelper);
                for (a<T> aVar : getAndSet(f79634g)) {
                    aVar.f79631a.onError(e4);
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            for (a<T> aVar : get()) {
                aVar.f79631a.onNext(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79637c, d4);
        }
    }

    public k2(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79628a = source;
    }

    @Override // io.reactivex.rxjava3.observables.a
    public void E8(q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        b<T> bVar;
        while (true) {
            bVar = this.f79629b.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f79629b);
            if (this.f79629b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (bVar.f79635a.get() || !bVar.f79635a.compareAndSet(false, true)) ? false : false;
        try {
            connection.accept(bVar);
            if (z9) {
                this.f79628a.a(bVar);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // io.reactivex.rxjava3.observables.a
    public void L8() {
        b<T> bVar = this.f79629b.get();
        if (bVar == null || !bVar.isDisposed()) {
            return;
        }
        this.f79629b.compareAndSet(bVar, null);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        b<T> bVar;
        while (true) {
            bVar = this.f79629b.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.f79629b);
            if (this.f79629b.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(observer, bVar);
        observer.onSubscribe(aVar);
        if (bVar.a(aVar)) {
            if (aVar.isDisposed()) {
                bVar.b(aVar);
                return;
            }
            return;
        }
        Throwable th = bVar.f79638d;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.i
    public io.reactivex.rxjava3.core.l0<T> source() {
        return this.f79628a;
    }
}
