package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.maybe.u1;
import io.reactivex.rxjava3.internal.operators.maybe.w0;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: MaybeZipIterable.java */
/* loaded from: classes4.dex */
public final class v1<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> f78787a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f78788b;

    /* compiled from: MaybeZipIterable.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = v1.this.f78788b.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }
    }

    public v1(Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> sources, q7.o<? super Object[], ? extends R> zipper) {
        this.f78787a = sources;
        this.f78788b = zipper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        io.reactivex.rxjava3.core.b0[] b0VarArr = new io.reactivex.rxjava3.core.b0[8];
        try {
            int i4 = 0;
            for (io.reactivex.rxjava3.core.b0<? extends T> b0Var : this.f78787a) {
                if (b0Var == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                    return;
                }
                if (i4 == b0VarArr.length) {
                    b0VarArr = (io.reactivex.rxjava3.core.b0[]) Arrays.copyOf(b0VarArr, (i4 >> 2) + i4);
                }
                int i10 = i4 + 1;
                b0VarArr[i4] = b0Var;
                i4 = i10;
            }
            if (i4 == 0) {
                EmptyDisposable.complete(observer);
            } else if (i4 == 1) {
                b0VarArr[0].b(new w0.a(observer, new a()));
            } else {
                u1.b bVar = new u1.b(observer, i4, this.f78788b);
                observer.onSubscribe(bVar);
                for (int i11 = 0; i11 < i4 && !bVar.isDisposed(); i11++) {
                    b0VarArr[i11].b(bVar.f78780c[i11]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
