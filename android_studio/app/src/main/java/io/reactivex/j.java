package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.internal.operators.flowable.FlowableGroupBy;
import io.reactivex.internal.operators.flowable.FlowableInternalHelper;
import io.reactivex.internal.operators.flowable.a2;
import io.reactivex.internal.operators.flowable.a3;
import io.reactivex.internal.operators.flowable.a4;
import io.reactivex.internal.operators.flowable.a5;
import io.reactivex.internal.operators.flowable.b1;
import io.reactivex.internal.operators.flowable.b3;
import io.reactivex.internal.operators.flowable.b4;
import io.reactivex.internal.operators.flowable.c1;
import io.reactivex.internal.operators.flowable.c2;
import io.reactivex.internal.operators.flowable.c3;
import io.reactivex.internal.operators.flowable.c4;
import io.reactivex.internal.operators.flowable.d2;
import io.reactivex.internal.operators.flowable.d3;
import io.reactivex.internal.operators.flowable.d4;
import io.reactivex.internal.operators.flowable.e1;
import io.reactivex.internal.operators.flowable.e2;
import io.reactivex.internal.operators.flowable.e3;
import io.reactivex.internal.operators.flowable.f1;
import io.reactivex.internal.operators.flowable.f2;
import io.reactivex.internal.operators.flowable.f3;
import io.reactivex.internal.operators.flowable.f4;
import io.reactivex.internal.operators.flowable.g1;
import io.reactivex.internal.operators.flowable.g2;
import io.reactivex.internal.operators.flowable.g3;
import io.reactivex.internal.operators.flowable.g4;
import io.reactivex.internal.operators.flowable.h1;
import io.reactivex.internal.operators.flowable.h2;
import io.reactivex.internal.operators.flowable.h3;
import io.reactivex.internal.operators.flowable.h4;
import io.reactivex.internal.operators.flowable.i1;
import io.reactivex.internal.operators.flowable.i2;
import io.reactivex.internal.operators.flowable.i3;
import io.reactivex.internal.operators.flowable.i4;
import io.reactivex.internal.operators.flowable.j1;
import io.reactivex.internal.operators.flowable.j2;
import io.reactivex.internal.operators.flowable.j3;
import io.reactivex.internal.operators.flowable.j4;
import io.reactivex.internal.operators.flowable.k2;
import io.reactivex.internal.operators.flowable.k3;
import io.reactivex.internal.operators.flowable.k4;
import io.reactivex.internal.operators.flowable.l1;
import io.reactivex.internal.operators.flowable.l3;
import io.reactivex.internal.operators.flowable.l4;
import io.reactivex.internal.operators.flowable.m1;
import io.reactivex.internal.operators.flowable.m2;
import io.reactivex.internal.operators.flowable.m4;
import io.reactivex.internal.operators.flowable.n1;
import io.reactivex.internal.operators.flowable.n2;
import io.reactivex.internal.operators.flowable.n3;
import io.reactivex.internal.operators.flowable.n4;
import io.reactivex.internal.operators.flowable.o1;
import io.reactivex.internal.operators.flowable.o2;
import io.reactivex.internal.operators.flowable.o3;
import io.reactivex.internal.operators.flowable.p1;
import io.reactivex.internal.operators.flowable.p2;
import io.reactivex.internal.operators.flowable.p4;
import io.reactivex.internal.operators.flowable.q0;
import io.reactivex.internal.operators.flowable.q1;
import io.reactivex.internal.operators.flowable.q3;
import io.reactivex.internal.operators.flowable.q4;
import io.reactivex.internal.operators.flowable.r0;
import io.reactivex.internal.operators.flowable.r1;
import io.reactivex.internal.operators.flowable.r3;
import io.reactivex.internal.operators.flowable.r4;
import io.reactivex.internal.operators.flowable.s0;
import io.reactivex.internal.operators.flowable.s1;
import io.reactivex.internal.operators.flowable.s2;
import io.reactivex.internal.operators.flowable.s3;
import io.reactivex.internal.operators.flowable.s4;
import io.reactivex.internal.operators.flowable.t1;
import io.reactivex.internal.operators.flowable.t2;
import io.reactivex.internal.operators.flowable.t3;
import io.reactivex.internal.operators.flowable.t4;
import io.reactivex.internal.operators.flowable.u0;
import io.reactivex.internal.operators.flowable.u1;
import io.reactivex.internal.operators.flowable.u2;
import io.reactivex.internal.operators.flowable.u3;
import io.reactivex.internal.operators.flowable.u4;
import io.reactivex.internal.operators.flowable.v0;
import io.reactivex.internal.operators.flowable.v1;
import io.reactivex.internal.operators.flowable.v3;
import io.reactivex.internal.operators.flowable.v4;
import io.reactivex.internal.operators.flowable.w0;
import io.reactivex.internal.operators.flowable.w1;
import io.reactivex.internal.operators.flowable.w2;
import io.reactivex.internal.operators.flowable.w3;
import io.reactivex.internal.operators.flowable.w4;
import io.reactivex.internal.operators.flowable.x0;
import io.reactivex.internal.operators.flowable.x1;
import io.reactivex.internal.operators.flowable.x2;
import io.reactivex.internal.operators.flowable.x3;
import io.reactivex.internal.operators.flowable.x4;
import io.reactivex.internal.operators.flowable.y0;
import io.reactivex.internal.operators.flowable.y1;
import io.reactivex.internal.operators.flowable.y2;
import io.reactivex.internal.operators.flowable.y3;
import io.reactivex.internal.operators.flowable.y4;
import io.reactivex.internal.operators.flowable.z0;
import io.reactivex.internal.operators.flowable.z1;
import io.reactivex.internal.operators.flowable.z3;
import io.reactivex.internal.operators.flowable.z4;
import io.reactivex.internal.subscribers.ForEachWhileSubscriber;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.subscribers.StrictSubscriber;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.HashMapSupplier;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Flowable.java */
/* loaded from: classes3.dex */
public abstract class j<T> implements org.reactivestreams.c<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f75933a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> A0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4) {
        return Y2(cVar).S0(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> A3(T t9, T t10, T t11, T t12, T t13, T t14) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        return R2(t9, t10, t11, t12, t13, t14);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> A6(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return Y2(cVar).p6(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, R> j<R> A8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return G8(io.reactivex.internal.functions.a.z(iVar), false, Y(), cVar, cVar2, cVar3, cVar4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> B0(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return E0(cVar, cVar2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> B1(Callable<? extends org.reactivestreams.c<? extends T>> callable) {
        io.reactivex.internal.functions.b.g(callable, "supplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.i0(callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> B3(T t9, T t10, T t11, T t12, T t13, T t14, T t15) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        return R2(t9, t10, t11, t12, t13, t14, t15);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> B6(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4) {
        return Y2(cVar).q6(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> j<R> B8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        return G8(io.reactivex.internal.functions.a.A(jVar), false, Y(), cVar, cVar2, cVar3, cVar4, cVar5);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> C0(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return E0(cVar, cVar2, cVar3);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> C3(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        io.reactivex.internal.functions.b.g(t16, "item8 is null");
        return R2(t9, t10, t11, t12, t13, t14, t15, t16);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> C6(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return D6(cVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> j<R> C8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        return G8(io.reactivex.internal.functions.a.B(kVar), false, Y(), cVar, cVar2, cVar3, cVar4, cVar5, cVar6);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> D0(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3, org.reactivestreams.c<? extends T> cVar4) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return E0(cVar, cVar2, cVar3, cVar4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> D3(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        io.reactivex.internal.functions.b.g(t16, "item8 is null");
        io.reactivex.internal.functions.b.g(t17, "item9 is null");
        return R2(t9, t10, t11, t12, t13, t14, t15, t16, t17);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> D6(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4) {
        return Y2(cVar).v6(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> D8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        return G8(io.reactivex.internal.functions.a.C(lVar), false, Y(), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> E0(org.reactivestreams.c<? extends T>... cVarArr) {
        if (cVarArr.length == 0) {
            return k2();
        }
        if (cVarArr.length == 1) {
            return Y2(cVarArr[0]);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.v(cVarArr, false));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> E3(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        io.reactivex.internal.functions.b.g(t16, "item8 is null");
        io.reactivex.internal.functions.b.g(t17, "item9 is null");
        io.reactivex.internal.functions.b.g(t18, "item10 is null");
        return R2(t9, t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> E5(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
        return H5(cVar, cVar2, io.reactivex.internal.functions.b.d(), Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> E8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, org.reactivestreams.c<? extends T8> cVar8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(cVar8, "source8 is null");
        return G8(io.reactivex.internal.functions.a.D(mVar), false, Y(), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> F0(org.reactivestreams.c<? extends T>... cVarArr) {
        if (cVarArr.length == 0) {
            return k2();
        }
        if (cVarArr.length == 1) {
            return Y2(cVarArr[0]);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.v(cVarArr, true));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> F5(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, int i4) {
        return H5(cVar, cVar2, io.reactivex.internal.functions.b.d(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> F8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, org.reactivestreams.c<? extends T8> cVar8, org.reactivestreams.c<? extends T9> cVar9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(cVar8, "source8 is null");
        io.reactivex.internal.functions.b.g(cVar9, "source9 is null");
        return G8(io.reactivex.internal.functions.a.E(nVar), false, Y(), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> G0(int i4, int i10, org.reactivestreams.c<? extends T>... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.x(new g1(cVarArr), io.reactivex.internal.functions.a.k(), i4, i10, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> G5(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, n7.d<? super T, ? super T> dVar) {
        return H5(cVar, cVar2, dVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> G8(n7.o<? super Object[], ? extends R> oVar, boolean z9, int i4, org.reactivestreams.c<? extends T>... cVarArr) {
        if (cVarArr.length == 0) {
            return k2();
        }
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new z4(cVarArr, null, oVar, i4, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> H0(org.reactivestreams.c<? extends T>... cVarArr) {
        return G0(Y(), Y(), cVarArr);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> i0<Boolean> H5(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, n7.d<? super T, ? super T> dVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(dVar, "isEqual is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.S(new n3(cVar, cVar2, dVar, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> H8(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new z4(null, iterable, oVar, i4, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> I0(int i4, int i10, org.reactivestreams.c<? extends T>... cVarArr) {
        return R2(cVarArr).c1(io.reactivex.internal.functions.a.k(), i4, i10, true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> J0(org.reactivestreams.c<? extends T>... cVarArr) {
        return I0(Y(), Y(), cVarArr);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> K0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return X2(iterable).Y0(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> L0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return M0(cVar, Y(), true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> M0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4, boolean z9) {
        return Y2(cVar).Z0(io.reactivex.internal.functions.a.k(), i4, z9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> M3(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        return X2(iterable).r2(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> N0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        return O0(iterable, Y(), Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> N3(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, int i4) {
        return X2(iterable).s2(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static j<Integer> N4(int i4, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i10);
        } else if (i10 == 0) {
            return k2();
        } else {
            if (i10 == 1) {
                return v3(Integer.valueOf(i4));
            }
            if (i4 + (i10 - 1) <= 2147483647L) {
                return io.reactivex.plugins.a.P(new t2(i4, i10));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> O0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, int i4, int i10) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.x(new j1(iterable), io.reactivex.internal.functions.a.k(), i4, i10, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> O3(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, int i4, int i10) {
        return X2(iterable).C2(io.reactivex.internal.functions.a.k(), false, i4, i10);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static j<Long> O4(long j4, long j10) {
        int i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j10);
        } else if (i4 == 0) {
            return k2();
        } else {
            if (j10 == 1) {
                return v3(Long.valueOf(j4));
            }
            long j11 = (j10 - 1) + j4;
            if (j4 > 0 && j11 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.plugins.a.P(new u2(j4, j10));
        }
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> P0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return Q0(cVar, Y(), Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> P3(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return Q3(cVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> Q0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4, int i10) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.y(cVar, io.reactivex.internal.functions.a.k(), i4, i10, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> Q3(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4) {
        return Y2(cVar).s2(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> R2(T... tArr) {
        io.reactivex.internal.functions.b.g(tArr, "items is null");
        if (tArr.length == 0) {
            return k2();
        }
        if (tArr.length == 1) {
            return v3(tArr[0]);
        }
        return io.reactivex.plugins.a.P(new g1(tArr));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> R3(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return R2(cVar, cVar2).B2(io.reactivex.internal.functions.a.k(), false, 2);
    }

    @m7.a(BackpressureKind.NONE)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> R7(org.reactivestreams.c<T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "onSubscribe is null");
        if (!(cVar instanceof j)) {
            return io.reactivex.plugins.a.P(new l1(cVar));
        }
        throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> S2(Callable<? extends T> callable) {
        io.reactivex.internal.functions.b.g(callable, "supplier is null");
        return io.reactivex.plugins.a.P(new h1(callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> S3(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return R2(cVar, cVar2, cVar3).B2(io.reactivex.internal.functions.a.k(), false, 3);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> T2(Future<? extends T> future) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return io.reactivex.plugins.a.P(new i1(future, 0L, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> T3(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3, org.reactivestreams.c<? extends T> cVar4) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return R2(cVar, cVar2, cVar3, cVar4).B2(io.reactivex.internal.functions.a.k(), false, 4);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public static <T, D> j<T> T7(Callable<? extends D> callable, n7.o<? super D, ? extends org.reactivestreams.c<? extends T>> oVar, n7.g<? super D> gVar) {
        return U7(callable, oVar, gVar, true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> U2(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.P(new i1(future, j4, timeUnit));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> U3(int i4, int i10, org.reactivestreams.c<? extends T>... cVarArr) {
        return R2(cVarArr).C2(io.reactivex.internal.functions.a.k(), false, i4, i10);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, D> j<T> U7(Callable<? extends D> callable, n7.o<? super D, ? extends org.reactivestreams.c<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        io.reactivex.internal.functions.b.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.b.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.b.g(gVar, "resourceDisposer is null");
        return io.reactivex.plugins.a.P(new r4(callable, oVar, gVar, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public static <T> j<T> V2(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return U2(future, j4, timeUnit).l6(h0Var);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> V3(org.reactivestreams.c<? extends T>... cVarArr) {
        return R2(cVarArr).s2(io.reactivex.internal.functions.a.k(), cVarArr.length);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public static <T> j<T> W2(Future<? extends T> future, h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return T2(future).l6(h0Var);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> W3(int i4, int i10, org.reactivestreams.c<? extends T>... cVarArr) {
        return R2(cVarArr).C2(io.reactivex.internal.functions.a.k(), true, i4, i10);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> X2(Iterable<? extends T> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "source is null");
        return io.reactivex.plugins.a.P(new j1(iterable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> X3(org.reactivestreams.c<? extends T>... cVarArr) {
        return R2(cVarArr).B2(io.reactivex.internal.functions.a.k(), true, cVarArr.length);
    }

    public static int Y() {
        return f75933a;
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> Y2(org.reactivestreams.c<? extends T> cVar) {
        if (cVar instanceof j) {
            return io.reactivex.plugins.a.P((j) cVar);
        }
        io.reactivex.internal.functions.b.g(cVar, "source is null");
        return io.reactivex.plugins.a.P(new l1(cVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> Y3(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        return X2(iterable).A2(io.reactivex.internal.functions.a.k(), true);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    private j<T> Z1(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.g(aVar2, "onAfterTerminate is null");
        return io.reactivex.plugins.a.P(new r0(this, gVar, gVar2, aVar, aVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, S> j<T> Z2(Callable<S> callable, n7.b<S, i<T>> bVar) {
        io.reactivex.internal.functions.b.g(bVar, "generator is null");
        return c3(callable, FlowableInternalHelper.i(bVar), io.reactivex.internal.functions.a.h());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> Z3(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, int i4) {
        return X2(iterable).B2(io.reactivex.internal.functions.a.k(), true, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, S> j<T> a3(Callable<S> callable, n7.b<S, i<T>> bVar, n7.g<? super S> gVar) {
        io.reactivex.internal.functions.b.g(bVar, "generator is null");
        return c3(callable, FlowableInternalHelper.i(bVar), gVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> a4(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, int i4, int i10) {
        return X2(iterable).C2(io.reactivex.internal.functions.a.k(), true, i4, i10);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, S> j<T> b3(Callable<S> callable, n7.c<S, i<T>, S> cVar) {
        return c3(callable, cVar, io.reactivex.internal.functions.a.h());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> b4(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return c4(cVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, S> j<T> c3(Callable<S> callable, n7.c<S, i<T>, S> cVar, n7.g<? super S> gVar) {
        io.reactivex.internal.functions.b.g(callable, "initialState is null");
        io.reactivex.internal.functions.b.g(cVar, "generator is null");
        io.reactivex.internal.functions.b.g(gVar, "disposeState is null");
        return io.reactivex.plugins.a.P(new m1(callable, cVar, gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> c4(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, int i4) {
        return Y2(cVar).B2(io.reactivex.internal.functions.a.k(), true, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> d3(n7.g<i<T>> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "generator is null");
        return c3(io.reactivex.internal.functions.a.u(), FlowableInternalHelper.j(gVar), io.reactivex.internal.functions.a.h());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> d4(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return R2(cVar, cVar2).B2(io.reactivex.internal.functions.a.k(), true, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> e(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.h(null, iterable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> e0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        return f0(iterable, oVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> e4(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return R2(cVar, cVar2, cVar3).B2(io.reactivex.internal.functions.a.k(), true, 3);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> f(org.reactivestreams.c<? extends T>... cVarArr) {
        io.reactivex.internal.functions.b.g(cVarArr, "sources is null");
        int length = cVarArr.length;
        if (length == 0) {
            return k2();
        }
        if (length == 1) {
            return Y2(cVarArr[0]);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.h(cVarArr, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> f0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.u((Iterable) iterable, (n7.o) oVar, i4, false));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> f4(org.reactivestreams.c<? extends T> cVar, org.reactivestreams.c<? extends T> cVar2, org.reactivestreams.c<? extends T> cVar3, org.reactivestreams.c<? extends T> cVar4) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return R2(cVar, cVar2, cVar3, cVar4).B2(io.reactivex.internal.functions.a.k(), true, 4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> g0(n7.o<? super Object[], ? extends R> oVar, org.reactivestreams.c<? extends T>... cVarArr) {
        return q0(cVarArr, oVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T1, T2, R> j<R> h0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, n7.c<? super T1, ? super T2, ? extends R> cVar3) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return g0(io.reactivex.internal.functions.a.x(cVar3), cVar, cVar2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, R> j<R> i0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return g0(io.reactivex.internal.functions.a.y(hVar), cVar, cVar2, cVar3);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, R> j<R> j0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return g0(io.reactivex.internal.functions.a.z(iVar), cVar, cVar2, cVar3, cVar4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> j<R> k0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        return g0(io.reactivex.internal.functions.a.A(jVar), cVar, cVar2, cVar3, cVar4, cVar5);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public static <T> j<T> k2() {
        return io.reactivex.plugins.a.P(w0.f72928b);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public static <T> j<T> k4() {
        return io.reactivex.plugins.a.P(g2.f71944b);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> j<R> l0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        return g0(io.reactivex.internal.functions.a.B(kVar), cVar, cVar2, cVar3, cVar4, cVar5, cVar6);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> l2(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "throwable is null");
        return m2(io.reactivex.internal.functions.a.m(th));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> j<R> m0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        return g0(io.reactivex.internal.functions.a.C(lVar), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> m2(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.b.g(callable, "supplier is null");
        return io.reactivex.plugins.a.P(new x0(callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> j<R> n0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, org.reactivestreams.c<? extends T8> cVar8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(cVar8, "source8 is null");
        return g0(io.reactivex.internal.functions.a.D(mVar), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public static j<Long> n3(long j4, long j10, TimeUnit timeUnit) {
        return o3(j4, j10, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> j<R> o0(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, org.reactivestreams.c<? extends T4> cVar4, org.reactivestreams.c<? extends T5> cVar5, org.reactivestreams.c<? extends T6> cVar6, org.reactivestreams.c<? extends T7> cVar7, org.reactivestreams.c<? extends T8> cVar8, org.reactivestreams.c<? extends T9> cVar9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        io.reactivex.internal.functions.b.g(cVar5, "source5 is null");
        io.reactivex.internal.functions.b.g(cVar6, "source6 is null");
        io.reactivex.internal.functions.b.g(cVar7, "source7 is null");
        io.reactivex.internal.functions.b.g(cVar8, "source8 is null");
        io.reactivex.internal.functions.b.g(cVar9, "source9 is null");
        return g0(io.reactivex.internal.functions.a.E(nVar), cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public static j<Long> o3(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new r1(Math.max(0L, j4), Math.max(0L, j10), timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> p0(org.reactivestreams.c<? extends T>[] cVarArr, n7.o<? super Object[], ? extends R> oVar) {
        return q0(cVarArr, oVar, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public static j<Long> p3(long j4, TimeUnit timeUnit) {
        return o3(j4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> q0(org.reactivestreams.c<? extends T>[] cVarArr, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(cVarArr, "sources is null");
        if (cVarArr.length == 0) {
            return k2();
        }
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.u((org.reactivestreams.c[]) cVarArr, (n7.o) oVar, i4, false));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public static j<Long> q3(long j4, TimeUnit timeUnit, h0 h0Var) {
        return o3(j4, j4, timeUnit, h0Var);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> r0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        return s0(iterable, oVar, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public static j<Long> r3(long j4, long j10, long j11, long j12, TimeUnit timeUnit) {
        return s3(j4, j10, j11, j12, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> s0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.u((Iterable) iterable, (n7.o) oVar, i4, true));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public static j<Long> s3(long j4, long j10, long j11, long j12, TimeUnit timeUnit, h0 h0Var) {
        int i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j10);
        } else if (i4 == 0) {
            return k2().D1(j11, timeUnit, h0Var);
        } else {
            long j13 = j4 + (j10 - 1);
            if (j4 > 0 && j13 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
            io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
            return io.reactivex.plugins.a.P(new s1(j4, j13, Math.max(0L, j11), Math.max(0L, j12), timeUnit, h0Var));
        }
    }

    private j<T> s7(long j4, TimeUnit timeUnit, org.reactivestreams.c<? extends T> cVar, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "timeUnit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new m4(this, j4, timeUnit, h0Var, cVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> t0(n7.o<? super Object[], ? extends R> oVar, int i4, org.reactivestreams.c<? extends T>... cVarArr) {
        return w0(cVarArr, oVar, i4);
    }

    private <U, V> j<T> t7(org.reactivestreams.c<U> cVar, n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar, org.reactivestreams.c<? extends T> cVar2) {
        io.reactivex.internal.functions.b.g(oVar, "itemTimeoutIndicator is null");
        return io.reactivex.plugins.a.P(new l4(this, cVar, oVar, cVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> u0(n7.o<? super Object[], ? extends R> oVar, org.reactivestreams.c<? extends T>... cVarArr) {
        return w0(cVarArr, oVar, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public static j<Long> u7(long j4, TimeUnit timeUnit) {
        return v7(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> u8(Iterable<? extends org.reactivestreams.c<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.P(new z4(null, iterable, oVar, Y(), false));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T, R> j<R> v0(org.reactivestreams.c<? extends T>[] cVarArr, n7.o<? super Object[], ? extends R> oVar) {
        return w0(cVarArr, oVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> v3(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return io.reactivex.plugins.a.P(new u1(t9));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public static j<Long> v7(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new n4(Math.max(0L, j4), timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> v8(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        return Y2(cVar).C7().e0(FlowableInternalHelper.n(oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T, R> j<R> w0(org.reactivestreams.c<? extends T>[] cVarArr, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(cVarArr, "sources is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (cVarArr.length == 0) {
            return k2();
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.u((org.reactivestreams.c[]) cVarArr, (n7.o) oVar, i4, true));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> w1(m<T> mVar, BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.functions.b.g(mVar, "source is null");
        io.reactivex.internal.functions.b.g(backpressureStrategy, "mode is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.f0(mVar, backpressureStrategy));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> w3(T t9, T t10) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        return R2(t9, t10);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, R> j<R> w8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, n7.c<? super T1, ? super T2, ? extends R> cVar3) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return G8(io.reactivex.internal.functions.a.x(cVar3), false, Y(), cVar, cVar2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> x3(T t9, T t10, T t11) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        return R2(t9, t10, t11);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, R> j<R> x8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, n7.c<? super T1, ? super T2, ? extends R> cVar3, boolean z9) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return G8(io.reactivex.internal.functions.a.x(cVar3), z9, Y(), cVar, cVar2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> y0(Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return X2(iterable).Z0(io.reactivex.internal.functions.a.k(), 2, false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> y3(T t9, T t10, T t11, T t12) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        return R2(t9, t10, t11, t12);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, R> j<R> y8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, n7.c<? super T1, ? super T2, ? extends R> cVar3, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return G8(io.reactivex.internal.functions.a.x(cVar3), z9, i4, cVar, cVar2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static <T> j<T> z0(org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> cVar) {
        return A0(cVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> j<T> z3(T t9, T t10, T t11, T t12, T t13) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        return R2(t9, t10, t11, t12, t13);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T1, T2, T3, R> j<R> z8(org.reactivestreams.c<? extends T1> cVar, org.reactivestreams.c<? extends T2> cVar2, org.reactivestreams.c<? extends T3> cVar3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return G8(io.reactivex.internal.functions.a.y(hVar), false, Y(), cVar, cVar2, cVar3);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final void A(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.flowable.l.b(this, gVar, gVar2, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> A1(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return o6(v3(t9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> A2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9) {
        return C2(oVar, z9, Y(), Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> A4(n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.P(new n2(this, oVar, false));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> A5(org.reactivestreams.c<U> cVar, boolean z9) {
        io.reactivex.internal.functions.b.g(cVar, "sampler is null");
        return io.reactivex.plugins.a.P(new h3(this, cVar, z9));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final <R> R A7(n7.o<? super j<T>, R> oVar) {
        try {
            return (R) ((n7.o) io.reactivex.internal.functions.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.a(BackpressureKind.FULL)
    @m7.g("none")
    public final void B(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, int i4) {
        io.reactivex.internal.operators.flowable.l.c(this, gVar, gVar2, io.reactivex.internal.functions.a.f71129c, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> B2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9, int i4) {
        return C2(oVar, z9, i4, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> B4(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "next is null");
        return A4(io.reactivex.internal.functions.a.n(cVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> B5(R r9, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(r9, "initialValue is null");
        return D5(io.reactivex.internal.functions.a.m(r9), cVar);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final Future<T> B7() {
        return (Future) n6(new io.reactivex.internal.subscribers.f());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final void C(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        io.reactivex.internal.operators.flowable.l.b(this, gVar, gVar2, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> C1(long j4, TimeUnit timeUnit) {
        return E1(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> C2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "bufferSize");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return k2();
            }
            return j3.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new z0(this, oVar, z9, i4, i10));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> C4(n7.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.P(new o2(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> C5(n7.c<T, T, T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.P(new k3(this, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<List<T>> C7() {
        return io.reactivex.plugins.a.S(new p4(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.g("none")
    public final void D(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, int i4) {
        io.reactivex.internal.operators.flowable.l.c(this, gVar, gVar2, aVar, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> D1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return E1(j4, timeUnit, h0Var, false);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final a D2(n7.o<? super T, ? extends g> oVar) {
        return E2(oVar, false, Integer.MAX_VALUE);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> D4(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return C4(io.reactivex.internal.functions.a.n(t9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> D5(Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.b.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.P(new l3(this, callable, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<List<T>> D7(int i4) {
        io.reactivex.internal.functions.b.h(i4, "capacityHint");
        return io.reactivex.plugins.a.S(new p4(this, io.reactivex.internal.functions.a.f(i4)));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.g("none")
    public final void E(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.internal.operators.flowable.l.d(this, dVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> E1(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.j0(this, Math.max(0L, j4), timeUnit, h0Var, z9));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final a E2(n7.o<? super T, ? extends g> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.O(new b1(this, oVar, z9, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> E4(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "next is null");
        return io.reactivex.plugins.a.P(new n2(this, io.reactivex.internal.functions.a.n(cVar), true));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final j<T> E6(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new a4(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <U extends Collection<? super T>> i0<U> E7(Callable<U> callable) {
        io.reactivex.internal.functions.b.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.S(new p4(this, callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<List<T>> F(int i4) {
        return G(i4, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> F1(long j4, TimeUnit timeUnit, boolean z9) {
        return E1(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U> j<U> F2(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return G2(oVar, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<T> F3(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem");
        return io.reactivex.plugins.a.S(new w1(this, t9));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> F4() {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.m0(this));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> F6(long j4, TimeUnit timeUnit) {
        return R6(u7(j4, timeUnit));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K> i0<Map<K, T>> F7(n7.o<? super T, ? extends K> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        return (i0<Map<K, T>>) c0(HashMapSupplier.asCallable(), io.reactivex.internal.functions.a.F(oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<List<T>> G(int i4, int i10) {
        return (j<List<T>>) H(i4, i10, ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> G1(n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "itemDelayIndicator is null");
        return (j<T>) r2(FlowableInternalHelper.c(oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> G2(n7.o<? super T, ? extends Iterable<? extends U>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new f1(this, oVar, i4));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final q<T> G3() {
        return io.reactivex.plugins.a.Q(new v1(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.parallel.a<T> G4() {
        return io.reactivex.parallel.a.y(this);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("custom")
    public final j<T> G6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return R6(v7(j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K, V> i0<Map<K, V>> G7(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) c0(HashMapSupplier.asCallable(), io.reactivex.internal.functions.a.G(oVar, oVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U extends Collection<? super T>> j<U> H(int i4, int i10, Callable<U> callable) {
        io.reactivex.internal.functions.b.h(i4, "count");
        io.reactivex.internal.functions.b.h(i10, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.m(this, i4, i10, callable));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, V> j<T> H1(org.reactivestreams.c<U> cVar, n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar) {
        return K1(cVar).G1(oVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> j<V> H2(n7.o<? super T, ? extends Iterable<? extends U>> oVar, n7.c<? super T, ? super U, ? extends V> cVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return (j<V>) x2(FlowableInternalHelper.a(oVar), cVar, false, Y(), Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<T> H3() {
        return io.reactivex.plugins.a.S(new w1(this, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.parallel.a<T> H4(int i4) {
        io.reactivex.internal.functions.b.h(i4, "parallelism");
        return io.reactivex.parallel.a.z(this, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> H6(int i4) {
        if (i4 < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i4);
        } else if (i4 == 0) {
            return io.reactivex.plugins.a.P(new p1(this));
        } else {
            if (i4 == 1) {
                return io.reactivex.plugins.a.P(new c4(this));
            }
            return io.reactivex.plugins.a.P(new b4(this, i4));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K, V> i0<Map<K, V>> H7(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) c0(callable, io.reactivex.internal.functions.a.G(oVar, oVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U extends Collection<? super T>> j<U> I(int i4, Callable<U> callable) {
        return H(i4, i4, callable);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> I1(long j4, TimeUnit timeUnit) {
        return J1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> j<V> I2(n7.o<? super T, ? extends Iterable<? extends U>> oVar, n7.c<? super T, ? super U, ? extends V> cVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return (j<V>) x2(FlowableInternalHelper.a(oVar), cVar, false, Y(), i4);
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> I3(n<? extends R, ? super T> nVar) {
        io.reactivex.internal.functions.b.g(nVar, "lifter is null");
        return io.reactivex.plugins.a.P(new x1(this, nVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.parallel.a<T> I4(int i4, int i10) {
        io.reactivex.internal.functions.b.h(i4, "parallelism");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.parallel.a.A(this, i4, i10);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> I5() {
        return io.reactivex.plugins.a.P(new o3(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> I6(long j4, long j10, TimeUnit timeUnit) {
        return K6(j4, j10, timeUnit, io.reactivex.schedulers.b.a(), false, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <K> i0<Map<K, Collection<T>>> I7(n7.o<? super T, ? extends K> oVar) {
        return (i0<Map<K, Collection<T>>>) L7(oVar, io.reactivex.internal.functions.a.k(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, R> j<R> I8(Iterable<U> iterable, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(iterable, "other is null");
        io.reactivex.internal.functions.b.g(cVar, "zipper is null");
        return io.reactivex.plugins.a.P(new a5(this, iterable, cVar));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<List<T>> J(long j4, long j10, TimeUnit timeUnit) {
        return (j<List<T>>) L(j4, j10, timeUnit, io.reactivex.schedulers.b.a(), ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> J1(long j4, TimeUnit timeUnit, h0 h0Var) {
        return K1(v7(j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <R> j<R> J2(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return K2(oVar, false, Integer.MAX_VALUE);
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final j<T> J3(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new y1(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> J4(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar) {
        return K4(oVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> J5() {
        return L4().S8();
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> J6(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return K6(j4, j10, timeUnit, h0Var, false, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> J7(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        return L7(oVar, oVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, R> j<R> J8(org.reactivestreams.c<? extends U> cVar, n7.c<? super T, ? super U, ? extends R> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return w8(this, cVar, cVar2);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<List<T>> K(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return (j<List<T>>) L(j4, j10, timeUnit, h0Var, ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> K1(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "subscriptionIndicator is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.k0(this, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> K2(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.P(new c1(this, oVar, z9, i4));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> K3(n7.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new z1(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> K4(n7.o<? super j<T>, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new s2(this, oVar, i4, false));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<T> K5(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return io.reactivex.plugins.a.S(new r3(this, t9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> K6(long j4, long j10, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (j4 >= 0) {
            return io.reactivex.plugins.a.P(new d4(this, j4, j10, timeUnit, h0Var, i4, z9));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> K7(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return L7(oVar, oVar2, callable, ArrayListSupplier.asFunction());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> K8(org.reactivestreams.c<? extends U> cVar, n7.c<? super T, ? super U, ? extends R> cVar2, boolean z9) {
        return x8(this, cVar, cVar2, z9);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final <U extends Collection<? super T>> j<U> L(long j4, long j10, TimeUnit timeUnit, h0 h0Var, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.q(this, j4, j10, timeUnit, h0Var, callable, Integer.MAX_VALUE, false));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @Deprecated
    @m7.c
    @m7.g("none")
    public final <T2> j<T2> L1() {
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.l0(this, io.reactivex.internal.functions.a.k()));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final <R> j<R> L2(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return M2(oVar, false, Integer.MAX_VALUE);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<y<T>> L3() {
        return io.reactivex.plugins.a.P(new c2(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.flowables.a<T> L4() {
        return M4(Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final q<T> L5() {
        return io.reactivex.plugins.a.Q(new q3(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> L6(long j4, TimeUnit timeUnit) {
        return O6(j4, timeUnit, io.reactivex.schedulers.b.a(), false, Y());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> L7(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, n7.o<? super K, ? extends Collection<? super V>> oVar3) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.g(callable, "mapSupplier is null");
        io.reactivex.internal.functions.b.g(oVar3, "collectionFactory is null");
        return (i0<Map<K, Collection<V>>>) c0(callable, io.reactivex.internal.functions.a.H(oVar, oVar2, oVar3));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> L8(org.reactivestreams.c<? extends U> cVar, n7.c<? super T, ? super U, ? extends R> cVar2, boolean z9, int i4) {
        return y8(this, cVar, cVar2, z9, i4);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<List<T>> M(long j4, TimeUnit timeUnit) {
        return P(j4, timeUnit, io.reactivex.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.d
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> M1(n7.o<? super T, y<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.l0(this, oVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> M2(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.P(new e1(this, oVar, z9, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.flowables.a<T> M4(int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return p2.Y8(this, i4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<T> M5() {
        return io.reactivex.plugins.a.S(new r3(this, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> M6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return O6(j4, timeUnit, h0Var, false, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final z<T> M7() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.g1(this));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<List<T>> N(long j4, TimeUnit timeUnit, int i4) {
        return P(j4, timeUnit, io.reactivex.schedulers.b.a(), i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> N1() {
        return P1(io.reactivex.internal.functions.a.k(), io.reactivex.internal.functions.a.g());
    }

    @m7.a(BackpressureKind.NONE)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c N2(n7.g<? super T> gVar) {
        return f6(gVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> N5(long j4) {
        if (j4 <= 0) {
            return io.reactivex.plugins.a.P(this);
        }
        return io.reactivex.plugins.a.P(new s3(this, j4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> N6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        return O6(j4, timeUnit, h0Var, z9, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<List<T>> N7() {
        return P7(io.reactivex.internal.functions.a.p());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<List<T>> O(long j4, TimeUnit timeUnit, h0 h0Var) {
        return (j<List<T>>) Q(j4, timeUnit, h0Var, Integer.MAX_VALUE, ArrayListSupplier.asCallable(), false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K> j<T> O1(n7.o<? super T, K> oVar) {
        return P1(oVar, io.reactivex.internal.functions.a.g());
    }

    @m7.a(BackpressureKind.NONE)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c O2(n7.r<? super T> rVar) {
        return Q2(rVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> O5(long j4, TimeUnit timeUnit) {
        return W5(u7(j4, timeUnit));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> O6(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        return K6(Long.MAX_VALUE, j4, timeUnit, h0Var, z9, i4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<List<T>> O7(int i4) {
        return Q7(io.reactivex.internal.functions.a.p(), i4);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<List<T>> P(long j4, TimeUnit timeUnit, h0 h0Var, int i4) {
        return (j<List<T>>) Q(j4, timeUnit, h0Var, i4, ArrayListSupplier.asCallable(), false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K> j<T> P1(n7.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.n0(this, oVar, callable));
    }

    @m7.a(BackpressureKind.NONE)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c P2(n7.r<? super T> rVar, n7.g<? super Throwable> gVar) {
        return Q2(rVar, gVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> P4(int i4) {
        return n4(io.reactivex.internal.schedulers.e.f75679c, true, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> P5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return W5(v7(j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> P6(long j4, TimeUnit timeUnit, boolean z9) {
        return O6(j4, timeUnit, io.reactivex.schedulers.b.a(), z9, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<List<T>> P7(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        return (i0<List<T>>) C7().s0(io.reactivex.internal.functions.a.o(comparator));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final <U extends Collection<? super T>> j<U> Q(long j4, TimeUnit timeUnit, h0 h0Var, int i4, Callable<U> callable, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        io.reactivex.internal.functions.b.h(i4, "count");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.q(this, j4, j4, timeUnit, h0Var, callable, i4, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Q1() {
        return S1(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.NONE)
    @m7.c
    @m7.e
    @m7.g("none")
    public final io.reactivex.disposables.c Q2(n7.r<? super T> rVar, n7.g<? super Throwable> gVar, n7.a aVar) {
        io.reactivex.internal.functions.b.g(rVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        ForEachWhileSubscriber forEachWhileSubscriber = new ForEachWhileSubscriber(rVar, gVar, aVar);
        j6(forEachWhileSubscriber);
        return forEachWhileSubscriber;
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final q<T> Q4(n7.c<T, T, T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.Q(new w2(this, cVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Q5(int i4) {
        if (i4 >= 0) {
            if (i4 == 0) {
                return io.reactivex.plugins.a.P(this);
            }
            return io.reactivex.plugins.a.P(new t3(this, i4));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i4);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> Q6(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "stopPredicate is null");
        return io.reactivex.plugins.a.P(new g4(this, rVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<List<T>> Q7(Comparator<? super T> comparator, int i4) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        return (i0<List<T>>) D7(i4).s0(io.reactivex.internal.functions.a.o(comparator));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <TOpening, TClosing> j<List<T>> R(j<? extends TOpening> jVar, n7.o<? super TOpening, ? extends org.reactivestreams.c<? extends TClosing>> oVar) {
        return (j<List<T>>) S(jVar, oVar, ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> R0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return S0(oVar, 2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> R1(n7.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.o0(this, io.reactivex.internal.functions.a.k(), dVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> i0<R> R4(R r9, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(r9, "seed is null");
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new x2(this, r9, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> R5(long j4, TimeUnit timeUnit) {
        return U5(j4, timeUnit, io.reactivex.schedulers.b.a(), false, Y());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> R6(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.P(new f4(this, cVar));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <TOpening, TClosing, U extends Collection<? super T>> j<U> S(j<? extends TOpening> jVar, n7.o<? super TOpening, ? extends org.reactivestreams.c<? extends TClosing>> oVar, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(jVar, "openingIndicator is null");
        io.reactivex.internal.functions.b.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.n(this, jVar, oVar, callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> S0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return k2();
            }
            return j3.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.w(this, oVar, i4, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K> j<T> S1(n7.o<? super T, K> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.o0(this, oVar, io.reactivex.internal.functions.b.d()));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> i0<R> S4(Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new y2(this, callable, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("custom")
    public final j<T> S5(long j4, TimeUnit timeUnit, h0 h0Var) {
        return U5(j4, timeUnit, h0Var, false, Y());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> S6(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new h4(this, rVar));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> S7(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new q4(this, h0Var));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B> j<List<T>> T(Callable<? extends org.reactivestreams.c<B>> callable) {
        return (j<List<T>>) U(callable, ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final a T0(n7.o<? super T, ? extends g> oVar) {
        return U0(oVar, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> T1(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onAfterNext is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.p0(this, gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> T4() {
        return U4(Long.MAX_VALUE);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("custom")
    public final j<T> T5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        return U5(j4, timeUnit, h0Var, z9, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final io.reactivex.subscribers.f<T> T6() {
        io.reactivex.subscribers.f<T> fVar = new io.reactivex.subscribers.f<>();
        j6(fVar);
        return fVar;
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B, U extends Collection<? super T>> j<U> U(Callable<? extends org.reactivestreams.c<B>> callable, Callable<U> callable2) {
        io.reactivex.internal.functions.b.g(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.functions.b.g(callable2, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.o(this, callable, callable2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final a U0(n7.o<? super T, ? extends g> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.c(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> U1(n7.a aVar) {
        return Z1(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71129c, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> U4(long j4) {
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return k2();
            }
            return io.reactivex.plugins.a.P(new a3(this, j4));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> U5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new u3(this, j4, timeUnit, h0Var, i4 << 1, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.subscribers.f<T> U6(long j4) {
        io.reactivex.subscribers.f<T> fVar = new io.reactivex.subscribers.f<>(j4);
        j6(fVar);
        return fVar;
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B> j<List<T>> V(org.reactivestreams.c<B> cVar) {
        return (j<List<T>>) X(cVar, ArrayListSupplier.asCallable());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final a V0(n7.o<? super T, ? extends g> oVar) {
        return X0(oVar, true, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> V1(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.P(new q0(this, aVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> V4(n7.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "stop is null");
        return io.reactivex.plugins.a.P(new b3(this, eVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> V5(long j4, TimeUnit timeUnit, boolean z9) {
        return U5(j4, timeUnit, io.reactivex.schedulers.b.a(), z9, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.subscribers.f<T> V6(long j4, boolean z9) {
        io.reactivex.subscribers.f<T> fVar = new io.reactivex.subscribers.f<>(j4);
        if (z9) {
            fVar.cancel();
        }
        j6(fVar);
        return fVar;
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<j<T>> V7(long j4) {
        return X7(j4, j4, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B> j<List<T>> W(org.reactivestreams.c<B> cVar, int i4) {
        io.reactivex.internal.functions.b.h(i4, "initialCapacity");
        return (j<List<T>>) X(cVar, io.reactivex.internal.functions.a.f(i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final a W0(n7.o<? super T, ? extends g> oVar, boolean z9) {
        return X0(oVar, z9, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> W1(n7.a aVar) {
        return c2(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> W4(n7.o<? super j<Object>, ? extends org.reactivestreams.c<?>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "handler is null");
        return io.reactivex.plugins.a.P(new c3(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> W5(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.P(new v3(this, cVar));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> W6(long j4, TimeUnit timeUnit) {
        return X6(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<j<T>> W7(long j4, long j10) {
        return X7(j4, j10, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B, U extends Collection<? super T>> j<U> X(org.reactivestreams.c<B> cVar, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(cVar, "boundaryIndicator is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.p(this, cVar, callable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final a X0(n7.o<? super T, ? extends g> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.c(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> X1(n7.a aVar) {
        return Z1(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), aVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> X4(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return d3.d9(FlowableInternalHelper.d(this), oVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> X5(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new w3(this, rVar));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> X6(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new i4(this, j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<j<T>> X7(long j4, long j10, int i4) {
        io.reactivex.internal.functions.b.i(j10, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.internal.functions.b.i(j4, "count");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new s4(this, j4, j10, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> Y0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return Z0(oVar, 2, true);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> Y1(n7.g<? super y<T>> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNotification is null");
        return Z1(io.reactivex.internal.functions.a.t(gVar), io.reactivex.internal.functions.a.s(gVar), io.reactivex.internal.functions.a.r(gVar), io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> Y4(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return d3.d9(FlowableInternalHelper.e(this, i4), oVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Y5() {
        return C7().s1().K3(io.reactivex.internal.functions.a.o(io.reactivex.internal.functions.a.p())).F2(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> Y6(long j4, TimeUnit timeUnit) {
        return v5(j4, timeUnit);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<j<T>> Y7(long j4, long j10, TimeUnit timeUnit) {
        return a8(j4, j10, timeUnit, io.reactivex.schedulers.b.a(), Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> Z() {
        return a0(16);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> Z0(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return k2();
            }
            return j3.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.w(this, oVar, i4, z9 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final <R> j<R> Z4(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, int i4, long j4, TimeUnit timeUnit) {
        return a5(oVar, i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> Z5(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.b.g(comparator, "sortFunction");
        return C7().s1().K3(io.reactivex.internal.functions.a.o(comparator)).F2(io.reactivex.internal.functions.a.k());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<T> Z6(long j4, TimeUnit timeUnit, h0 h0Var) {
        return w5(j4, timeUnit, h0Var);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<j<T>> Z7(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return a8(j4, j10, timeUnit, h0Var, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> a0(int i4) {
        io.reactivex.internal.functions.b.h(i4, "initialCapacity");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.r(this, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> a1(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return b1(oVar, Y(), Y());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> a2(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "subscriber is null");
        return Z1(FlowableInternalHelper.m(dVar), FlowableInternalHelper.l(dVar), FlowableInternalHelper.k(dVar), io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final <R> j<R> a5(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.d9(FlowableInternalHelper.f(this, i4, j4, timeUnit, h0Var), oVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> a6(Iterable<? extends T> iterable) {
        return E0(X2(iterable), this);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> a7(long j4, TimeUnit timeUnit) {
        return c7(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<j<T>> a8(long j4, long j10, TimeUnit timeUnit, h0 h0Var, int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.i(j4, "timespan");
        io.reactivex.internal.functions.b.i(j10, "timeskip");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.P(new w4(this, j4, j10, timeUnit, h0Var, Long.MAX_VALUE, i4, false));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> b0(Class<U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return (j<U>) K3(io.reactivex.internal.functions.a.e(cls));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> b1(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.x(this, oVar, i4, i10, ErrorMode.IMMEDIATE));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> b2(n7.g<? super Throwable> gVar) {
        n7.g<? super T> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return Z1(h4, gVar, aVar, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final <R> j<R> b5(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, int i4, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return d3.d9(FlowableInternalHelper.e(this, i4), FlowableInternalHelper.h(oVar, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> b6(T t9) {
        io.reactivex.internal.functions.b.g(t9, "value is null");
        return E0(v3(t9), this);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<T> b7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return c7(j4, timeUnit, h0Var, false);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<j<T>> b8(long j4, TimeUnit timeUnit) {
        return g8(j4, timeUnit, io.reactivex.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> i0<U> c0(Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.b.g(callable, "initialItemSupplier is null");
        io.reactivex.internal.functions.b.g(bVar, "collector is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.t(this, callable, bVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> c1(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, int i10, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.x(this, oVar, i4, i10, z9 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> c2(n7.g<? super org.reactivestreams.e> gVar, n7.q qVar, n7.a aVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.b.g(qVar, "onRequest is null");
        io.reactivex.internal.functions.b.g(aVar, "onCancel is null");
        return io.reactivex.plugins.a.P(new s0(this, gVar, qVar, aVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final <R> j<R> c5(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, long j4, TimeUnit timeUnit) {
        return d5(oVar, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> c6(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return E0(cVar, this);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> c7(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new j4(this, j4, timeUnit, h0Var, z9));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<j<T>> c8(long j4, TimeUnit timeUnit, long j10) {
        return g8(j4, timeUnit, io.reactivex.schedulers.b.a(), j10, false);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<Boolean> d(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.g(this, rVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> i0<U> d0(U u9, n7.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.b.g(u9, "initialItem is null");
        return c0(io.reactivex.internal.functions.a.m(u9), bVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> d1(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9) {
        return c1(oVar, Y(), Y(), z9);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> d2(n7.g<? super T> gVar) {
        n7.g<? super Throwable> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return Z1(gVar, h4, aVar, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final <R> j<R> d5(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.d9(FlowableInternalHelper.g(this, j4, timeUnit, h0Var), oVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> d6(T... tArr) {
        j R2 = R2(tArr);
        if (R2 == k2()) {
            return io.reactivex.plugins.a.P(this);
        }
        return E0(R2, this);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> d7(long j4, TimeUnit timeUnit, boolean z9) {
        return c7(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<j<T>> d8(long j4, TimeUnit timeUnit, long j10, boolean z9) {
        return g8(j4, timeUnit, io.reactivex.schedulers.b.a(), j10, z9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U> j<U> e1(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        return f1(oVar, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> e2(n7.q qVar) {
        return c2(io.reactivex.internal.functions.a.h(), qVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K> j<io.reactivex.flowables.b<K, T>> e3(n7.o<? super T, ? extends K> oVar) {
        return (j<io.reactivex.flowables.b<K, T>>) h3(oVar, io.reactivex.internal.functions.a.k(), false, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final <R> j<R> e5(n7.o<? super j<T>, ? extends org.reactivestreams.c<R>> oVar, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.d9(FlowableInternalHelper.d(this), FlowableInternalHelper.h(oVar, h0Var));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final io.reactivex.disposables.c e6() {
        return i6(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> e7(long j4, TimeUnit timeUnit) {
        return x1(j4, timeUnit);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<j<T>> e8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return g8(j4, timeUnit, h0Var, Long.MAX_VALUE, false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> f1(n7.o<? super T, ? extends Iterable<? extends U>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new f1(this, oVar, i4));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> f2(n7.g<? super org.reactivestreams.e> gVar) {
        return c2(gVar, io.reactivex.internal.functions.a.f71133g, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K, V> j<io.reactivex.flowables.b<K, V>> f3(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        return h3(oVar, oVar2, false, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.flowables.a<T> f5() {
        return d3.c9(this);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c f6(n7.g<? super T> gVar) {
        return i6(gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<T> f7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return y1(j4, timeUnit, h0Var);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<j<T>> f8(long j4, TimeUnit timeUnit, h0 h0Var, long j10) {
        return g8(j4, timeUnit, h0Var, j10, false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> g(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return f(this, cVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> g1(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return h1(oVar, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> g2(n7.a aVar) {
        return Z1(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.a(aVar), aVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K, V> j<io.reactivex.flowables.b<K, V>> g3(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, boolean z9) {
        return h3(oVar, oVar2, z9, Y());
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> g4(@m7.e g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.P(new d2(this, gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final io.reactivex.flowables.a<T> g5(int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return d3.Y8(this, i4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c g6(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        return i6(gVar, gVar2, io.reactivex.internal.functions.a.f71129c, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> g7() {
        return j7(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("custom")
    public final j<j<T>> g8(long j4, TimeUnit timeUnit, h0 h0Var, long j10, boolean z9) {
        return h8(j4, timeUnit, h0Var, j10, z9, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> h1(n7.o<? super T, ? extends w<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.d(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final q<T> h2(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.Q(new u0(this, j4));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K, V> j<io.reactivex.flowables.b<K, V>> h3(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new FlowableGroupBy(this, oVar, oVar2, i4, z9, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> h4(@m7.e w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.P(new e2(this, wVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final io.reactivex.flowables.a<T> h5(int i4, long j4, TimeUnit timeUnit) {
        return i5(i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c h6(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        return i6(gVar, gVar2, aVar, FlowableInternalHelper.RequestMax.INSTANCE);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> h7(h0 h0Var) {
        return j7(TimeUnit.MILLISECONDS, h0Var);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<j<T>> h8(long j4, TimeUnit timeUnit, h0 h0Var, long j10, boolean z9, int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.i(j10, "count");
        return io.reactivex.plugins.a.P(new w4(this, j4, j4, timeUnit, h0Var, j10, i4, z9));
    }

    @Override // org.reactivestreams.c
    @m7.a(BackpressureKind.SPECIAL)
    @m7.g("none")
    public final void i(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o) {
            j6((o) dVar);
            return;
        }
        io.reactivex.internal.functions.b.g(dVar, "s is null");
        j6(new StrictSubscriber(dVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> i1(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return k1(oVar, true, 2);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<T> i2(long j4, T t9) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
            return io.reactivex.plugins.a.S(new v0(this, j4, t9));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <K, V> j<io.reactivex.flowables.b<K, V>> i3(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, boolean z9, int i4, n7.o<? super n7.g<Object>, ? extends Map<K, Object>> oVar3) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(oVar3, "evictingMapFactory is null");
        return io.reactivex.plugins.a.P(new FlowableGroupBy(this, oVar, oVar2, i4, z9, oVar3));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> i4(@m7.e o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.P(new f2(this, o0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final io.reactivex.flowables.a<T> i5(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return d3.a9(this, j4, timeUnit, h0Var, i4);
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final io.reactivex.disposables.c i6(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.g<? super org.reactivestreams.e> gVar3) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.g(gVar3, "onSubscribe is null");
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(gVar, gVar2, aVar, gVar3);
        j6(lambdaSubscriber);
        return lambdaSubscriber;
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> i7(TimeUnit timeUnit) {
        return j7(timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B> j<j<T>> i8(Callable<? extends org.reactivestreams.c<B>> callable) {
        return j8(callable, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<Boolean> j(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.j(this, rVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> j1(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
        return k1(oVar, z9, 2);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<T> j2(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.S(new v0(this, j4, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <K> j<io.reactivex.flowables.b<K, T>> j3(n7.o<? super T, ? extends K> oVar, boolean z9) {
        return (j<io.reactivex.flowables.b<K, T>>) h3(oVar, io.reactivex.internal.functions.a.k(), z9, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> j4(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return R3(this, cVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final io.reactivex.flowables.a<T> j5(int i4, h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.e9(g5(i4), h0Var);
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.g("none")
    public final void j6(o<? super T> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "s is null");
        try {
            org.reactivestreams.d<? super T> h02 = io.reactivex.plugins.a.h0(this, oVar);
            io.reactivex.internal.functions.b.g(h02, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            k6(h02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> j7(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new k4(this, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <B> j<j<T>> j8(Callable<? extends org.reactivestreams.c<B>> callable, int i4) {
        io.reactivex.internal.functions.b.g(callable, "boundaryIndicatorSupplier is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new v4(this, callable, i4));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final <R> R k(@m7.e k<T, ? extends R> kVar) {
        return (R) ((k) io.reactivex.internal.functions.b.g(kVar, "converter is null")).a(this);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> k1(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.d(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <TRight, TLeftEnd, TRightEnd, R> j<R> k3(org.reactivestreams.c<? extends TRight> cVar, n7.o<? super T, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super T, ? super j<TRight>, ? extends R> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        io.reactivex.internal.functions.b.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.b.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.b.g(cVar2, "resultSelector is null");
        return io.reactivex.plugins.a.P(new n1(this, cVar, oVar, oVar2, cVar2));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final io.reactivex.flowables.a<T> k5(long j4, TimeUnit timeUnit) {
        return l5(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    protected abstract void k6(org.reactivestreams.d<? super T> dVar);

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> k7(long j4, TimeUnit timeUnit) {
        return s7(j4, timeUnit, null, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <B> j<j<T>> k8(org.reactivestreams.c<B> cVar) {
        return l8(cVar, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T l() {
        io.reactivex.internal.subscribers.d dVar = new io.reactivex.internal.subscribers.d();
        j6(dVar);
        T a10 = dVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> l1(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return m1(oVar, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> l3() {
        return io.reactivex.plugins.a.P(new o1(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> l4(h0 h0Var) {
        return n4(h0Var, false, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final io.reactivex.flowables.a<T> l5(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.Z8(this, j4, timeUnit, h0Var);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> l6(@m7.e h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return m6(h0Var, !(this instanceof io.reactivex.internal.operators.flowable.f0));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("custom")
    public final j<T> l7(long j4, TimeUnit timeUnit, h0 h0Var) {
        return s7(j4, timeUnit, null, h0Var);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <B> j<j<T>> l8(org.reactivestreams.c<B> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "boundaryIndicator is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new t4(this, cVar, i4));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T m(T t9) {
        io.reactivex.internal.subscribers.d dVar = new io.reactivex.internal.subscribers.d();
        j6(dVar);
        T a10 = dVar.a();
        return a10 != null ? a10 : t9;
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> m1(n7.o<? super T, ? extends o0<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.e(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final a m3() {
        return io.reactivex.plugins.a.O(new q1(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final j<T> m4(h0 h0Var, boolean z9) {
        return n4(h0Var, z9, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("custom")
    public final io.reactivex.flowables.a<T> m5(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return d3.e9(f5(), h0Var);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> m6(@m7.e h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new x3(this, h0Var, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> m7(long j4, TimeUnit timeUnit, h0 h0Var, org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return s7(j4, timeUnit, cVar, h0Var);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final <U, V> j<j<T>> m8(org.reactivestreams.c<U> cVar, n7.o<? super U, ? extends org.reactivestreams.c<V>> oVar) {
        return n8(cVar, oVar, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final void n(n7.g<? super T> gVar) {
        Iterator<T> it = o().iterator();
        while (it.hasNext()) {
            try {
                gVar.accept(it.next());
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                ((io.reactivex.disposables.c) it).dispose();
                throw io.reactivex.internal.util.g.f(th);
            }
        }
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> n1(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return p1(oVar, true, 2);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> n2(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.P(new y0(this, rVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> n4(h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new h2(this, h0Var, z9, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> n5() {
        return p5(Long.MAX_VALUE, io.reactivex.internal.functions.a.c());
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final <E extends org.reactivestreams.d<? super T>> E n6(E e4) {
        i(e4);
        return e4;
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("io.reactivex:computation")
    public final j<T> n7(long j4, TimeUnit timeUnit, org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return s7(j4, timeUnit, cVar, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> j<j<T>> n8(org.reactivestreams.c<U> cVar, n7.o<? super U, ? extends org.reactivestreams.c<V>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "openingIndicator is null");
        io.reactivex.internal.functions.b.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.P(new u4(this, cVar, oVar, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final Iterable<T> o() {
        return p(Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> o1(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
        return p1(oVar, z9, 2);
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final i0<T> o2(T t9) {
        return i2(0L, t9);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<U> o4(Class<U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return n2(io.reactivex.internal.functions.a.l(cls)).b0(cls);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> o5(long j4) {
        return p5(j4, io.reactivex.internal.functions.a.c());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> o6(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return io.reactivex.plugins.a.P(new y3(this, cVar));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final <V> j<T> o7(n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar) {
        return t7(null, oVar, null);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> o8(Iterable<? extends org.reactivestreams.c<?>> iterable, n7.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.b.g(iterable, "others is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.P(new y4(this, iterable, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final Iterable<T> p(int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return new io.reactivex.internal.operators.flowable.b(this, i4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> p1(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.e(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final q<T> p2() {
        return h2(0L);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> p4() {
        return t4(Y(), false, true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> p5(long j4, n7.r<? super Throwable> rVar) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.b.g(rVar, "predicate is null");
            return io.reactivex.plugins.a.P(new f3(this, j4, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> p6(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return q6(oVar, Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <V> j<T> p7(n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar, j<? extends T> jVar) {
        io.reactivex.internal.functions.b.g(jVar, "other is null");
        return t7(null, oVar, jVar);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, R> j<R> p8(org.reactivestreams.c<? extends U> cVar, n7.c<? super T, ? super U, ? extends R> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        io.reactivex.internal.functions.b.g(cVar2, "combiner is null");
        return io.reactivex.plugins.a.P(new x4(this, cVar2, cVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T q() {
        io.reactivex.internal.subscribers.e eVar = new io.reactivex.internal.subscribers.e();
        j6(eVar);
        T a10 = eVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<T> q1(@m7.e g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.a0(this, gVar));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final i0<T> q2() {
        return j2(0L);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final j<T> q4(int i4) {
        return t4(i4, false, false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> q5(n7.d<? super Integer, ? super Throwable> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "predicate is null");
        return io.reactivex.plugins.a.P(new e3(this, dVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> q6(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        return r6(oVar, i4, false);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> j<T> q7(org.reactivestreams.c<U> cVar, n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar) {
        io.reactivex.internal.functions.b.g(cVar, "firstTimeoutIndicator is null");
        return t7(cVar, oVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <T1, T2, R> j<R> q8(org.reactivestreams.c<T1> cVar, org.reactivestreams.c<T2> cVar2, n7.h<? super T, ? super T1, ? super T2, R> hVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        return t8(new org.reactivestreams.c[]{cVar, cVar2}, io.reactivex.internal.functions.a.y(hVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T r(T t9) {
        io.reactivex.internal.subscribers.e eVar = new io.reactivex.internal.subscribers.e();
        j6(eVar);
        T a10 = eVar.a();
        return a10 != null ? a10 : t9;
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> r1(@m7.e w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.b0(this, wVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> r2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return C2(oVar, false, Y(), Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final j<T> r4(int i4, n7.a aVar) {
        return u4(i4, false, false, aVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> r5(n7.r<? super Throwable> rVar) {
        return p5(Long.MAX_VALUE, rVar);
    }

    <R> j<R> r6(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return k2();
            }
            return j3.a(call, oVar);
        }
        return io.reactivex.plugins.a.P(new z3(this, oVar, i4, z9));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, V> j<T> r7(org.reactivestreams.c<U> cVar, n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar, org.reactivestreams.c<? extends T> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "firstTimeoutSelector is null");
        io.reactivex.internal.functions.b.g(cVar2, "other is null");
        return t7(cVar, oVar, cVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <T1, T2, T3, R> j<R> r8(org.reactivestreams.c<T1> cVar, org.reactivestreams.c<T2> cVar2, org.reactivestreams.c<T3> cVar3, n7.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        return t8(new org.reactivestreams.c[]{cVar, cVar2, cVar3}, io.reactivex.internal.functions.a.z(iVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final Iterable<T> s() {
        return new io.reactivex.internal.operators.flowable.c(this);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> s1(@m7.e o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.c0(this, o0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> s2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        return C2(oVar, false, i4, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("none")
    public final j<T> s4(int i4, boolean z9) {
        return t4(i4, z9, false);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> s5(n7.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "stop is null");
        return p5(Long.MAX_VALUE, io.reactivex.internal.functions.a.v(eVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final a s6(@m7.e n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.f(this, oVar, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <T1, T2, T3, T4, R> j<R> s8(org.reactivestreams.c<T1> cVar, org.reactivestreams.c<T2> cVar2, org.reactivestreams.c<T3> cVar3, org.reactivestreams.c<T4> cVar4, n7.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        io.reactivex.internal.functions.b.g(cVar, "source1 is null");
        io.reactivex.internal.functions.b.g(cVar2, "source2 is null");
        io.reactivex.internal.functions.b.g(cVar3, "source3 is null");
        io.reactivex.internal.functions.b.g(cVar4, "source4 is null");
        return t8(new org.reactivestreams.c[]{cVar, cVar2, cVar3, cVar4}, io.reactivex.internal.functions.a.A(jVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final Iterable<T> t(T t9) {
        return new io.reactivex.internal.operators.flowable.d(this, t9);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> t1(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return B0(this, cVar);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> t2(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        return x2(oVar, cVar, false, Y(), Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<Boolean> t3() {
        return d(io.reactivex.internal.functions.a.b());
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final j<T> t4(int i4, boolean z9, boolean z10) {
        io.reactivex.internal.functions.b.h(i4, "capacity");
        return io.reactivex.plugins.a.P(new i2(this, i4, z10, z9, io.reactivex.internal.functions.a.f71129c));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> t5(n7.o<? super j<Throwable>, ? extends org.reactivestreams.c<?>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "handler is null");
        return io.reactivex.plugins.a.P(new g3(this, oVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final a t6(@m7.e n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.f(this, oVar, true));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> t8(org.reactivestreams.c<?>[] cVarArr, n7.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.b.g(cVarArr, "others is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.P(new y4(this, cVarArr, oVar));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final Iterable<T> u() {
        return new io.reactivex.internal.operators.flowable.e(this);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final i0<Boolean> u1(Object obj) {
        io.reactivex.internal.functions.b.g(obj, "item is null");
        return j(io.reactivex.internal.functions.a.i(obj));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> u2(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, int i4) {
        return x2(oVar, cVar, false, i4, Y());
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <TRight, TLeftEnd, TRightEnd, R> j<R> u3(org.reactivestreams.c<? extends TRight> cVar, n7.o<? super T, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super T, ? super TRight, ? extends R> cVar2) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        io.reactivex.internal.functions.b.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.b.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.b.g(cVar2, "resultSelector is null");
        return io.reactivex.plugins.a.P(new t1(this, cVar, oVar, oVar2, cVar2));
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> u4(int i4, boolean z9, boolean z10, n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onOverflow is null");
        io.reactivex.internal.functions.b.h(i4, "capacity");
        return io.reactivex.plugins.a.P(new i2(this, i4, z10, z9, aVar));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.g("none")
    public final void u5(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "s is null");
        if (dVar instanceof io.reactivex.subscribers.d) {
            j6((io.reactivex.subscribers.d) dVar);
        } else {
            j6(new io.reactivex.subscribers.d(dVar));
        }
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> u6(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return v6(oVar, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T v() {
        return M5().i();
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final i0<Long> v1() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.flowable.e0(this));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> v2(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9) {
        return x2(oVar, cVar, z9, Y(), Y());
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> v4(long j4, n7.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        io.reactivex.internal.functions.b.g(backpressureOverflowStrategy, "overflowStrategy is null");
        io.reactivex.internal.functions.b.i(j4, "capacity");
        return io.reactivex.plugins.a.P(new j2(this, j4, aVar, backpressureOverflowStrategy));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> v5(long j4, TimeUnit timeUnit) {
        return w5(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final <R> j<R> v6(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        return r6(oVar, i4, true);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final T w(T t9) {
        return K5(t9).i();
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <U, R> j<R> w2(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9, int i4) {
        return x2(oVar, cVar, z9, i4, Y());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> w4(boolean z9) {
        return t4(Y(), z9, true);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> w5(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new i3(this, j4, timeUnit, h0Var, false));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> w6(@m7.e n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.g(this, oVar, false));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> w7() {
        return z7(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final void x() {
        io.reactivex.internal.operators.flowable.l.a(this);
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final <R> j<R> x0(p<? super T, ? extends R> pVar) {
        return Y2(((p) io.reactivex.internal.functions.b.g(pVar, "composer is null")).a(this));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> x1(long j4, TimeUnit timeUnit) {
        return y1(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U, R> j<R> x2(n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "bufferSize");
        return C2(FlowableInternalHelper.b(oVar, cVar), z9, i4, i10);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> x4() {
        return io.reactivex.plugins.a.P(new k2(this));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> x5(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new i3(this, j4, timeUnit, h0Var, z9));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> x6(@m7.e n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.g(this, oVar, true));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> x7(h0 h0Var) {
        return z7(TimeUnit.MILLISECONDS, h0Var);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.g("none")
    public final void y(n7.g<? super T> gVar) {
        io.reactivex.internal.operators.flowable.l.b(this, gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("custom")
    public final j<T> y1(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.h0(this, j4, timeUnit, h0Var));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> y2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, n7.o<? super Throwable, ? extends org.reactivestreams.c<? extends R>> oVar2, Callable<? extends org.reactivestreams.c<? extends R>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.b.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.b.g(callable, "onCompleteSupplier is null");
        return P3(new a2(this, oVar, oVar2, callable));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<T> y4(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onDrop is null");
        return io.reactivex.plugins.a.P(new k2(this, gVar));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.g("io.reactivex:computation")
    public final j<T> y5(long j4, TimeUnit timeUnit, boolean z9) {
        return x5(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> y6(@m7.e n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.h(this, oVar, false));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> y7(TimeUnit timeUnit) {
        return z7(timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.g("none")
    public final void z(n7.g<? super T> gVar, int i4) {
        io.reactivex.internal.operators.flowable.l.c(this, gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c, i4);
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> z1(n7.o<? super T, ? extends org.reactivestreams.c<U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "debounceIndicator is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.g0(this, oVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> z2(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, n7.o<Throwable, ? extends org.reactivestreams.c<? extends R>> oVar2, Callable<? extends org.reactivestreams.c<? extends R>> callable, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.b.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.b.g(callable, "onCompleteSupplier is null");
        return Q3(new a2(this, oVar, oVar2, callable), i4);
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public final j<T> z4() {
        return io.reactivex.plugins.a.P(new m2(this));
    }

    @m7.a(BackpressureKind.ERROR)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <U> j<T> z5(org.reactivestreams.c<U> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "sampler is null");
        return io.reactivex.plugins.a.P(new h3(this, cVar, false));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <R> j<R> z6(@m7.e n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.h(this, oVar, true));
    }

    @m7.a(BackpressureKind.PASS_THROUGH)
    @m7.c
    @m7.e
    @m7.g("none")
    public final j<io.reactivex.schedulers.d<T>> z7(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return (j<io.reactivex.schedulers.d<T>>) K3(io.reactivex.internal.functions.a.w(timeUnit, h0Var));
    }
}
