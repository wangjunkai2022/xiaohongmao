package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.maybe.r1;
import io.reactivex.internal.operators.maybe.u0;
import java.util.Arrays;

/* compiled from: MaybeZipIterable.java */
/* loaded from: classes3.dex */
public final class s1<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.w<? extends T>> f73469a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f73470b;

    /* compiled from: MaybeZipIterable.java */
    /* loaded from: classes3.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(s1.this.f73470b.apply(new Object[]{t9}), "The zipper returned a null value");
        }
    }

    public s1(Iterable<? extends io.reactivex.w<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        this.f73469a = iterable;
        this.f73470b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        io.reactivex.w[] wVarArr = new io.reactivex.w[8];
        try {
            int i4 = 0;
            for (io.reactivex.w<? extends T> wVar : this.f73469a) {
                if (wVar == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), tVar);
                    return;
                }
                if (i4 == wVarArr.length) {
                    wVarArr = (io.reactivex.w[]) Arrays.copyOf(wVarArr, (i4 >> 2) + i4);
                }
                int i10 = i4 + 1;
                wVarArr[i4] = wVar;
                i4 = i10;
            }
            if (i4 == 0) {
                EmptyDisposable.complete(tVar);
            } else if (i4 == 1) {
                wVarArr[0].b(new u0.a(tVar, new a()));
            } else {
                r1.b bVar = new r1.b(tVar, i4, this.f73470b);
                tVar.onSubscribe(bVar);
                for (int i11 = 0; i11 < i4 && !bVar.isDisposed(); i11++) {
                    wVarArr[i11].b(bVar.f73459c[i11]);
                }
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, tVar);
        }
    }
}
