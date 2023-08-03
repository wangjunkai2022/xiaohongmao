package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.single.k0;
import io.reactivex.internal.operators.single.y0;
import java.util.Arrays;
import java.util.NoSuchElementException;

/* compiled from: SingleZipIterable.java */
/* loaded from: classes4.dex */
public final class z0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.o0<? extends T>> f75589a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f75590b;

    /* compiled from: SingleZipIterable.java */
    /* loaded from: classes4.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(z0.this.f75590b.apply(new Object[]{t9}), "The zipper returned a null value");
        }
    }

    public z0(Iterable<? extends io.reactivex.o0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        this.f75589a = iterable;
        this.f75590b = oVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        io.reactivex.o0[] o0VarArr = new io.reactivex.o0[8];
        try {
            int i4 = 0;
            for (io.reactivex.o0<? extends T> o0Var : this.f75589a) {
                if (o0Var == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), l0Var);
                    return;
                }
                if (i4 == o0VarArr.length) {
                    o0VarArr = (io.reactivex.o0[]) Arrays.copyOf(o0VarArr, (i4 >> 2) + i4);
                }
                int i10 = i4 + 1;
                o0VarArr[i4] = o0Var;
                i4 = i10;
            }
            if (i4 == 0) {
                EmptyDisposable.error(new NoSuchElementException(), l0Var);
            } else if (i4 == 1) {
                o0VarArr[0].d(new k0.a(l0Var, new a()));
            } else {
                y0.b bVar = new y0.b(l0Var, i4, this.f75590b);
                l0Var.onSubscribe(bVar);
                for (int i11 = 0; i11 < i4 && !bVar.isDisposed(); i11++) {
                    o0VarArr[i11].d(bVar.f75574c[i11]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }
}
