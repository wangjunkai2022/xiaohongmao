package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.internal.operators.flowable.d1;
import io.reactivex.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.internal.operators.maybe.MaybeToPublisher;
import io.reactivex.internal.operators.maybe.a1;
import io.reactivex.internal.operators.maybe.b1;
import io.reactivex.internal.operators.maybe.c1;
import io.reactivex.internal.operators.maybe.e1;
import io.reactivex.internal.operators.maybe.f1;
import io.reactivex.internal.operators.maybe.g1;
import io.reactivex.internal.operators.maybe.h1;
import io.reactivex.internal.operators.maybe.i1;
import io.reactivex.internal.operators.maybe.j1;
import io.reactivex.internal.operators.maybe.k1;
import io.reactivex.internal.operators.maybe.l1;
import io.reactivex.internal.operators.maybe.m1;
import io.reactivex.internal.operators.maybe.n1;
import io.reactivex.internal.operators.maybe.o1;
import io.reactivex.internal.operators.maybe.p1;
import io.reactivex.internal.operators.maybe.q1;
import io.reactivex.internal.operators.maybe.r0;
import io.reactivex.internal.operators.maybe.r1;
import io.reactivex.internal.operators.maybe.s0;
import io.reactivex.internal.operators.maybe.s1;
import io.reactivex.internal.operators.maybe.t0;
import io.reactivex.internal.operators.maybe.u0;
import io.reactivex.internal.operators.maybe.v0;
import io.reactivex.internal.operators.maybe.w0;
import io.reactivex.internal.operators.maybe.x0;
import io.reactivex.internal.operators.maybe.y0;
import io.reactivex.internal.operators.maybe.z0;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Maybe.java */
/* loaded from: classes3.dex */
public abstract class q<T> implements w<T> {
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> A0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        return F0(wVar, wVar2, wVar3, wVar4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> B0(Iterable<? extends w<? extends T>> iterable) {
        return C0(j.X2(iterable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> C0(org.reactivestreams.c<? extends w<? extends T>> cVar) {
        return D0(cVar, Integer.MAX_VALUE);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> D(u<T> uVar) {
        io.reactivex.internal.functions.b.g(uVar, "onSubscribe is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.i(uVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> D0(org.reactivestreams.c<? extends w<? extends T>> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "source is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.P(new d1(cVar, MaybeToPublisher.instance(), false, i4, 1));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> E0(w<? extends w<? extends T>> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "source is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g0(wVar, io.reactivex.internal.functions.a.k()));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> F(Callable<? extends w<? extends T>> callable) {
        io.reactivex.internal.functions.b.g(callable, "maybeSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.j(callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> F0(w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.b.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.k2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new l1(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new w0(wVarArr));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> G0(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.k2();
        }
        return j.R2(wVarArr).B2(MaybeToPublisher.instance(), true, wVarArr.length);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> H0(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        return G0(wVar, wVar2);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static q<Long> H1(long j4, TimeUnit timeUnit) {
        return I1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> I0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        return G0(wVar, wVar2, wVar3);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static q<Long> I1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new k1(Math.max(0L, j4), timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> J0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        return G0(wVar, wVar2, wVar3, wVar4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> K0(Iterable<? extends w<? extends T>> iterable) {
        return j.X2(iterable).A2(MaybeToPublisher.instance(), true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> L0(org.reactivestreams.c<? extends w<? extends T>> cVar) {
        return M0(cVar, Integer.MAX_VALUE);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> M0(org.reactivestreams.c<? extends w<? extends T>> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "source is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.P(new d1(cVar, MaybeToPublisher.instance(), true, i4, 1));
    }

    @m7.c
    @m7.g("none")
    public static <T> q<T> O0() {
        return io.reactivex.plugins.a.Q(x0.f73512a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> O1(w<T> wVar) {
        if (!(wVar instanceof q)) {
            io.reactivex.internal.functions.b.g(wVar, "onSubscribe is null");
            return io.reactivex.plugins.a.Q(new o1(wVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
    }

    @m7.c
    @m7.g("none")
    public static <T, D> q<T> Q1(Callable<? extends D> callable, n7.o<? super D, ? extends w<? extends T>> oVar, n7.g<? super D> gVar) {
        return R1(callable, oVar, gVar, true);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, D> q<T> R1(Callable<? extends D> callable, n7.o<? super D, ? extends w<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        io.reactivex.internal.functions.b.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.b.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.b.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.Q(new q1(callable, oVar, gVar, z9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> S1(w<T> wVar) {
        if (wVar instanceof q) {
            return io.reactivex.plugins.a.Q((q) wVar);
        }
        io.reactivex.internal.functions.b.g(wVar, "onSubscribe is null");
        return io.reactivex.plugins.a.Q(new o1(wVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> q<R> T1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, w<? extends T9> wVar9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(wVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(wVar8, "source8 is null");
        io.reactivex.internal.functions.b.g(wVar9, "source9 is null");
        return c2(io.reactivex.internal.functions.a.E(nVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8, wVar9);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> q<R> U1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, w<? extends T8> wVar8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(wVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(wVar8, "source8 is null");
        return c2(io.reactivex.internal.functions.a.D(mVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7, wVar8);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> q<R> V1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, w<? extends T7> wVar7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(wVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(wVar7, "source7 is null");
        return c2(io.reactivex.internal.functions.a.C(lVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6, wVar7);
    }

    @m7.c
    @m7.g("none")
    public static <T> q<T> W() {
        return io.reactivex.plugins.a.Q(io.reactivex.internal.operators.maybe.t.f73472a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> q<R> W1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, w<? extends T6> wVar6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(wVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(wVar6, "source6 is null");
        return c2(io.reactivex.internal.functions.a.B(kVar), wVar, wVar2, wVar3, wVar4, wVar5, wVar6);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> X(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "exception is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.v(th));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> q<R> X1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, w<? extends T5> wVar5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(wVar5, "source5 is null");
        return c2(io.reactivex.internal.functions.a.A(jVar), wVar, wVar2, wVar3, wVar4, wVar5);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> Y(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.b.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.w(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, R> q<R> Y1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, w<? extends T4> wVar4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        return c2(io.reactivex.internal.functions.a.z(iVar), wVar, wVar2, wVar3, wVar4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, R> q<R> Z1(w<? extends T1> wVar, w<? extends T2> wVar2, w<? extends T3> wVar3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        return c2(io.reactivex.internal.functions.a.y(hVar), wVar, wVar2, wVar3);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, R> q<R> a2(w<? extends T1> wVar, w<? extends T2> wVar2, n7.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        return c2(io.reactivex.internal.functions.a.x(cVar), wVar, wVar2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> q<R> b2(Iterable<? extends w<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.Q(new s1(iterable, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> q<R> c2(n7.o<? super Object[], ? extends R> oVar, w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.b.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return W();
        }
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        return io.reactivex.plugins.a.Q(new r1(wVarArr, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> d(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.b(null, iterable));
    }

    @m7.c
    @m7.g("none")
    public static <T> q<T> e(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return W();
        }
        if (wVarArr.length == 1) {
            return S1(wVarArr[0]);
        }
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.b(wVarArr, null));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> k0(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "run is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.h0(aVar));
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> k1(w<? extends T> wVar, w<? extends T> wVar2) {
        return l1(wVar, wVar2, io.reactivex.internal.functions.b.d());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> l0(@m7.e Callable<? extends T> callable) {
        io.reactivex.internal.functions.b.g(callable, "callable is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.i0(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> l1(w<? extends T> wVar, w<? extends T> wVar2, n7.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(dVar, "isEqual is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.u(wVar, wVar2, dVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> m(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        return s(wVar, wVar2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> m0(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "completableSource is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.j0(gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> n(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        return s(wVar, wVar2, wVar3);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> n0(Future<? extends T> future) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.k0(future, 0L, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> o(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3, w<? extends T> wVar4) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(wVar4, "source4 is null");
        return s(wVar, wVar2, wVar3, wVar4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> o0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.k0(future, j4, timeUnit));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> p(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.maybe.f(iterable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> p0(Runnable runnable) {
        io.reactivex.internal.functions.b.g(runnable, "run is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.l0(runnable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> q(org.reactivestreams.c<? extends w<? extends T>> cVar) {
        return r(cVar, 2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> q0(o0<T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "singleSource is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.m0(o0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> r(org.reactivestreams.c<? extends w<? extends T>> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.z(cVar, MaybeToPublisher.instance(), i4, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> s(w<? extends T>... wVarArr) {
        io.reactivex.internal.functions.b.g(wVarArr, "sources is null");
        if (wVarArr.length == 0) {
            return j.k2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new l1(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.maybe.d(wVarArr));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> t(w<? extends T>... wVarArr) {
        if (wVarArr.length == 0) {
            return j.k2();
        }
        if (wVarArr.length == 1) {
            return io.reactivex.plugins.a.P(new l1(wVarArr[0]));
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.maybe.e(wVarArr));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> u(w<? extends T>... wVarArr) {
        return j.R2(wVarArr).a1(MaybeToPublisher.instance());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> q<T> u0(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return io.reactivex.plugins.a.Q(new s0(t9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> v(Iterable<? extends w<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return j.X2(iterable).Y0(MaybeToPublisher.instance());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> w(org.reactivestreams.c<? extends w<? extends T>> cVar) {
        return j.Y2(cVar).Y0(MaybeToPublisher.instance());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> x(Iterable<? extends w<? extends T>> iterable) {
        return j.X2(iterable).a1(MaybeToPublisher.instance());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> y(org.reactivestreams.c<? extends w<? extends T>> cVar) {
        return j.Y2(cVar).a1(MaybeToPublisher.instance());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> y0(w<? extends T> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        return F0(wVar, wVar2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> z0(w<? extends T> wVar, w<? extends T> wVar2, w<? extends T> wVar3) {
        io.reactivex.internal.functions.b.g(wVar, "source1 is null");
        io.reactivex.internal.functions.b.g(wVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(wVar3, "source3 is null");
        return F0(wVar, wVar2, wVar3);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> A(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return m(this, wVar);
    }

    @m7.e
    @m7.c
    @m7.g("io.reactivex:computation")
    public final q<T> A1(long j4, TimeUnit timeUnit, w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "fallback is null");
        return C1(j4, timeUnit, io.reactivex.schedulers.b.a(), wVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<Boolean> B(Object obj) {
        io.reactivex.internal.functions.b.g(obj, "item is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.g(this, obj));
    }

    @m7.c
    @m7.g("custom")
    public final q<T> B1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return D1(I1(j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final i0<Long> C() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.h(this));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final q<T> C1(long j4, TimeUnit timeUnit, h0 h0Var, w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "fallback is null");
        return E1(I1(j4, timeUnit, h0Var), wVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> q<T> D1(w<U> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "timeoutIndicator is null");
        return io.reactivex.plugins.a.Q(new i1(this, wVar, null));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> E(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return t1(u0(t9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> q<T> E1(w<U> wVar, w<? extends T> wVar2) {
        io.reactivex.internal.functions.b.g(wVar, "timeoutIndicator is null");
        io.reactivex.internal.functions.b.g(wVar2, "fallback is null");
        return io.reactivex.plugins.a.Q(new i1(this, wVar, wVar2));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> q<T> F1(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "timeoutIndicator is null");
        return io.reactivex.plugins.a.Q(new j1(this, cVar, null));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final q<T> G(long j4, TimeUnit timeUnit) {
        return H(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> q<T> G1(org.reactivestreams.c<U> cVar, w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(cVar, "timeoutIndicator is null");
        io.reactivex.internal.functions.b.g(wVar, "fallback is null");
        return io.reactivex.plugins.a.Q(new j1(this, cVar, wVar));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final q<T> H(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.k(this, Math.max(0L, j4), timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> q<T> I(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "delayIndicator is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.l(this, cVar));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final q<T> J(long j4, TimeUnit timeUnit) {
        return K(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> R J1(n7.o<? super q<T>, R> oVar) {
        try {
            return (R) ((n7.o) io.reactivex.internal.functions.b.g(oVar, "convert is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.c
    @m7.g("custom")
    public final q<T> K(long j4, TimeUnit timeUnit, h0 h0Var) {
        return L(j.v7(j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> K1() {
        if (this instanceof o7.b) {
            return ((o7.b) this).c();
        }
        return io.reactivex.plugins.a.P(new l1(this));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> q<T> L(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "subscriptionIndicator is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.m(this, cVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> L1() {
        if (this instanceof o7.d) {
            return ((o7.d) this).a();
        }
        return io.reactivex.plugins.a.R(new m1(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> M(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onAfterSuccess is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.p(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> M1() {
        return io.reactivex.plugins.a.S(new n1(this, null));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> N(n7.a aVar) {
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, h4, h10, h11, aVar2, (n7.a) io.reactivex.internal.functions.b.g(aVar, "onAfterTerminate is null"), aVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> N0(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return y0(this, wVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> N1(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultValue is null");
        return io.reactivex.plugins.a.S(new n1(this, t9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> O(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.q(this, aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> P(n7.a aVar) {
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), (n7.a) io.reactivex.internal.functions.b.g(aVar, "onComplete is null"), aVar2, aVar2));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final q<T> P0(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new y0(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final q<T> P1(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new p1(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> Q(n7.a aVar) {
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, h4, h10, h11, aVar2, aVar2, (n7.a) io.reactivex.internal.functions.b.g(aVar, "onDispose is null")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> q<U> Q0(Class<U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return Z(io.reactivex.internal.functions.a.l(cls)).k(cls);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> R(n7.g<? super Throwable> gVar) {
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), (n7.g) io.reactivex.internal.functions.b.g(gVar, "onError is null"), aVar, aVar, aVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> R0() {
        return S0(io.reactivex.internal.functions.a.c());
    }

    @m7.c
    @m7.g("none")
    public final q<T> S(n7.b<? super T, ? super Throwable> bVar) {
        io.reactivex.internal.functions.b.g(bVar, "onEvent is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.r(this, bVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> S0(n7.r<? super Throwable> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new z0(this, rVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> T(n7.g<? super io.reactivex.disposables.c> gVar) {
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, (n7.g) io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null"), h4, h10, aVar, aVar, aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> T0(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "next is null");
        return U0(io.reactivex.internal.functions.a.n(wVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> U(n7.g<? super T> gVar) {
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.Q(new c1(this, io.reactivex.internal.functions.a.h(), (n7.g) io.reactivex.internal.functions.b.g(gVar, "onSuccess is null"), h4, aVar, aVar, aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> U0(n7.o<? super Throwable, ? extends w<? extends T>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.Q(new a1(this, oVar, true));
    }

    @m7.d
    @m7.c
    @m7.e
    @m7.g("none")
    public final q<T> V(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onTerminate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.s(this, aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> V0(n7.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.Q(new b1(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> W0(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return V0(io.reactivex.internal.functions.a.n(t9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> X0(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "next is null");
        return io.reactivex.plugins.a.Q(new a1(this, io.reactivex.internal.functions.a.n(wVar), false));
    }

    @m7.c
    @m7.g("none")
    public final q<T> Y0() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.o(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> Z(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.x(this, rVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Z0() {
        return a1(Long.MAX_VALUE);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> a0(n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g0(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> a1(long j4) {
        return K1().U4(j4);
    }

    @Override // io.reactivex.w
    @m7.g("none")
    public final void b(t<? super T> tVar) {
        io.reactivex.internal.functions.b.g(tVar, "observer is null");
        t<? super T> e02 = io.reactivex.plugins.a.e0(this, tVar);
        io.reactivex.internal.functions.b.g(e02, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            q1(e02);
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
    public final <U, R> q<R> b0(n7.o<? super T, ? extends w<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.z(this, oVar, cVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> b1(n7.e eVar) {
        return K1().V4(eVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> c0(n7.o<? super T, ? extends w<? extends R>> oVar, n7.o<? super Throwable, ? extends w<? extends R>> oVar2, Callable<? extends w<? extends R>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "onSuccessMapper is null");
        io.reactivex.internal.functions.b.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.b.g(callable, "onCompleteSupplier is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.d0(this, oVar, oVar2, callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> c1(n7.o<? super j<Object>, ? extends org.reactivestreams.c<?>> oVar) {
        return K1().W4(oVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a d0(n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.maybe.a0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> d1() {
        return f1(Long.MAX_VALUE, io.reactivex.internal.functions.a.c());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U, R> q<R> d2(w<? extends U> wVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return a2(this, wVar, cVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> z<R> e0(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.j(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> e1(long j4) {
        return f1(j4, io.reactivex.internal.functions.a.c());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> f(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return e(this, wVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> f0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.k(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> f1(long j4, n7.r<? super Throwable> rVar) {
        return K1().p5(j4, rVar).L5();
    }

    @m7.c
    @m7.g("none")
    public final <R> R g(@m7.e r<T, ? extends R> rVar) {
        return (R) ((r) io.reactivex.internal.functions.b.g(rVar, "converter is null")).a(this);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> i0<R> g0(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.maybe.e0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> g1(n7.d<? super Integer, ? super Throwable> dVar) {
        return K1().q5(dVar).L5();
    }

    @m7.c
    @m7.g("none")
    public final T h() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        b(fVar);
        return (T) fVar.b();
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> h0(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.f0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> h1(n7.r<? super Throwable> rVar) {
        return f1(Long.MAX_VALUE, rVar);
    }

    @m7.c
    @m7.g("none")
    public final T i(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultValue is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        b(fVar);
        return (T) fVar.c(t9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> i0(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.maybe.b0(this, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> i1(n7.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "stop is null");
        return f1(Long.MAX_VALUE, io.reactivex.internal.functions.a.v(eVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> j() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.c(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> z<U> j0(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.maybe.c0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final q<T> j1(n7.o<? super j<Throwable>, ? extends org.reactivestreams.c<?>> oVar) {
        return K1().t5(oVar).L5();
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> q<U> k(Class<? extends U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return (q<U>) w0(io.reactivex.internal.functions.a.e(cls));
    }

    @m7.c
    @m7.g("none")
    public final <R> q<R> l(x<? super T, ? extends R> xVar) {
        return S1(((x) io.reactivex.internal.functions.b.g(xVar, "transformer is null")).a(this));
    }

    @m7.g("none")
    public final io.reactivex.disposables.c m1() {
        return p1(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c n1(n7.g<? super T> gVar) {
        return p1(gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c o1(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        return p1(gVar, gVar2, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c p1(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSuccess is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        return (io.reactivex.disposables.c) s1(new MaybeCallbackObserver(gVar, gVar2, aVar));
    }

    protected abstract void q1(t<? super T> tVar);

    @m7.c
    @m7.g("none")
    public final q<T> r0() {
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.n0(this));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final q<T> r1(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.d1(this, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final a s0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.maybe.p0(this));
    }

    @m7.c
    @m7.g("none")
    public final <E extends t<? super T>> E s1(E e4) {
        b(e4);
        return e4;
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> t0() {
        return io.reactivex.plugins.a.S(new r0(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final q<T> t1(w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.Q(new e1(this, wVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final i0<T> u1(o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.S(new f1(this, o0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> v0(v<? extends R, ? super T> vVar) {
        io.reactivex.internal.functions.b.g(vVar, "lift is null");
        return io.reactivex.plugins.a.Q(new t0(this, vVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <U> q<T> v1(w<U> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.Q(new g1(this, wVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> w0(n7.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new u0(this, oVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> q<T> w1(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.Q(new h1(this, cVar));
    }

    @m7.d
    @m7.c
    @m7.g("none")
    public final i0<y<T>> x0() {
        return io.reactivex.plugins.a.S(new v0(this));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> x1() {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        b(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> y1(boolean z9) {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        if (z9) {
            mVar.cancel();
        }
        b(mVar);
        return mVar;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> q<R> z(n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.g0(this, oVar));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final q<T> z1(long j4, TimeUnit timeUnit) {
        return B1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }
}
