package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableAmb.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T>[] f79477a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> f79478b;

    /* compiled from: ObservableAmb.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79479a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f79480b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f79481c = new AtomicInteger();

        a(io.reactivex.rxjava3.core.n0<? super T> actual, int count) {
            this.f79479a = actual;
            this.f79480b = new b[count];
        }

        public void a(io.reactivex.rxjava3.core.l0<? extends T>[] sources) {
            b<T>[] bVarArr = this.f79480b;
            int length = bVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 1;
                bVarArr[i4] = new b<>(this, i10, this.f79479a);
                i4 = i10;
            }
            this.f79481c.lazySet(0);
            this.f79479a.onSubscribe(this);
            for (int i11 = 0; i11 < length && this.f79481c.get() == 0; i11++) {
                sources[i11].a(bVarArr[i11]);
            }
        }

        public boolean b(int index) {
            int i4 = 0;
            if (this.f79481c.get() == 0 && this.f79481c.compareAndSet(0, index)) {
                b<T>[] bVarArr = this.f79480b;
                int length = bVarArr.length;
                while (i4 < length) {
                    int i10 = i4 + 1;
                    if (i10 != index) {
                        bVarArr[i4].a();
                    }
                    i4 = i10;
                }
                return true;
            }
            return false;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79481c.get() != -1) {
                this.f79481c.lazySet(-1);
                for (b<T> bVar : this.f79480b) {
                    bVar.a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79481c.get() == -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableAmb.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79482e = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f79483a;

        /* renamed from: b  reason: collision with root package name */
        final int f79484b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79485c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79486d;

        b(a<T> parent, int index, io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79483a = parent;
            this.f79484b = index;
            this.f79485c = downstream;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79486d) {
                this.f79485c.onComplete();
            } else if (this.f79483a.b(this.f79484b)) {
                this.f79486d = true;
                this.f79485c.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79486d) {
                this.f79485c.onError(t9);
            } else if (this.f79483a.b(this.f79484b)) {
                this.f79486d = true;
                this.f79485c.onError(t9);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79486d) {
                this.f79485c.onNext(t9);
            } else if (this.f79483a.b(this.f79484b)) {
                this.f79486d = true;
                this.f79485c.onNext(t9);
            } else {
                get().dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    public h(io.reactivex.rxjava3.core.l0<? extends T>[] sources, Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> sourcesIterable) {
        this.f79477a = sources;
        this.f79478b = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        int length;
        io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr = this.f79477a;
        if (l0VarArr == null) {
            l0VarArr = new io.reactivex.rxjava3.core.l0[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.l0<? extends T> l0Var : this.f79478b) {
                    if (l0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == l0VarArr.length) {
                        io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr2 = new io.reactivex.rxjava3.core.l0[(length >> 2) + length];
                        System.arraycopy(l0VarArr, 0, l0VarArr2, 0, length);
                        l0VarArr = l0VarArr2;
                    }
                    int i4 = length + 1;
                    l0VarArr[length] = l0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = l0VarArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(observer);
        } else if (length == 1) {
            l0VarArr[0].a(observer);
        } else {
            new a(observer, length).a(l0VarArr);
        }
    }
}
