package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.single.k0;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleZipArray.java */
/* loaded from: classes4.dex */
public final class y0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T>[] f75568a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f75569b;

    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(y0.this.f75569b.apply(new Object[]{t9}), "The zipper returned a null value");
        }
    }

    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75571e = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f75572a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f75573b;

        /* renamed from: c  reason: collision with root package name */
        final c<T>[] f75574c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f75575d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(io.reactivex.l0<? super R> l0Var, int i4, n7.o<? super Object[], ? extends R> oVar) {
            super(i4);
            this.f75572a = l0Var;
            this.f75573b = oVar;
            c<T>[] cVarArr = new c[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10] = new c<>(this, i10);
            }
            this.f75574c = cVarArr;
            this.f75575d = new Object[i4];
        }

        void a(int i4) {
            c<T>[] cVarArr = this.f75574c;
            int length = cVarArr.length;
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10].a();
            }
            while (true) {
                i4++;
                if (i4 >= length) {
                    return;
                }
                cVarArr[i4].a();
            }
        }

        void b(Throwable th, int i4) {
            if (getAndSet(0) > 0) {
                a(i4);
                this.f75572a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(T t9, int i4) {
            this.f75575d[i4] = t9;
            if (decrementAndGet() == 0) {
                try {
                    this.f75572a.onSuccess(io.reactivex.internal.functions.b.g(this.f75573b.apply(this.f75575d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f75572a.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f75574c) {
                    cVar.a();
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75576c = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f75577a;

        /* renamed from: b  reason: collision with root package name */
        final int f75578b;

        c(b<T, ?> bVar, int i4) {
            this.f75577a = bVar;
            this.f75578b = i4;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75577a.b(th, this.f75578b);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75577a.c(t9, this.f75578b);
        }
    }

    public y0(io.reactivex.o0<? extends T>[] o0VarArr, n7.o<? super Object[], ? extends R> oVar) {
        this.f75568a = o0VarArr;
        this.f75569b = oVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        io.reactivex.o0<? extends T>[] o0VarArr = this.f75568a;
        int length = o0VarArr.length;
        if (length == 1) {
            o0VarArr[0].d(new k0.a(l0Var, new a()));
            return;
        }
        b bVar = new b(l0Var, length, this.f75569b);
        l0Var.onSubscribe(bVar);
        for (int i4 = 0; i4 < length && !bVar.isDisposed(); i4++) {
            io.reactivex.o0<? extends T> o0Var = o0VarArr[i4];
            if (o0Var == null) {
                bVar.b(new NullPointerException("One of the sources is null"), i4);
                return;
            }
            o0Var.d(bVar.f75574c[i4]);
        }
    }
}
