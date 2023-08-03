package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableAmb.java */
/* loaded from: classes3.dex */
public final class h<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f74160a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f74161b;

    /* compiled from: ObservableAmb.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74162a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f74163b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f74164c = new AtomicInteger();

        a(io.reactivex.g0<? super T> g0Var, int i4) {
            this.f74162a = g0Var;
            this.f74163b = new b[i4];
        }

        public void a(io.reactivex.e0<? extends T>[] e0VarArr) {
            b<T>[] bVarArr = this.f74163b;
            int length = bVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 1;
                bVarArr[i4] = new b<>(this, i10, this.f74162a);
                i4 = i10;
            }
            this.f74164c.lazySet(0);
            this.f74162a.onSubscribe(this);
            for (int i11 = 0; i11 < length && this.f74164c.get() == 0; i11++) {
                e0VarArr[i11].subscribe(bVarArr[i11]);
            }
        }

        public boolean b(int i4) {
            int i10 = this.f74164c.get();
            int i11 = 0;
            if (i10 != 0) {
                return i10 == i4;
            } else if (this.f74164c.compareAndSet(0, i4)) {
                b<T>[] bVarArr = this.f74163b;
                int length = bVarArr.length;
                while (i11 < length) {
                    int i12 = i11 + 1;
                    if (i12 != i4) {
                        bVarArr[i11].a();
                    }
                    i11 = i12;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74164c.get() != -1) {
                this.f74164c.lazySet(-1);
                for (b<T> bVar : this.f74163b) {
                    bVar.a();
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74164c.get() == -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableAmb.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74165e = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f74166a;

        /* renamed from: b  reason: collision with root package name */
        final int f74167b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74168c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74169d;

        b(a<T> aVar, int i4, io.reactivex.g0<? super T> g0Var) {
            this.f74166a = aVar;
            this.f74167b = i4;
            this.f74168c = g0Var;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74169d) {
                this.f74168c.onComplete();
            } else if (this.f74166a.b(this.f74167b)) {
                this.f74169d = true;
                this.f74168c.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74169d) {
                this.f74168c.onError(th);
            } else if (this.f74166a.b(this.f74167b)) {
                this.f74169d = true;
                this.f74168c.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74169d) {
                this.f74168c.onNext(t9);
            } else if (this.f74166a.b(this.f74167b)) {
                this.f74169d = true;
                this.f74168c.onNext(t9);
            } else {
                get().dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public h(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable) {
        this.f74160a = e0VarArr;
        this.f74161b = iterable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f74160a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.e0[8];
            try {
                length = 0;
                for (io.reactivex.e0<? extends T> e0Var : this.f74161b) {
                    if (e0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), g0Var);
                        return;
                    }
                    if (length == e0VarArr.length) {
                        io.reactivex.e0<? extends T>[] e0VarArr2 = new io.reactivex.e0[(length >> 2) + length];
                        System.arraycopy(e0VarArr, 0, e0VarArr2, 0, length);
                        e0VarArr = e0VarArr2;
                    }
                    int i4 = length + 1;
                    e0VarArr[length] = e0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
                return;
            }
        } else {
            length = e0VarArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(g0Var);
        } else if (length == 1) {
            e0VarArr[0].subscribe(g0Var);
        } else {
            new a(g0Var, length).a(e0VarArr);
        }
    }
}
