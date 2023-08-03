package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.internal.observers.BiConsumerSingleObserver;
import io.reactivex.internal.observers.ConsumerSingleObserver;
import io.reactivex.internal.operators.flowable.d1;
import io.reactivex.internal.operators.flowable.r3;
import io.reactivex.internal.operators.observable.e3;
import io.reactivex.internal.operators.single.q0;
import io.reactivex.internal.operators.single.r0;
import io.reactivex.internal.operators.single.s0;
import io.reactivex.internal.operators.single.t0;
import io.reactivex.internal.operators.single.u0;
import io.reactivex.internal.operators.single.v0;
import io.reactivex.internal.operators.single.w0;
import io.reactivex.internal.operators.single.x0;
import io.reactivex.internal.operators.single.y0;
import io.reactivex.internal.operators.single.z0;
import io.reactivex.internal.util.ErrorMode;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Single.java */
/* loaded from: classes3.dex */
public abstract class i0<T> implements o0<T> {
    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> A(m0<T> m0Var) {
        io.reactivex.internal.functions.b.g(m0Var, "source is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.d(m0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> A0(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        return E0(j.R2(o0Var, o0Var2));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, U> i0<T> A1(Callable<U> callable, n7.o<? super U, ? extends o0<? extends T>> oVar, n7.g<? super U> gVar, boolean z9) {
        io.reactivex.internal.functions.b.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.b.g(oVar, "singleFunction is null");
        io.reactivex.internal.functions.b.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.S(new x0(callable, oVar, gVar, z9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> B(Callable<? extends o0<? extends T>> callable) {
        io.reactivex.internal.functions.b.g(callable, "singleSupplier is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.e(callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> B0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        return E0(j.R2(o0Var, o0Var2, o0Var3));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> B1(o0<T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "source is null");
        if (o0Var instanceof i0) {
            return io.reactivex.plugins.a.S((i0) o0Var);
        }
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.f0(o0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> C0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        return E0(j.R2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> i0<R> C1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, o0<? extends T8> o0Var8, o0<? extends T9> o0Var9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(o0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(o0Var8, "source8 is null");
        io.reactivex.internal.functions.b.g(o0Var9, "source9 is null");
        return L1(io.reactivex.internal.functions.a.E(nVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7, o0Var8, o0Var9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> D0(Iterable<? extends o0<? extends T>> iterable) {
        return E0(j.X2(iterable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> i0<R> D1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, o0<? extends T8> o0Var8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(o0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(o0Var8, "source8 is null");
        return L1(io.reactivex.internal.functions.a.D(mVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7, o0Var8);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> E0(org.reactivestreams.c<? extends o0<? extends T>> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        return io.reactivex.plugins.a.P(new d1(cVar, io.reactivex.internal.operators.single.h0.c(), true, Integer.MAX_VALUE, j.Y()));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> i0<R> E1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, o0<? extends T7> o0Var7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(o0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(o0Var7, "source7 is null");
        return L1(io.reactivex.internal.functions.a.C(lVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6, o0Var7);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> i0<R> F1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, o0<? extends T6> o0Var6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(o0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(o0Var6, "source6 is null");
        return L1(io.reactivex.internal.functions.a.B(kVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5, o0Var6);
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<T> G0() {
        return io.reactivex.plugins.a.S(io.reactivex.internal.operators.single.m0.f75440a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> i0<R> G1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, o0<? extends T5> o0Var5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(o0Var5, "source5 is null");
        return L1(io.reactivex.internal.functions.a.A(jVar), o0Var, o0Var2, o0Var3, o0Var4, o0Var5);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, R> i0<R> H1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, o0<? extends T4> o0Var4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        return L1(io.reactivex.internal.functions.a.z(iVar), o0Var, o0Var2, o0Var3, o0Var4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, R> i0<R> I1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, o0<? extends T3> o0Var3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        return L1(io.reactivex.internal.functions.a.y(hVar), o0Var, o0Var2, o0Var3);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, R> i0<R> J1(o0<? extends T1> o0Var, o0<? extends T2> o0Var2, n7.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        return L1(io.reactivex.internal.functions.a.x(cVar), o0Var, o0Var2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> i0<R> K1(Iterable<? extends o0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.S(new z0(iterable, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> i0<R> L1(n7.o<? super Object[], ? extends R> oVar, o0<? extends T>... o0VarArr) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(o0VarArr, "sources is null");
        if (o0VarArr.length == 0) {
            return X(new NoSuchElementException());
        }
        return io.reactivex.plugins.a.S(new y0(o0VarArr, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> W(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.b.g(o0Var, "first is null");
        io.reactivex.internal.functions.b.g(o0Var2, "second is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.v(o0Var, o0Var2));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> X(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "exception is null");
        return Y(io.reactivex.internal.functions.a.m(th));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> Y(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.b.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.w(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> e(Iterable<? extends o0<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.a(null, iterable));
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<T> f(o0<? extends T>... o0VarArr) {
        if (o0VarArr.length == 0) {
            return Y(io.reactivex.internal.operators.single.h0.a());
        }
        if (o0VarArr.length == 1) {
            return B1(o0VarArr[0]);
        }
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.a(o0VarArr, null));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> h0(Callable<? extends T> callable) {
        io.reactivex.internal.functions.b.g(callable, "callable is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.d0(callable));
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<T> i0(Future<? extends T> future) {
        return w1(j.T2(future));
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<T> j0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        return w1(j.U2(future, j4, timeUnit));
    }

    @m7.c
    @m7.g("custom")
    public static <T> i0<T> k0(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        return w1(j.V2(future, j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("custom")
    public static <T> i0<T> l0(Future<? extends T> future, h0 h0Var) {
        return w1(j.W2(future, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> m(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        return q(j.R2(o0Var, o0Var2));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> m0(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "observableSource is null");
        return io.reactivex.plugins.a.S(new e3(e0Var, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> n(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        return q(j.R2(o0Var, o0Var2, o0Var3));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> i0<T> n0(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "publisher is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.e0(cVar));
    }

    private i0<T> n1(long j4, TimeUnit timeUnit, h0 h0Var, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new s0(this, j4, timeUnit, h0Var, o0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> o(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        return q(j.R2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static i0<Long> o1(long j4, TimeUnit timeUnit) {
        return p1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> p(Iterable<? extends o0<? extends T>> iterable) {
        return q(j.X2(iterable));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static i0<Long> p1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new t0(j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> q(org.reactivestreams.c<? extends o0<? extends T>> cVar) {
        return r(cVar, 2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> q0(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.i0(t9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> r(org.reactivestreams.c<? extends o0<? extends T>> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.z(cVar, io.reactivex.internal.operators.single.h0.c(), i4, ErrorMode.IMMEDIATE));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> s(e0<? extends o0<? extends T>> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(e0Var, io.reactivex.internal.operators.single.h0.d(), 2, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> t(o0<? extends T>... o0VarArr) {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.w(j.R2(o0VarArr), io.reactivex.internal.operators.single.h0.c(), 2, ErrorMode.BOUNDARY));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> u(o0<? extends T>... o0VarArr) {
        return j.R2(o0VarArr).a1(io.reactivex.internal.operators.single.h0.c());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> u0(o0<? extends T> o0Var, o0<? extends T> o0Var2) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        return y0(j.R2(o0Var, o0Var2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> v(Iterable<? extends o0<? extends T>> iterable) {
        return j.X2(iterable).a1(io.reactivex.internal.operators.single.h0.c());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> v0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        return y0(j.R2(o0Var, o0Var2, o0Var3));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> w(org.reactivestreams.c<? extends o0<? extends T>> cVar) {
        return j.Y2(cVar).a1(io.reactivex.internal.operators.single.h0.c());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> w0(o0<? extends T> o0Var, o0<? extends T> o0Var2, o0<? extends T> o0Var3, o0<? extends T> o0Var4) {
        io.reactivex.internal.functions.b.g(o0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(o0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(o0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(o0Var4, "source4 is null");
        return y0(j.R2(o0Var, o0Var2, o0Var3, o0Var4));
    }

    private static <T> i0<T> w1(j<T> jVar) {
        return io.reactivex.plugins.a.S(new r3(jVar, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> x0(Iterable<? extends o0<? extends T>> iterable) {
        return y0(j.X2(iterable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> x1(o0<T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "onSubscribe is null");
        if (!(o0Var instanceof i0)) {
            return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.f0(o0Var));
        }
        throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> y0(org.reactivestreams.c<? extends o0<? extends T>> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        return io.reactivex.plugins.a.P(new d1(cVar, io.reactivex.internal.operators.single.h0.c(), false, Integer.MAX_VALUE, j.Y()));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<T> z0(o0<? extends o0<? extends T>> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "source is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.x(o0Var, io.reactivex.internal.functions.a.k()));
    }

    @m7.c
    @m7.g("none")
    public static <T, U> i0<T> z1(Callable<U> callable, n7.o<? super U, ? extends o0<? extends T>> oVar, n7.g<? super U> gVar) {
        return A1(callable, oVar, gVar, true);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final i0<T> C(long j4, TimeUnit timeUnit) {
        return E(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.c
    @m7.g("custom")
    public final i0<T> D(long j4, TimeUnit timeUnit, h0 h0Var) {
        return E(j4, timeUnit, h0Var, false);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final i0<T> E(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.f(this, j4, timeUnit, h0Var, z9));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final i0<T> F(long j4, TimeUnit timeUnit, boolean z9) {
        return E(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> F0(o0<? extends T> o0Var) {
        return u0(this, o0Var);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final i0<T> G(long j4, TimeUnit timeUnit) {
        return H(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("custom")
    public final i0<T> H(long j4, TimeUnit timeUnit, h0 h0Var) {
        return J(z.timer(j4, timeUnit, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final i0<T> H0(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.n0(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> I(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.g(this, gVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> I0(i0<? extends T> i0Var) {
        io.reactivex.internal.functions.b.g(i0Var, "resumeSingleInCaseOfError is null");
        return J0(io.reactivex.internal.functions.a.n(i0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> i0<T> J(e0<U> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.h(this, e0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> J0(n7.o<? super Throwable, ? extends o0<? extends T>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "resumeFunctionInCaseOfError is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.p0(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> i0<T> K(o0<U> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.j(this, o0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> K0(n7.o<Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.o0(this, oVar, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> i0<T> L(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.i(this, cVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> L0(T t9) {
        io.reactivex.internal.functions.b.g(t9, "value is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.o0(this, null, t9));
    }

    @m7.d
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> q<R> M(n7.o<? super T, y<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.single.k(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> M0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.l(this));
    }

    @m7.c
    @m7.g("none")
    public final <U, R> i0<R> M1(o0<U> o0Var, n7.c<? super T, ? super U, ? extends R> cVar) {
        return J1(this, o0Var, cVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> N(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onAfterSuccess is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.m(this, gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> N0() {
        return s1().T4();
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> O(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onAfterTerminate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.n(this, aVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> O0(long j4) {
        return s1().U4(j4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> P(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.o(this, aVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> P0(n7.e eVar) {
        return s1().V4(eVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> Q(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onDispose is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.p(this, aVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Q0(n7.o<? super j<Object>, ? extends org.reactivestreams.c<?>> oVar) {
        return s1().W4(oVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> R(n7.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onError is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.q(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> R0() {
        return w1(s1().n5());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> S(n7.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.b.g(bVar, "onEvent is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.r(this, bVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> S0(long j4) {
        return w1(s1().o5(j4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> T(n7.g<? super io.reactivex.disposables.c> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.s(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> T0(long j4, n7.r<? super Throwable> rVar) {
        return w1(s1().p5(j4, rVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> U(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSuccess is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.t(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> U0(n7.d<? super Integer, ? super Throwable> dVar) {
        return w1(s1().q5(dVar));
    }

    @m7.d
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<T> V(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onTerminate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.u(this, aVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> V0(n7.r<? super Throwable> rVar) {
        return w1(s1().r5(rVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> W0(n7.o<? super j<Throwable>, ? extends org.reactivestreams.c<?>> oVar) {
        return w1(s1().t5(oVar));
    }

    @m7.g("none")
    public final io.reactivex.disposables.c X0() {
        return a1(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71132f);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c Y0(n7.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.b.g(bVar, "onCallback is null");
        BiConsumerSingleObserver biConsumerSingleObserver = new BiConsumerSingleObserver(bVar);
        d(biConsumerSingleObserver);
        return biConsumerSingleObserver;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> Z(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.y(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c Z0(n7.g<? super T> gVar) {
        return a1(gVar, io.reactivex.internal.functions.a.f71132f);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> i0<R> a0(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.x(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c a1(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        io.reactivex.internal.functions.b.g(gVar, "onSuccess is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(gVar, gVar2);
        d(consumerSingleObserver);
        return consumerSingleObserver;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a b0(n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.single.y(this, oVar));
    }

    protected abstract void b1(@m7.e l0<? super T> l0Var);

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> c0(n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.single.b0(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final i0<T> c1(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new q0(this, h0Var));
    }

    @Override // io.reactivex.o0
    @m7.g("none")
    public final void d(l0<? super T> l0Var) {
        io.reactivex.internal.functions.b.g(l0Var, "observer is null");
        l0<? super T> g02 = io.reactivex.plugins.a.g0(this, l0Var);
        io.reactivex.internal.functions.b.g(g02, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            b1(g02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> z<R> d0(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.s(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final <E extends l0<? super T>> E d1(E e4) {
        d(e4);
        return e4;
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> e0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.single.c0(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> e1(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return g1(new io.reactivex.internal.operators.completable.o0(gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> f0(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.single.z(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <E> i0<T> f1(o0<? extends E> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return g1(new u0(o0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> g(o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return f(this, o0Var);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> z<U> g0(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.single.a0(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <E> i0<T> g1(org.reactivestreams.c<E> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.S(new r0(this, cVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> R h(@m7.e j0<T, ? extends R> j0Var) {
        return (R) ((j0) io.reactivex.internal.functions.b.g(j0Var, "converter is null")).a(this);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> h1() {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        d(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("none")
    public final T i() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        d(fVar);
        return (T) fVar.b();
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> i1(boolean z9) {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        if (z9) {
            mVar.cancel();
        }
        d(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("none")
    public final i0<T> j() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.b(this));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final i0<T> j1(long j4, TimeUnit timeUnit) {
        return n1(j4, timeUnit, io.reactivex.schedulers.b.a(), null);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> i0<U> k(Class<? extends U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return (i0<U>) s0(io.reactivex.internal.functions.a.e(cls));
    }

    @m7.c
    @m7.g("custom")
    public final i0<T> k1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return n1(j4, timeUnit, h0Var, null);
    }

    @m7.c
    @m7.g("none")
    public final <R> i0<R> l(p0<? super T, ? extends R> p0Var) {
        return B1(((p0) io.reactivex.internal.functions.b.g(p0Var, "transformer is null")).a(this));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final i0<T> l1(long j4, TimeUnit timeUnit, h0 h0Var, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return n1(j4, timeUnit, h0Var, o0Var);
    }

    @m7.e
    @m7.c
    @m7.g("io.reactivex:computation")
    public final i0<T> m1(long j4, TimeUnit timeUnit, o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return n1(j4, timeUnit, io.reactivex.schedulers.b.a(), o0Var);
    }

    @m7.c
    @m7.g("none")
    public final i0<T> o0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.g0(this));
    }

    @m7.c
    @m7.g("none")
    public final a p0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.v(this));
    }

    @m7.c
    @m7.g("none")
    public final <R> R q1(n7.o<? super i0<T>, R> oVar) {
        try {
            return (R) ((n7.o) io.reactivex.internal.functions.b.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> i0<R> r0(n0<? extends R, ? super T> n0Var) {
        io.reactivex.internal.functions.b.g(n0Var, "lift is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.j0(this, n0Var));
    }

    @Deprecated
    @m7.c
    @m7.g("none")
    public final a r1() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.v(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> i0<R> s0(n7.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.k0(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> s1() {
        if (this instanceof o7.b) {
            return ((o7.b) this).c();
        }
        return io.reactivex.plugins.a.P(new u0(this));
    }

    @m7.d
    @m7.c
    @m7.g("none")
    public final i0<y<T>> t0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.l0(this));
    }

    @m7.c
    @m7.g("none")
    public final Future<T> t1() {
        return (Future) d1(new io.reactivex.internal.observers.i());
    }

    @m7.c
    @m7.g("none")
    public final q<T> u1() {
        if (this instanceof o7.c) {
            return ((o7.c) this).b();
        }
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.m0(this));
    }

    @m7.c
    @m7.g("none")
    public final z<T> v1() {
        if (this instanceof o7.d) {
            return ((o7.d) this).a();
        }
        return io.reactivex.plugins.a.R(new v0(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> x(o0<? extends T> o0Var) {
        return m(this, o0Var);
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> y(Object obj) {
        return z(obj, io.reactivex.internal.functions.b.d());
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final i0<T> y1(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.S(new w0(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<Boolean> z(Object obj, n7.d<Object, Object> dVar) {
        io.reactivex.internal.functions.b.g(obj, "value is null");
        io.reactivex.internal.functions.b.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.c(this, obj, dVar));
    }
}
