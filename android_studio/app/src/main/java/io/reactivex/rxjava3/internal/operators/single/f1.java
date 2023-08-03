package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.single.e1;
import io.reactivex.rxjava3.internal.operators.single.o0;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Objects;

/* compiled from: SingleZipIterable.java */
/* loaded from: classes4.dex */
public final class f1<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> f80813a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f80814b;

    /* compiled from: SingleZipIterable.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = f1.this.f80814b.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }
    }

    public f1(Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> sources, q7.o<? super Object[], ? extends R> zipper) {
        this.f80813a = sources;
        this.f80814b = zipper;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        io.reactivex.rxjava3.core.v0[] v0VarArr = new io.reactivex.rxjava3.core.v0[8];
        try {
            int i4 = 0;
            for (io.reactivex.rxjava3.core.v0<? extends T> v0Var : this.f80813a) {
                if (v0Var == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                    return;
                }
                if (i4 == v0VarArr.length) {
                    v0VarArr = (io.reactivex.rxjava3.core.v0[]) Arrays.copyOf(v0VarArr, (i4 >> 2) + i4);
                }
                int i10 = i4 + 1;
                v0VarArr[i4] = v0Var;
                i4 = i10;
            }
            if (i4 == 0) {
                EmptyDisposable.error(new NoSuchElementException(), observer);
            } else if (i4 == 1) {
                v0VarArr[0].d(new o0.a(observer, new a()));
            } else {
                e1.b bVar = new e1.b(observer, i4, this.f80814b);
                observer.onSubscribe(bVar);
                for (int i11 = 0; i11 < i4 && !bVar.isDisposed(); i11++) {
                    v0VarArr[i11].d(bVar.f80789c[i11]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
