package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableGroupBy;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableInternalHelper;
import io.reactivex.rxjava3.internal.operators.flowable.a2;
import io.reactivex.rxjava3.internal.operators.flowable.a3;
import io.reactivex.rxjava3.internal.operators.flowable.a4;
import io.reactivex.rxjava3.internal.operators.flowable.a5;
import io.reactivex.rxjava3.internal.operators.flowable.b1;
import io.reactivex.rxjava3.internal.operators.flowable.b2;
import io.reactivex.rxjava3.internal.operators.flowable.b3;
import io.reactivex.rxjava3.internal.operators.flowable.b4;
import io.reactivex.rxjava3.internal.operators.flowable.b5;
import io.reactivex.rxjava3.internal.operators.flowable.c1;
import io.reactivex.rxjava3.internal.operators.flowable.c2;
import io.reactivex.rxjava3.internal.operators.flowable.c4;
import io.reactivex.rxjava3.internal.operators.flowable.c5;
import io.reactivex.rxjava3.internal.operators.flowable.d2;
import io.reactivex.rxjava3.internal.operators.flowable.d3;
import io.reactivex.rxjava3.internal.operators.flowable.d4;
import io.reactivex.rxjava3.internal.operators.flowable.d5;
import io.reactivex.rxjava3.internal.operators.flowable.e1;
import io.reactivex.rxjava3.internal.operators.flowable.e2;
import io.reactivex.rxjava3.internal.operators.flowable.e3;
import io.reactivex.rxjava3.internal.operators.flowable.e4;
import io.reactivex.rxjava3.internal.operators.flowable.f3;
import io.reactivex.rxjava3.internal.operators.flowable.f4;
import io.reactivex.rxjava3.internal.operators.flowable.g1;
import io.reactivex.rxjava3.internal.operators.flowable.g2;
import io.reactivex.rxjava3.internal.operators.flowable.g3;
import io.reactivex.rxjava3.internal.operators.flowable.g4;
import io.reactivex.rxjava3.internal.operators.flowable.h1;
import io.reactivex.rxjava3.internal.operators.flowable.h2;
import io.reactivex.rxjava3.internal.operators.flowable.h3;
import io.reactivex.rxjava3.internal.operators.flowable.i1;
import io.reactivex.rxjava3.internal.operators.flowable.i2;
import io.reactivex.rxjava3.internal.operators.flowable.i3;
import io.reactivex.rxjava3.internal.operators.flowable.i4;
import io.reactivex.rxjava3.internal.operators.flowable.j1;
import io.reactivex.rxjava3.internal.operators.flowable.j2;
import io.reactivex.rxjava3.internal.operators.flowable.j3;
import io.reactivex.rxjava3.internal.operators.flowable.j4;
import io.reactivex.rxjava3.internal.operators.flowable.k1;
import io.reactivex.rxjava3.internal.operators.flowable.k2;
import io.reactivex.rxjava3.internal.operators.flowable.k3;
import io.reactivex.rxjava3.internal.operators.flowable.k4;
import io.reactivex.rxjava3.internal.operators.flowable.l1;
import io.reactivex.rxjava3.internal.operators.flowable.l2;
import io.reactivex.rxjava3.internal.operators.flowable.l3;
import io.reactivex.rxjava3.internal.operators.flowable.l4;
import io.reactivex.rxjava3.internal.operators.flowable.m1;
import io.reactivex.rxjava3.internal.operators.flowable.m2;
import io.reactivex.rxjava3.internal.operators.flowable.m3;
import io.reactivex.rxjava3.internal.operators.flowable.m4;
import io.reactivex.rxjava3.internal.operators.flowable.n1;
import io.reactivex.rxjava3.internal.operators.flowable.n2;
import io.reactivex.rxjava3.internal.operators.flowable.n3;
import io.reactivex.rxjava3.internal.operators.flowable.n4;
import io.reactivex.rxjava3.internal.operators.flowable.o2;
import io.reactivex.rxjava3.internal.operators.flowable.o3;
import io.reactivex.rxjava3.internal.operators.flowable.o4;
import io.reactivex.rxjava3.internal.operators.flowable.p1;
import io.reactivex.rxjava3.internal.operators.flowable.p2;
import io.reactivex.rxjava3.internal.operators.flowable.p4;
import io.reactivex.rxjava3.internal.operators.flowable.q1;
import io.reactivex.rxjava3.internal.operators.flowable.q2;
import io.reactivex.rxjava3.internal.operators.flowable.q3;
import io.reactivex.rxjava3.internal.operators.flowable.q4;
import io.reactivex.rxjava3.internal.operators.flowable.r1;
import io.reactivex.rxjava3.internal.operators.flowable.r2;
import io.reactivex.rxjava3.internal.operators.flowable.r3;
import io.reactivex.rxjava3.internal.operators.flowable.s1;
import io.reactivex.rxjava3.internal.operators.flowable.s2;
import io.reactivex.rxjava3.internal.operators.flowable.s4;
import io.reactivex.rxjava3.internal.operators.flowable.t1;
import io.reactivex.rxjava3.internal.operators.flowable.t2;
import io.reactivex.rxjava3.internal.operators.flowable.t3;
import io.reactivex.rxjava3.internal.operators.flowable.t4;
import io.reactivex.rxjava3.internal.operators.flowable.u1;
import io.reactivex.rxjava3.internal.operators.flowable.u2;
import io.reactivex.rxjava3.internal.operators.flowable.u3;
import io.reactivex.rxjava3.internal.operators.flowable.u4;
import io.reactivex.rxjava3.internal.operators.flowable.v1;
import io.reactivex.rxjava3.internal.operators.flowable.v2;
import io.reactivex.rxjava3.internal.operators.flowable.v3;
import io.reactivex.rxjava3.internal.operators.flowable.v4;
import io.reactivex.rxjava3.internal.operators.flowable.w1;
import io.reactivex.rxjava3.internal.operators.flowable.w2;
import io.reactivex.rxjava3.internal.operators.flowable.w3;
import io.reactivex.rxjava3.internal.operators.flowable.w4;
import io.reactivex.rxjava3.internal.operators.flowable.x0;
import io.reactivex.rxjava3.internal.operators.flowable.x1;
import io.reactivex.rxjava3.internal.operators.flowable.x2;
import io.reactivex.rxjava3.internal.operators.flowable.x3;
import io.reactivex.rxjava3.internal.operators.flowable.x4;
import io.reactivex.rxjava3.internal.operators.flowable.y0;
import io.reactivex.rxjava3.internal.operators.flowable.y1;
import io.reactivex.rxjava3.internal.operators.flowable.y3;
import io.reactivex.rxjava3.internal.operators.flowable.z0;
import io.reactivex.rxjava3.internal.operators.flowable.z1;
import io.reactivex.rxjava3.internal.operators.flowable.z2;
import io.reactivex.rxjava3.internal.operators.flowable.z3;
import io.reactivex.rxjava3.internal.operators.flowable.z4;
import io.reactivex.rxjava3.internal.operators.maybe.o1;
import io.reactivex.rxjava3.internal.operators.single.a1;
import io.reactivex.rxjava3.internal.subscribers.ForEachWhileSubscriber;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscribers.StrictSubscriber;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.internal.util.HashMapSupplier;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterators;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collector;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* compiled from: Flowable.java */
/* loaded from: classes4.dex */
public abstract class m<T> implements org.reactivestreams.c<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f76132a = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    /* compiled from: Flowable.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f76133a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f76133a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f76133a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f76133a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f76133a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> A0(@p7.e org.reactivestreams.c<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m2();
        }
        if (sources.length == 1) {
            return i3(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.u(sources, true));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> A4() {
        return io.reactivex.rxjava3.plugins.a.P(k2.f77427b);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> B0(int maxConcurrency, int prefetch, @p7.e org.reactivestreams.c<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.w(new i1(sources), io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, prefetch, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public static m<Long> B3(long initialDelay, long period, @p7.e TimeUnit unit) {
        return C3(initialDelay, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> C0(@p7.e org.reactivestreams.c<? extends T>... sources) {
        return B0(V(), V(), sources);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public static m<Long> C3(long initialDelay, long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new w1(Math.max(0L, initialDelay), Math.max(0L, period), unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> D0(int maxConcurrency, int prefetch, @p7.e org.reactivestreams.c<? extends T>... sources) {
        return Y2(sources).e1(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public static m<Long> D3(long period, @p7.e TimeUnit unit) {
        return C3(period, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> E0(@p7.e org.reactivestreams.c<? extends T>... sources) {
        return D0(V(), V(), sources);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> E1(@p7.e q7.s<? extends org.reactivestreams.c<? extends T>> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.h0(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public static m<Long> E3(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return C3(period, period, unit, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> F0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return e3(sources).Y0(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public static m<Long> F3(long start, long count, long initialDelay, long period, @p7.e TimeUnit unit) {
        return G3(start, count, initialDelay, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> G0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return H0(sources, V(), true);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public static m<Long> G3(long start, long count, long initialDelay, long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (i4 == 0) {
            return m2().G1(initialDelay, unit, scheduler);
        } else {
            long j4 = start + (count - 1);
            if (start > 0 && j4 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            Objects.requireNonNull(unit, "unit is null");
            Objects.requireNonNull(scheduler, "scheduler is null");
            return io.reactivex.rxjava3.plugins.a.P(new x1(start, j4, Math.max(0L, initialDelay), Math.max(0L, period), unit, scheduler));
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> H0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int prefetch, boolean tillTheEnd) {
        return i3(sources).Z0(io.reactivex.rxjava3.internal.functions.a.k(), tillTheEnd, prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> I0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        return J0(sources, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> J0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.w(new m1(sources), io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, prefetch, ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> J3(T item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.P(new z1(item));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> K0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return L0(sources, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> K3(T item1, T item2) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        return Y2(item1, item2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> L0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.x(sources, io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, prefetch, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> L3(T item1, T item2, T item3) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        return Y2(item1, item2, item3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> M0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        return N0(sources, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> M3(T item1, T item2, T item3, T item4) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        return Y2(item1, item2, item3, item4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> N0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.w(new m1(sources), io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, prefetch, ErrorMode.END));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> N3(T item1, T item2, T item3, T item4, T item5) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        return Y2(item1, item2, item3, item4, item5);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> O0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return P0(sources, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> O3(T item1, T item2, T item3, T item4, T item5, T item6) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        return Y2(item1, item2, item3, item4, item5, item6);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> P0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.x(sources, io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, prefetch, ErrorMode.END));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> P3(T item1, T item2, T item3, T item4, T item5, T item6, T item7) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        return Y2(item1, item2, item3, item4, item5, item6, item7);
    }

    private m<T> P7(long timeout, TimeUnit unit, org.reactivestreams.c<? extends T> fallback, o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new p4(this, timeout, unit, scheduler, fallback));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> P8(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new c5(null, sources, zipper, V(), false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Q3(T item1, T item2, T item3, T item4, T item5, T item6, T item7, T item8) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        Objects.requireNonNull(item8, "item8 is null");
        return Y2(item1, item2, item3, item4, item5, item6, item7, item8);
    }

    private <U, V> m<T> Q7(org.reactivestreams.c<U> firstTimeoutIndicator, q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator, org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(itemTimeoutIndicator, "itemTimeoutIndicator is null");
        return io.reactivex.rxjava3.plugins.a.P(new o4(this, firstTimeoutIndicator, itemTimeoutIndicator, fallback));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> Q8(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper, boolean delayError, int bufferSize) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new c5(null, sources, zipper, bufferSize, delayError));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> R3(T item1, T item2, T item3, T item4, T item5, T item6, T item7, T item8, T item9) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        Objects.requireNonNull(item8, "item8 is null");
        Objects.requireNonNull(item9, "item9 is null");
        return Y2(item1, item2, item3, item4, item5, item6, item7, item8, item9);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public static m<Long> R7(long delay, @p7.e TimeUnit unit) {
        return S7(delay, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> m<R> R8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e org.reactivestreams.c<? extends T8> source8, @p7.e org.reactivestreams.c<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(source9, "source9 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.E(zipper), false, V(), source1, source2, source3, source4, source5, source6, source7, source8, source9);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> S3(T item1, T item2, T item3, T item4, T item5, T item6, T item7, T item8, T item9, T item10) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        Objects.requireNonNull(item8, "item8 is null");
        Objects.requireNonNull(item9, "item9 is null");
        Objects.requireNonNull(item10, "item10 is null");
        return Y2(item1, item2, item3, item4, item5, item6, item7, item8, item9, item10);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public static m<Long> S7(long delay, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new q4(Math.max(0L, delay), unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> m<R> S8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e org.reactivestreams.c<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.D(zipper), false, V(), source1, source2, source3, source4, source5, source6, source7, source8);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> m<R> T8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.C(zipper), false, V(), source1, source2, source3, source4, source5, source6, source7);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> m<R> U8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.B(zipper), false, V(), source1, source2, source3, source4, source5, source6);
    }

    @p7.c
    public static int V() {
        return f76132a;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> m<R> V8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.A(zipper), false, V(), source1, source2, source3, source4, source5);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> m<R> W8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.z(zipper), false, V(), source1, source2, source3, source4);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> X2(@p7.e q7.a action) {
        Objects.requireNonNull(action, "action is null");
        return io.reactivex.rxjava3.plugins.a.P(new h1(action));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> X5(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2) {
        return a6(source1, source2, io.reactivex.rxjava3.internal.functions.b.a(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> X6(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return i3(sources).M6(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> m<R> X8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.y(zipper), false, V(), source1, source2, source3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> Y2(@p7.e T... items) {
        Objects.requireNonNull(items, "items is null");
        if (items.length == 0) {
            return m2();
        }
        if (items.length == 1) {
            return J3(items[0]);
        }
        return io.reactivex.rxjava3.plugins.a.P(new i1(items));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> Y5(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, int bufferSize) {
        return a6(source1, source2, io.reactivex.rxjava3.internal.functions.b.a(), bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Y6(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int bufferSize) {
        return i3(sources).N6(io.reactivex.rxjava3.internal.functions.a.k(), bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> m<R> Y8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.x(zipper), false, V(), source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Z2(@p7.e Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return io.reactivex.rxjava3.plugins.a.P(new j1(callable));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> Z5(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e q7.d<? super T, ? super T> isEqual) {
        return a6(source1, source2, isEqual, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Z6(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return a7(sources, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> m<R> Z8(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper, boolean delayError) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.x(zipper), delayError, V(), source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> a3(@p7.e g completableSource) {
        Objects.requireNonNull(completableSource, "completableSource is null");
        return io.reactivex.rxjava3.plugins.a.P(new k1(completableSource));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> a6(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e q7.d<? super T, ? super T> isEqual, int bufferSize) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(isEqual, "isEqual is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.S(new q3(source1, source2, isEqual, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> a7(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int prefetch) {
        return i3(sources).S6(io.reactivex.rxjava3.internal.functions.a.k(), prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> m<R> a9(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper, boolean delayError, int bufferSize) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return b9(io.reactivex.rxjava3.internal.functions.a.x(zipper), delayError, bufferSize, source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> b(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.h(null, sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> b3(@p7.e CompletionStage<T> stage) {
        Objects.requireNonNull(stage, "stage is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.g(stage));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> b9(@p7.e q7.o<? super Object[], ? extends R> zipper, boolean delayError, int bufferSize, @p7.e org.reactivestreams.c<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m2();
        }
        Objects.requireNonNull(zipper, "zipper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new c5(sources, null, zipper, bufferSize, delayError));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> c(@p7.e org.reactivestreams.c<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        int length = sources.length;
        if (length == 0) {
            return m2();
        }
        if (length == 1) {
            return i3(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.h(sources, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> c0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return d0(sources, combiner, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    private m<T> c2(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.q0(this, onNext, onError, onComplete, onAfterTerminate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> c3(@p7.e Future<? extends T> future) {
        Objects.requireNonNull(future, "future is null");
        return io.reactivex.rxjava3.plugins.a.P(new l1(future, 0L, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> c4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        return e3(sources).v2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> d0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.t((Iterable) sources, (q7.o) combiner, bufferSize, false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> d3(@p7.e Future<? extends T> future, long timeout, @p7.e TimeUnit unit) {
        Objects.requireNonNull(future, "future is null");
        Objects.requireNonNull(unit, "unit is null");
        return io.reactivex.rxjava3.plugins.a.P(new l1(future, timeout, unit));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> d4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency) {
        return e3(sources).w2(io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> m<R> e0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e org.reactivestreams.c<? extends T8> source8, @p7.e org.reactivestreams.c<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(source9, "source9 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4, source5, source6, source7, source8, source9}, io.reactivex.rxjava3.internal.functions.a.E(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> e3(@p7.e Iterable<? extends T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.P(new m1(source));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> e4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return e3(sources).G2(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static m<Integer> e5(int start, int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (count == 0) {
            return m2();
        } else {
            if (count == 1) {
                return J3(Integer.valueOf(start));
            }
            if (start + (count - 1) <= 2147483647L) {
                return io.reactivex.rxjava3.plugins.a.P(new w2(start, count));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> m<R> f0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e org.reactivestreams.c<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4, source5, source6, source7, source8}, io.reactivex.rxjava3.internal.functions.a.D(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> f3(@p7.e b0<T> maybe) {
        Objects.requireNonNull(maybe, "maybe is null");
        return io.reactivex.rxjava3.plugins.a.P(new o1(maybe));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> f4(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return g4(sources, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static m<Long> f5(long start, long count) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (i4 == 0) {
            return m2();
        } else {
            if (count == 1) {
                return J3(Long.valueOf(start));
            }
            long j4 = (count - 1) + start;
            if (start > 0 && j4 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.rxjava3.plugins.a.P(new x2(start, count));
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> m<R> g0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e org.reactivestreams.c<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4, source5, source6, source7}, io.reactivex.rxjava3.internal.functions.a.C(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> g3(@p7.e l0<T> source, @p7.e BackpressureStrategy strategy) {
        Objects.requireNonNull(source, "source is null");
        Objects.requireNonNull(strategy, "strategy is null");
        n1 n1Var = new n1(source);
        int i4 = a.f76133a[strategy.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return n1Var.F4();
                    }
                    return io.reactivex.rxjava3.plugins.a.P(new p2(n1Var));
                }
                return n1Var;
            }
            return n1Var.P4();
        }
        return n1Var.N4();
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> g4(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency) {
        return i3(sources).w2(io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> m<R> h0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e org.reactivestreams.c<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4, source5, source6}, io.reactivex.rxjava3.internal.functions.a.B(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> h3(@p7.e Optional<T> optional) {
        Objects.requireNonNull(optional, "optional is null");
        return (m) optional.map(k.f76130a).orElseGet(l.f76131a);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> h4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return Y2(source1, source2).F2(io.reactivex.rxjava3.internal.functions.a.k(), false, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> m<R> i0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e org.reactivestreams.c<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4, source5}, io.reactivex.rxjava3.internal.functions.a.A(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> i3(@p7.e org.reactivestreams.c<? extends T> publisher) {
        if (publisher instanceof m) {
            return io.reactivex.rxjava3.plugins.a.P((m) publisher);
        }
        Objects.requireNonNull(publisher, "publisher is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.o1(publisher));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> i4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return Y2(source1, source2, source3).F2(io.reactivex.rxjava3.internal.functions.a.k(), false, 3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> m<R> j0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e org.reactivestreams.c<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3, source4}, io.reactivex.rxjava3.internal.functions.a.z(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> j3(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        return io.reactivex.rxjava3.plugins.a.P(new p1(run));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> j4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3, @p7.e org.reactivestreams.c<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return Y2(source1, source2, source3, source4).F2(io.reactivex.rxjava3.internal.functions.a.k(), false, 4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> m<R> k0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e org.reactivestreams.c<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2, source3}, io.reactivex.rxjava3.internal.functions.a.y(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> k3(@p7.e v0<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.P(new a1(source));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> k4(int maxConcurrency, int bufferSize, @p7.e org.reactivestreams.c<? extends T>... sources) {
        return Y2(sources).G2(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> m<R> l0(@p7.e org.reactivestreams.c<? extends T1> source1, @p7.e org.reactivestreams.c<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return n0(new org.reactivestreams.c[]{source1, source2}, io.reactivex.rxjava3.internal.functions.a.x(combiner), V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> l3(@p7.e Stream<T> stream) {
        Objects.requireNonNull(stream, "stream is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.h(stream));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> l4(@p7.e org.reactivestreams.c<? extends T>... sources) {
        return Y2(sources).w2(io.reactivex.rxjava3.internal.functions.a.k(), sources.length);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> m0(@p7.e org.reactivestreams.c<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return n0(sources, combiner, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> m2() {
        return io.reactivex.rxjava3.plugins.a.P(io.reactivex.rxjava3.internal.operators.flowable.w0.f78168b);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> m3(@p7.e q7.s<? extends T> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new q1(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> m4(int maxConcurrency, int bufferSize, @p7.e org.reactivestreams.c<? extends T>... sources) {
        return Y2(sources).G2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> n0(@p7.e org.reactivestreams.c<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m2();
        }
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.t((org.reactivestreams.c[]) sources, (q7.o) combiner, bufferSize, false));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> n2(@p7.e Throwable throwable) {
        Objects.requireNonNull(throwable, "throwable is null");
        return o2(io.reactivex.rxjava3.internal.functions.a.o(throwable));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> n3(@p7.e q7.g<i<T>> generator) {
        Objects.requireNonNull(generator, "generator is null");
        return r3(io.reactivex.rxjava3.internal.functions.a.u(), FlowableInternalHelper.i(generator), io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> n4(@p7.e org.reactivestreams.c<? extends T>... sources) {
        return Y2(sources).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, sources.length);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> o0(@p7.e org.reactivestreams.c<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return p0(sources, combiner, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T> m<T> o2(@p7.e q7.s<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new x0(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, S> m<T> o3(@p7.e q7.s<S> initialState, @p7.e q7.b<S, i<T>> generator) {
        Objects.requireNonNull(generator, "generator is null");
        return r3(initialState, FlowableInternalHelper.h(generator), io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> o4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        return e3(sources).E2(io.reactivex.rxjava3.internal.functions.a.k(), true);
    }

    @p7.c
    @p7.a(BackpressureKind.NONE)
    @p7.g("none")
    @p7.e
    public static <T> m<T> o8(@p7.e org.reactivestreams.c<T> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        if (!(onSubscribe instanceof m)) {
            return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.o1(onSubscribe));
        }
        throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> p0(@p7.e org.reactivestreams.c<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (sources.length == 0) {
            return m2();
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.t((org.reactivestreams.c[]) sources, (q7.o) combiner, bufferSize, true));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, S> m<T> p3(@p7.e q7.s<S> initialState, @p7.e q7.b<S, i<T>> generator, @p7.e q7.g<? super S> disposeState) {
        Objects.requireNonNull(generator, "generator is null");
        return r3(initialState, FlowableInternalHelper.h(generator), disposeState);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> p4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency) {
        return e3(sources).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> q0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return r0(sources, combiner, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, S> m<T> q3(@p7.e q7.s<S> initialState, @p7.e q7.c<S, i<T>, S> generator) {
        return r3(initialState, generator, io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> q4(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return e3(sources).G2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T, D> m<T> q8(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends org.reactivestreams.c<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup) {
        return r8(resourceSupplier, sourceSupplier, resourceCleanup, true);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, R> m<R> r0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.t((Iterable) sources, (q7.o) combiner, bufferSize, true));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T, S> m<T> r3(@p7.e q7.s<S> initialState, @p7.e q7.c<S, i<T>, S> generator, @p7.e q7.g<? super S> disposeState) {
        Objects.requireNonNull(initialState, "initialState is null");
        Objects.requireNonNull(generator, "generator is null");
        Objects.requireNonNull(disposeState, "disposeState is null");
        return io.reactivex.rxjava3.plugins.a.P(new r1(initialState, generator, disposeState));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> r4(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return s4(sources, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public static <T, D> m<T> r8(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends org.reactivestreams.c<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup, boolean eager) {
        Objects.requireNonNull(resourceSupplier, "resourceSupplier is null");
        Objects.requireNonNull(sourceSupplier, "sourceSupplier is null");
        Objects.requireNonNull(resourceCleanup, "resourceCleanup is null");
        return io.reactivex.rxjava3.plugins.a.P(new u4(resourceSupplier, sourceSupplier, resourceCleanup, eager));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> s4(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int maxConcurrency) {
        return i3(sources).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> t0(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return e3(sources).Z0(io.reactivex.rxjava3.internal.functions.a.k(), false, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> t4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return Y2(source1, source2).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> u0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources) {
        return v0(sources, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> u4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return Y2(source1, source2, source3).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, 3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> v0(@p7.e org.reactivestreams.c<? extends org.reactivestreams.c<? extends T>> sources, int prefetch) {
        return i3(sources).R0(io.reactivex.rxjava3.internal.functions.a.k(), prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> v4(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3, @p7.e org.reactivestreams.c<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return Y2(source1, source2, source3, source4).F2(io.reactivex.rxjava3.internal.functions.a.k(), true, 4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> w0(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return z0(source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> x0(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return z0(source1, source2, source3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> y0(@p7.e org.reactivestreams.c<? extends T> source1, @p7.e org.reactivestreams.c<? extends T> source2, @p7.e org.reactivestreams.c<? extends T> source3, @p7.e org.reactivestreams.c<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return z0(source1, source2, source3, source4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> z0(@p7.e org.reactivestreams.c<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m2();
        }
        if (sources.length == 1) {
            return i3(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.u(sources, false));
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> z1(@p7.e p<T> source, @p7.e BackpressureStrategy mode) {
        Objects.requireNonNull(source, "source is null");
        Objects.requireNonNull(mode, "mode is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.e0(source, mode));
    }

    @p7.g("none")
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    public final void A(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        io.reactivex.rxjava3.internal.operators.flowable.l.c(this, onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> A1(long timeout, @p7.e TimeUnit unit) {
        return B1(timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> A2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors, int maxConcurrency) {
        return B2(mapper, combiner, delayErrors, maxConcurrency, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a A3() {
        return io.reactivex.rxjava3.plugins.a.O(new v1(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> A5(int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.t9(this, time, unit, scheduler, bufferSize, false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> A6(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return z0(J3(item), this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> A7(long timeout, @p7.e TimeUnit unit, boolean emitLast) {
        return z7(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), emitLast);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<m<T>> A8(long timespan, @p7.e TimeUnit unit, long count, boolean restart) {
        return D8(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count, restart);
    }

    @p7.g("none")
    @p7.a(BackpressureKind.FULL)
    public final void B(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, int bufferSize) {
        io.reactivex.rxjava3.internal.operators.flowable.l.d(this, onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> B1(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.g0(this, timeout, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> B2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return G2(FlowableInternalHelper.b(mapper, combiner), delayErrors, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> B4(@p7.e o0 scheduler) {
        return D4(scheduler, false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> B5(int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.t9(this, time, unit, scheduler, bufferSize, eagerTruncate);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> B6(@p7.e Iterable<? extends T> items) {
        return z0(e3(items), this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> B7(long timeout, @p7.e TimeUnit unit) {
        return A1(timeout, unit);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> B8(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return D8(timespan, unit, scheduler, Long.MAX_VALUE, false);
    }

    @p7.g("none")
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    public final void C(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        io.reactivex.rxjava3.internal.operators.flowable.l.c(this, onNext, onError, onComplete);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <U> m<T> C1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<U>> debounceIndicator) {
        Objects.requireNonNull(debounceIndicator, "debounceIndicator is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.f0(this, debounceIndicator));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> C2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> onNextMapper, @p7.e q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends R>> onErrorMapper, @p7.e q7.s<? extends org.reactivestreams.c<? extends R>> onCompleteSupplier) {
        Objects.requireNonNull(onNextMapper, "onNextMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        Objects.requireNonNull(onCompleteSupplier, "onCompleteSupplier is null");
        return f4(new e2(this, onNextMapper, onErrorMapper, onCompleteSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> C4(@p7.e o0 scheduler, boolean delayError) {
        return D4(scheduler, delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> C5(int bufferSize, boolean eagerTruncate) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.s9(this, bufferSize, eagerTruncate);
    }

    @p7.g("none")
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.e
    public final io.reactivex.rxjava3.disposables.f C6() {
        return F6(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> C7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return B1(timeout, unit, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> C8(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count) {
        return D8(timespan, unit, scheduler, count, false);
    }

    @p7.g("none")
    @p7.a(BackpressureKind.FULL)
    public final void D(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete, int bufferSize) {
        io.reactivex.rxjava3.internal.operators.flowable.l.d(this, onNext, onError, onComplete, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> D1(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return L6(J3(defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> D2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> onNextMapper, @p7.e q7.o<Throwable, ? extends org.reactivestreams.c<? extends R>> onErrorMapper, @p7.e q7.s<? extends org.reactivestreams.c<? extends R>> onCompleteSupplier, int maxConcurrency) {
        Objects.requireNonNull(onNextMapper, "onNextMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        Objects.requireNonNull(onCompleteSupplier, "onCompleteSupplier is null");
        return g4(new e2(this, onNextMapper, onErrorMapper, onCompleteSupplier), maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> D4(@p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new l2(this, scheduler, delayError, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> D5(long time, @p7.e TimeUnit unit) {
        return E5(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f D6(@p7.e q7.g<? super T> onNext) {
        return F6(onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> D7() {
        return G7(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> D8(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count, boolean restart) {
        return E8(timespan, unit, scheduler, count, restart, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<List<T>> E(int count) {
        return F(count, count);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> E2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayErrors) {
        return G2(mapper, delayErrors, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <U> m<U> E4(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return p2(io.reactivex.rxjava3.internal.functions.a.l(clazz)).Y(clazz);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> E5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.u9(this, time, unit, scheduler, false);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f E6(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        return F6(onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> E7(@p7.e o0 scheduler) {
        return G7(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> E8(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count, boolean restart, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(unit, "unit is null");
        io.reactivex.rxjava3.internal.functions.b.c(count, "count");
        return io.reactivex.rxjava3.plugins.a.P(new z4(this, timespan, timespan, unit, scheduler, count, bufferSize, restart));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<List<T>> F(int count, int skip) {
        return (m<List<T>>) G(count, skip, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> F1(long time, @p7.e TimeUnit unit) {
        return H1(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> F2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
        return G2(mapper, delayErrors, maxConcurrency, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> F4() {
        return J4(V(), false, true);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> F5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.u9(this, time, unit, scheduler, eagerTruncate);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f F6(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(onNext, onError, onComplete, FlowableInternalHelper.RequestMax.INSTANCE);
        G6(lambdaSubscriber);
        return lambdaSubscriber;
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> F7(@p7.e TimeUnit unit) {
        return G7(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <B> m<m<T>> F8(@p7.e org.reactivestreams.c<B> boundaryIndicator) {
        return G8(boundaryIndicator, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> m<U> G(int count, int skip, @p7.e q7.s<U> bufferSupplier) {
        io.reactivex.rxjava3.internal.functions.b.b(count, "count");
        io.reactivex.rxjava3.internal.functions.b.b(skip, com.coremedia.iso.boxes.u.f10406o);
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.m(this, count, skip, bufferSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> G1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return H1(time, unit, scheduler, false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> G2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return m2();
            }
            return m3.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.P(new z0(this, mapper, delayErrors, maxConcurrency, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final m<T> G4(int capacity) {
        return J4(capacity, false, false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> G5() {
        return I5(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.g("none")
    @p7.a(BackpressureKind.SPECIAL)
    public final void G6(@p7.e r<? super T> subscriber) {
        Objects.requireNonNull(subscriber, "subscriber is null");
        try {
            org.reactivestreams.d<? super T> h02 = io.reactivex.rxjava3.plugins.a.h0(this, subscriber);
            Objects.requireNonNull(h02, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            H6(h02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> G7(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new n4(this, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <B> m<m<T>> G8(@p7.e org.reactivestreams.c<B> boundaryIndicator, int bufferSize) {
        Objects.requireNonNull(boundaryIndicator, "boundaryIndicator is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new w4(this, boundaryIndicator, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> m<U> H(int count, @p7.e q7.s<U> bufferSupplier) {
        return G(count, count, bufferSupplier);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> H1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.i0(this, Math.max(0L, time), unit, scheduler, delayError));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a H2(@p7.e q7.o<? super T, ? extends g> mapper) {
        return I2(mapper, false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<Boolean> H3() {
        return a(io.reactivex.rxjava3.internal.functions.a.b());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final m<T> H4(int capacity, @p7.e q7.a onOverflow) {
        return K4(capacity, false, false, onOverflow);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> H5(long times) {
        return I5(times, io.reactivex.rxjava3.internal.functions.a.c());
    }

    protected abstract void H6(@p7.e org.reactivestreams.d<? super T> subscriber);

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> H7(long timeout, @p7.e TimeUnit unit) {
        return P7(timeout, unit, null, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <U, V> m<m<T>> H8(@p7.e org.reactivestreams.c<U> openingIndicator, @p7.e q7.o<? super U, ? extends org.reactivestreams.c<V>> closingIndicator) {
        return I8(openingIndicator, closingIndicator, V());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<List<T>> I(long timespan, long timeskip, @p7.e TimeUnit unit) {
        return (m<List<T>>) K(timespan, timeskip, unit, io.reactivex.rxjava3.schedulers.b.a(), ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> I1(long time, @p7.e TimeUnit unit, boolean delayError) {
        return H1(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a I2(@p7.e q7.o<? super T, ? extends g> mapper, boolean delayErrors, int maxConcurrency) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.O(new b1(this, mapper, delayErrors, maxConcurrency));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <TRight, TLeftEnd, TRightEnd, R> m<R> I3(@p7.e org.reactivestreams.c<? extends TRight> other, @p7.e q7.o<? super T, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, @p7.e q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, @p7.e q7.c<? super T, ? super TRight, ? extends R> resultSelector) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(leftEnd, "leftEnd is null");
        Objects.requireNonNull(rightEnd, "rightEnd is null");
        Objects.requireNonNull(resultSelector, "resultSelector is null");
        return io.reactivex.rxjava3.plugins.a.P(new y1(this, other, leftEnd, rightEnd, resultSelector));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final m<T> I4(int capacity, boolean delayError) {
        return J4(capacity, delayError, false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> I5(long times, @p7.e q7.r<? super Throwable> predicate) {
        if (times >= 0) {
            Objects.requireNonNull(predicate, "predicate is null");
            return io.reactivex.rxjava3.plugins.a.P(new i3(this, times, predicate));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + times);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("custom")
    @p7.e
    public final m<T> I6(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return J6(scheduler, !(this instanceof io.reactivex.rxjava3.internal.operators.flowable.e0));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("custom")
    @p7.e
    public final m<T> I7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return P7(timeout, unit, null, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <U, V> m<m<T>> I8(@p7.e org.reactivestreams.c<U> openingIndicator, @p7.e q7.o<? super U, ? extends org.reactivestreams.c<V>> closingIndicator, int bufferSize) {
        Objects.requireNonNull(openingIndicator, "openingIndicator is null");
        Objects.requireNonNull(closingIndicator, "closingIndicator is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new x4(this, openingIndicator, closingIndicator, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<List<T>> J(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return (m<List<T>>) K(timespan, timeskip, unit, scheduler, ArrayListSupplier.asSupplier());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, V> m<T> J1(@p7.e org.reactivestreams.c<U> subscriptionIndicator, @p7.e q7.o<? super T, ? extends org.reactivestreams.c<V>> itemDelayIndicator) {
        return N1(subscriptionIndicator).K1(itemDelayIndicator);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> J2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        return K2(mapper, V());
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final m<T> J4(int capacity, boolean delayError, boolean unbounded) {
        io.reactivex.rxjava3.internal.functions.b.b(capacity, "capacity");
        return io.reactivex.rxjava3.plugins.a.P(new m2(this, capacity, unbounded, delayError, io.reactivex.rxjava3.internal.functions.a.f76182c));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> J5(@p7.e q7.d<? super Integer, ? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new h3(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("custom")
    @p7.e
    public final m<T> J6(@p7.e o0 scheduler, boolean requestOn) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new a4(this, scheduler, requestOn));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> J7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return P7(timeout, unit, fallback, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <R> m<R> J8(@p7.e Iterable<? extends org.reactivestreams.c<?>> others, @p7.e q7.o<? super Object[], R> combiner) {
        Objects.requireNonNull(others, "others is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.P(new b5(this, others, combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final <U extends Collection<? super T>> m<U> K(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.p(this, timespan, timeskip, unit, scheduler, bufferSupplier, Integer.MAX_VALUE, false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<T> K1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<U>> itemDelayIndicator) {
        Objects.requireNonNull(itemDelayIndicator, "itemDelayIndicator is null");
        return (m<T>) v2(FlowableInternalHelper.c(itemDelayIndicator));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> K2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new g1(this, mapper, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final m<T> K4(int capacity, boolean delayError, boolean unbounded, @p7.e q7.a onOverflow) {
        Objects.requireNonNull(onOverflow, "onOverflow is null");
        io.reactivex.rxjava3.internal.functions.b.b(capacity, "capacity");
        return io.reactivex.rxjava3.plugins.a.P(new m2(this, capacity, unbounded, delayError, onOverflow));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> K5(@p7.e q7.r<? super Throwable> predicate) {
        return I5(Long.MAX_VALUE, predicate);
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <E extends org.reactivestreams.d<? super T>> E K6(E subscriber) {
        i(subscriber);
        return subscriber;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> K7(long timeout, @p7.e TimeUnit unit, @p7.e org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return P7(timeout, unit, fallback, io.reactivex.rxjava3.schedulers.b.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <T1, T2, T3, T4, R> m<R> K8(@p7.e org.reactivestreams.c<T1> source1, @p7.e org.reactivestreams.c<T2> source2, @p7.e org.reactivestreams.c<T3> source3, @p7.e org.reactivestreams.c<T4> source4, @p7.e q7.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return O8(new org.reactivestreams.c[]{source1, source2, source3, source4}, io.reactivex.rxjava3.internal.functions.a.A(combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<List<T>> L(long timespan, @p7.e TimeUnit unit) {
        return O(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> L1(long time, @p7.e TimeUnit unit) {
        return M1(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, V> m<V> L2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends V> combiner) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return (m<V>) B2(FlowableInternalHelper.a(mapper), combiner, false, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final m<T> L4(long capacity, @p7.f q7.a onOverflow, @p7.e BackpressureOverflowStrategy overflowStrategy) {
        Objects.requireNonNull(overflowStrategy, "overflowStrategy is null");
        io.reactivex.rxjava3.internal.functions.b.c(capacity, "capacity");
        return io.reactivex.rxjava3.plugins.a.P(new n2(this, capacity, onOverflow, overflowStrategy));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> L5(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return I5(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.v(stop));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> L6(@p7.e org.reactivestreams.c<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new b4(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <U, V> m<T> L7(@p7.e org.reactivestreams.c<U> firstTimeoutIndicator, @p7.e q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator) {
        Objects.requireNonNull(firstTimeoutIndicator, "firstTimeoutIndicator is null");
        return Q7(firstTimeoutIndicator, itemTimeoutIndicator, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <T1, T2, T3, R> m<R> L8(@p7.e org.reactivestreams.c<T1> source1, @p7.e org.reactivestreams.c<T2> source2, @p7.e org.reactivestreams.c<T3> source3, @p7.e q7.i<? super T, ? super T1, ? super T2, ? super T3, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return O8(new org.reactivestreams.c[]{source1, source2, source3}, io.reactivex.rxjava3.internal.functions.a.z(combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<List<T>> M(long timespan, @p7.e TimeUnit unit, int count) {
        return O(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> M1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return N1(S7(time, unit, scheduler));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, V> m<V> M2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends V> combiner, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return (m<V>) B2(FlowableInternalHelper.a(mapper), combiner, false, V(), prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> M4(boolean delayError) {
        return J4(V(), delayError, true);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> M5(@p7.e q7.o<? super m<Throwable>, ? extends org.reactivestreams.c<?>> handler) {
        Objects.requireNonNull(handler, "handler is null");
        return io.reactivex.rxjava3.plugins.a.P(new j3(this, handler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> M6(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return N6(mapper, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, V> m<T> M7(@p7.e org.reactivestreams.c<U> firstTimeoutIndicator, @p7.e q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator, @p7.e org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(firstTimeoutIndicator, "firstTimeoutIndicator is null");
        Objects.requireNonNull(fallback, "fallback is null");
        return Q7(firstTimeoutIndicator, itemTimeoutIndicator, fallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <T1, T2, R> m<R> M8(@p7.e org.reactivestreams.c<T1> source1, @p7.e org.reactivestreams.c<T2> source2, @p7.e q7.h<? super T, ? super T1, ? super T2, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return O8(new org.reactivestreams.c[]{source1, source2}, io.reactivex.rxjava3.internal.functions.a.y(combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<List<T>> N(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return (m<List<T>>) P(timespan, unit, scheduler, Integer.MAX_VALUE, ArrayListSupplier.asSupplier(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<T> N1(@p7.e org.reactivestreams.c<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.j0(this, subscriptionIndicator));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> N2(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return O2(mapper, false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> N4() {
        return io.reactivex.rxjava3.plugins.a.P(new o2(this));
    }

    @p7.g("none")
    @p7.a(BackpressureKind.PASS_THROUGH)
    public final void N5(@p7.e org.reactivestreams.d<? super T> subscriber) {
        Objects.requireNonNull(subscriber, "subscriber is null");
        if (subscriber instanceof io.reactivex.rxjava3.subscribers.d) {
            G6((io.reactivex.rxjava3.subscribers.d) subscriber);
        } else {
            G6(new io.reactivex.rxjava3.subscribers.d(subscriber));
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> N6(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int bufferSize) {
        return O6(mapper, bufferSize, false);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <V> m<T> N7(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator) {
        return Q7(null, itemTimeoutIndicator, null);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> N8(@p7.e org.reactivestreams.c<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.P(new a5(this, combiner, other));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<List<T>> O(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, int count) {
        return (m<List<T>>) P(timespan, unit, scheduler, count, ArrayListSupplier.asSupplier(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <R> m<R> O1(@p7.e q7.o<? super T, d0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.k0(this, selector));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> O2(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.P(new c1(this, mapper, delayErrors, maxConcurrency));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> O4(@p7.e q7.g<? super T> onDrop) {
        Objects.requireNonNull(onDrop, "onDrop is null");
        return io.reactivex.rxjava3.plugins.a.P(new o2(this, onDrop));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> O5(long period, @p7.e TimeUnit unit) {
        return P5(period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    <R> m<R> O6(q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int bufferSize, boolean delayError) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return m2();
            }
            return m3.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.P(new c4(this, mapper, bufferSize, delayError));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <V> m<T> O7(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator, @p7.e org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return Q7(null, itemTimeoutIndicator, fallback);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <R> m<R> O8(@p7.e org.reactivestreams.c<?>[] others, @p7.e q7.o<? super Object[], R> combiner) {
        Objects.requireNonNull(others, "others is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.P(new b5(this, others, combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final <U extends Collection<? super T>> m<U> P(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, int count, @p7.e q7.s<U> bufferSupplier, boolean restartTimerOnMaxSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        io.reactivex.rxjava3.internal.functions.b.b(count, "count");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.p(this, timespan, timespan, unit, scheduler, bufferSupplier, count, restartTimerOnMaxSize));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> P1() {
        return R1(io.reactivex.rxjava3.internal.functions.a.k(), io.reactivex.rxjava3.internal.functions.a.g());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> P2(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return Q2(mapper, false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> P4() {
        return io.reactivex.rxjava3.plugins.a.P(new q2(this));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> P5(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new l3(this, period, unit, scheduler, false));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a P6(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.h(this, mapper, false));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <B> m<List<T>> Q(@p7.e org.reactivestreams.c<B> boundaryIndicator) {
        return (m<List<T>>) U(boundaryIndicator, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Q0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return R0(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <K> m<T> Q1(@p7.e q7.o<? super T, K> keySelector) {
        return R1(keySelector, io.reactivex.rxjava3.internal.functions.a.g());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Q2(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.P(new e1(this, mapper, delayErrors, maxConcurrency));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> Q4() {
        return R4(io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> Q5(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean emitLast) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new l3(this, period, unit, scheduler, emitLast));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a Q6(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.h(this, mapper, true));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <B> m<List<T>> R(@p7.e org.reactivestreams.c<B> boundaryIndicator, int initialCapacity) {
        io.reactivex.rxjava3.internal.functions.b.b(initialCapacity, "initialCapacity");
        return (m<List<T>>) U(boundaryIndicator, io.reactivex.rxjava3.internal.functions.a.f(initialCapacity));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> R0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return m2();
            }
            return m3.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.v(this, mapper, prefetch, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <K> m<T> R1(@p7.e q7.o<? super T, K> keySelector, @p7.e q7.s<? extends Collection<? super K>> collectionSupplier) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(collectionSupplier, "collectionSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.m0(this, keySelector, collectionSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> R2(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        return S2(mapper, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> R4(@p7.e q7.r<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new r2(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> R5(long period, @p7.e TimeUnit unit, boolean emitLast) {
        return Q5(period, unit, io.reactivex.rxjava3.schedulers.b.a(), emitLast);
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> R6(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return S6(mapper, V());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <TOpening, TClosing> m<List<T>> S(@p7.e org.reactivestreams.c<? extends TOpening> openingIndicator, @p7.e q7.o<? super TOpening, ? extends org.reactivestreams.c<? extends TClosing>> closingIndicator) {
        return (m<List<T>>) T(openingIndicator, closingIndicator, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> S0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, @p7.e o0 scheduler) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.y(this, mapper, prefetch, ErrorMode.IMMEDIATE, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> S1() {
        return U1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> S2(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.f(this, mapper, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> S4(@p7.e q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> fallbackSupplier) {
        Objects.requireNonNull(fallbackSupplier, "fallbackSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new s2(this, fallbackSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <U> m<T> S5(@p7.e org.reactivestreams.c<U> sampler) {
        Objects.requireNonNull(sampler, "sampler is null");
        return io.reactivex.rxjava3.plugins.a.P(new k3(this, sampler, false));
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> S6(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int bufferSize) {
        return O6(mapper, bufferSize, true);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <TOpening, TClosing, U extends Collection<? super T>> m<U> T(@p7.e org.reactivestreams.c<? extends TOpening> openingIndicator, @p7.e q7.o<? super TOpening, ? extends org.reactivestreams.c<? extends TClosing>> closingIndicator, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(openingIndicator, "openingIndicator is null");
        Objects.requireNonNull(closingIndicator, "closingIndicator is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.n(this, openingIndicator, closingIndicator, bufferSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a T0(@p7.e q7.o<? super T, ? extends g> mapper) {
        return U0(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> T1(@p7.e q7.d<? super T, ? super T> comparer) {
        Objects.requireNonNull(comparer, "comparer is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.n0(this, io.reactivex.rxjava3.internal.functions.a.k(), comparer));
    }

    @p7.c
    @p7.a(BackpressureKind.NONE)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f T2(@p7.e q7.g<? super T> onNext) {
        return D6(onNext);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<T> T3(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new b2(this, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> T4(@p7.e org.reactivestreams.c<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return S4(io.reactivex.rxjava3.internal.functions.a.n(fallback));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <U> m<T> T5(@p7.e org.reactivestreams.c<U> sampler, boolean emitLast) {
        Objects.requireNonNull(sampler, "sampler is null");
        return io.reactivex.rxjava3.plugins.a.P(new k3(this, sampler, emitLast));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> T6(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.j(this, mapper, false));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> T7() {
        return W7(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <B, U extends Collection<? super T>> m<U> U(@p7.e org.reactivestreams.c<B> boundaryIndicator, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(boundaryIndicator, "boundaryIndicator is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.o(this, boundaryIndicator, bufferSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a U0(@p7.e q7.o<? super T, ? extends g> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.c(this, mapper, ErrorMode.IMMEDIATE, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <K> m<T> U1(@p7.e q7.o<? super T, K> keySelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.n0(this, keySelector, io.reactivex.rxjava3.internal.functions.b.a()));
    }

    @p7.c
    @p7.a(BackpressureKind.NONE)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f U2(@p7.e q7.r<? super T> onNext) {
        return W2(onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final v<T> U3() {
        return io.reactivex.rxjava3.plugins.a.Q(new a2(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> U4(@p7.e q7.o<? super Throwable, ? extends T> itemSupplier) {
        Objects.requireNonNull(itemSupplier, "itemSupplier is null");
        return io.reactivex.rxjava3.plugins.a.P(new t2(this, itemSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> U5(R initialValue, @p7.e q7.c<R, ? super T, R> accumulator) {
        Objects.requireNonNull(initialValue, "initialValue is null");
        return W5(io.reactivex.rxjava3.internal.functions.a.o(initialValue), accumulator);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> U6(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.j(this, mapper, true));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> U7(@p7.e o0 scheduler) {
        return W7(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a V0(@p7.e q7.o<? super T, ? extends g> mapper) {
        return X0(mapper, true, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> V1(@p7.e q7.g<? super T> onAfterNext) {
        Objects.requireNonNull(onAfterNext, "onAfterNext is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.o0(this, onAfterNext));
    }

    @p7.c
    @p7.a(BackpressureKind.NONE)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f V2(@p7.e q7.r<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        return W2(onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<T> V3() {
        return io.reactivex.rxjava3.plugins.a.S(new b2(this, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> V4(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return U4(io.reactivex.rxjava3.internal.functions.a.n(item));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> V5(@p7.e q7.c<T, T, T> accumulator) {
        Objects.requireNonNull(accumulator, "accumulator is null");
        return io.reactivex.rxjava3.plugins.a.P(new n3(this, accumulator));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> V6(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.l(this, mapper, false));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> V7(@p7.e TimeUnit unit) {
        return W7(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> W() {
        return X(16);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a W0(@p7.e q7.o<? super T, ? extends g> mapper, boolean tillTheEnd) {
        return X0(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> W1(@p7.e q7.a onAfterTerminate) {
        return c2(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76182c, onAfterTerminate);
    }

    @p7.c
    @p7.a(BackpressureKind.NONE)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f W2(@p7.e q7.r<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        ForEachWhileSubscriber forEachWhileSubscriber = new ForEachWhileSubscriber(onNext, onError, onComplete);
        G6(forEachWhileSubscriber);
        return forEachWhileSubscriber;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> W3() {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.i(false, null));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> W4() {
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.l0(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> W5(@p7.e q7.s<R> seedSupplier, @p7.e q7.c<R, ? super T, R> accumulator) {
        Objects.requireNonNull(seedSupplier, "seedSupplier is null");
        Objects.requireNonNull(accumulator, "accumulator is null");
        return io.reactivex.rxjava3.plugins.a.P(new o3(this, seedSupplier, accumulator));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> m<R> W6(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.l(this, mapper, true));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<io.reactivex.rxjava3.schedulers.d<T>> W7(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return (m<io.reactivex.rxjava3.schedulers.d<T>>) Z3(io.reactivex.rxjava3.internal.functions.a.w(unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> X(int initialCapacity) {
        io.reactivex.rxjava3.internal.functions.b.b(initialCapacity, "initialCapacity");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.q(this, initialCapacity));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a X0(@p7.e q7.o<? super T, ? extends g> mapper, boolean tillTheEnd, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.c(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> X1(@p7.e q7.a onFinally) {
        Objects.requireNonNull(onFinally, "onFinally is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.p0(this, onFinally));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> X3(@p7.f T defaultItem) {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.i(true, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.parallel.a<T> X4() {
        return io.reactivex.rxjava3.parallel.a.C(this);
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    public final <R> R X7(@p7.e n<T, ? extends R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <U> m<U> Y(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return (m<U>) Z3(io.reactivex.rxjava3.internal.functions.a.e(clazz));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Y0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return Z0(mapper, true, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> Y1(@p7.e q7.a onCancel) {
        return e2(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, onCancel);
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Y3(@p7.e q<? extends R, ? super T> lifter) {
        Objects.requireNonNull(lifter, "lifter is null");
        return io.reactivex.rxjava3.plugins.a.P(new c2(this, lifter));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.parallel.a<T> Y4(int parallelism) {
        return io.reactivex.rxjava3.parallel.a.D(this, parallelism);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final Future<T> Y7() {
        return (Future) K6(new io.reactivex.rxjava3.internal.subscribers.f());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R, A> p0<R> Z(@p7.e Collector<T, A, R> collector) {
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.jdk8.d(this, collector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Z0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean tillTheEnd, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return m2();
            }
            return m3.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.v(this, mapper, prefetch, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> Z1(@p7.e q7.a onComplete) {
        return c2(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.h(), onComplete, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <R> m<R> Z3(@p7.e q7.o<? super T, ? extends R> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new d2(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.parallel.a<T> Z4(int parallelism, int prefetch) {
        return io.reactivex.rxjava3.parallel.a.E(this, parallelism, prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> Z7() {
        return io.reactivex.rxjava3.plugins.a.S(new s4(this));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<Boolean> a(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.g(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> p0<U> a0(@p7.e q7.s<? extends U> initialItemSupplier, @p7.e q7.b<? super U, ? super T> collector) {
        Objects.requireNonNull(initialItemSupplier, "initialItemSupplier is null");
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.s(this, initialItemSupplier, collector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> a1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean tillTheEnd, int prefetch, @p7.e o0 scheduler) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.y(this, mapper, prefetch, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> a2(@p7.e org.reactivestreams.d<? super T> subscriber) {
        Objects.requireNonNull(subscriber, "subscriber is null");
        return c2(FlowableInternalHelper.l(subscriber), FlowableInternalHelper.k(subscriber), FlowableInternalHelper.j(subscriber), io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> a4(@p7.e q7.o<? super T, Optional<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.j(this, mapper));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> a5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector) {
        return b5(selector, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> a8(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return io.reactivex.rxjava3.plugins.a.S(new s4(this, io.reactivex.rxjava3.internal.functions.a.f(capacityHint)));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> p0<U> b0(U initialItem, @p7.e q7.b<? super U, ? super T> collector) {
        Objects.requireNonNull(initialItem, "initialItem is null");
        return a0(io.reactivex.rxjava3.internal.functions.a.o(initialItem), collector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> b1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return c1(mapper, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> b2(@p7.e q7.g<? super d0<T>> onNotification) {
        Objects.requireNonNull(onNotification, "onNotification is null");
        return c2(io.reactivex.rxjava3.internal.functions.a.t(onNotification), io.reactivex.rxjava3.internal.functions.a.s(onNotification), io.reactivex.rxjava3.internal.functions.a.r(onNotification), io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<d0<T>> b4() {
        return io.reactivex.rxjava3.plugins.a.P(new g2(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> b5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<? extends R>> selector, int prefetch) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new v2(this, selector, prefetch, false));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> b6() {
        return io.reactivex.rxjava3.plugins.a.P(new r3(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> b7(long count) {
        if (count >= 0) {
            return io.reactivex.rxjava3.plugins.a.P(new d4(this, count));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> p0<U> b8(@p7.e q7.s<U> collectionSupplier) {
        Objects.requireNonNull(collectionSupplier, "collectionSupplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new s4(this, collectionSupplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> c1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.w(this, mapper, maxConcurrency, prefetch, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> c5() {
        return d5(V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> c6() {
        return c5().l9();
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> c7(long time, @p7.e TimeUnit unit) {
        return n7(R7(time, unit));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K> p0<Map<K, T>> c8(@p7.e q7.o<? super T, ? extends K> keySelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        return (p0<Map<K, T>>) a0(HashMapSupplier.asSupplier(), io.reactivex.rxjava3.internal.functions.a.F(keySelector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> c9(@p7.e Iterable<U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return io.reactivex.rxjava3.plugins.a.P(new d5(this, other, zipper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> d(@p7.e org.reactivestreams.c<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return c(this, other);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> d1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean tillTheEnd) {
        return e1(mapper, tillTheEnd, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> d2(@p7.e q7.g<? super Throwable> onError) {
        q7.g<? super T> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return c2(h4, onError, aVar, aVar);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> d5(int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.T(new u2(this, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<T> d6(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new u3(this, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("custom")
    @p7.e
    public final m<T> d7(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return n7(S7(time, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, V>> d8(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        return (p0<Map<K, V>>) a0(HashMapSupplier.asSupplier(), io.reactivex.rxjava3.internal.functions.a.G(keySelector, valueSelector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> d9(@p7.e org.reactivestreams.c<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        Objects.requireNonNull(other, "other is null");
        return Y8(this, other, zipper);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<Boolean> e(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.j(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> e1(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean tillTheEnd, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.w(this, mapper, maxConcurrency, prefetch, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> e2(@p7.e q7.g<? super org.reactivestreams.e> onSubscribe, @p7.e q7.q onRequest, @p7.e q7.a onCancel) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        Objects.requireNonNull(onRequest, "onRequest is null");
        Objects.requireNonNull(onCancel, "onCancel is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.r0(this, onSubscribe, onRequest, onCancel));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final v<T> e6() {
        return io.reactivex.rxjava3.plugins.a.Q(new t3(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> e7(int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (count == 0) {
            return io.reactivex.rxjava3.plugins.a.P(new u1(this));
        } else {
            if (count == 1) {
                return io.reactivex.rxjava3.plugins.a.P(new f4(this));
            }
            return io.reactivex.rxjava3.plugins.a.P(new e4(this, count));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, V>> e8(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<? extends Map<K, V>> mapSupplier) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        return (p0<Map<K, V>>) a0(mapSupplier, io.reactivex.rxjava3.internal.functions.a.G(keySelector, valueSelector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> e9(@p7.e org.reactivestreams.c<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper, boolean delayError) {
        return Z8(this, other, zipper, delayError);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T f() {
        io.reactivex.rxjava3.internal.subscribers.d dVar = new io.reactivex.rxjava3.internal.subscribers.d();
        G6(dVar);
        T a10 = dVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> f1(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        return g1(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> f2(@p7.e q7.g<? super T> onNext) {
        q7.g<? super Throwable> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return c2(onNext, h4, aVar, aVar);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<T> f6() {
        return io.reactivex.rxjava3.plugins.a.S(new u3(this, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> f7(long count, long time, @p7.e TimeUnit unit) {
        return h7(count, time, unit, io.reactivex.rxjava3.schedulers.b.a(), false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K> p0<Map<K, Collection<T>>> f8(@p7.e q7.o<? super T, ? extends K> keySelector) {
        return (p0<Map<K, Collection<T>>>) i8(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), HashMapSupplier.asSupplier(), ArrayListSupplier.asFunction());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> f9(@p7.e org.reactivestreams.c<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper, boolean delayError, int bufferSize) {
        return a9(this, other, zipper, delayError, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T g(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        io.reactivex.rxjava3.internal.subscribers.d dVar = new io.reactivex.rxjava3.internal.subscribers.d();
        G6(dVar);
        T a10 = dVar.a();
        return a10 != null ? a10 : defaultItem;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> g1(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new g1(this, mapper, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> g2(@p7.e q7.q onRequest) {
        return e2(io.reactivex.rxjava3.internal.functions.a.h(), onRequest, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> g5(int n9) {
        return D4(io.reactivex.rxjava3.internal.schedulers.e.f81096b, true, n9);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> g6() {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.k(false, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> g7(long count, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return h7(count, time, unit, scheduler, false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> g8(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector) {
        return i8(keySelector, valueSelector, HashMapSupplier.asSupplier(), ArrayListSupplier.asFunction());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> h1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return i1(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> h2(@p7.e q7.g<? super org.reactivestreams.e> onSubscribe) {
        return e2(onSubscribe, io.reactivex.rxjava3.internal.functions.a.f76186g, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final v<T> h5(@p7.e q7.c<T, T, T> reducer) {
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.Q(new z2(this, reducer));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> h6(@p7.f T defaultItem) {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.k(true, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> h7(long count, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (count >= 0) {
            return io.reactivex.rxjava3.plugins.a.P(new g4(this, count, time, unit, scheduler, bufferSize, delayError));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> h8(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<Map<K, Collection<V>>> mapSupplier) {
        return i8(keySelector, valueSelector, mapSupplier, ArrayListSupplier.asFunction());
    }

    @Override // org.reactivestreams.c
    @p7.g("none")
    @p7.a(BackpressureKind.SPECIAL)
    public final void i(@p7.e org.reactivestreams.d<? super T> subscriber) {
        if (subscriber instanceof r) {
            G6((r) subscriber);
            return;
        }
        Objects.requireNonNull(subscriber, "subscriber is null");
        G6(new StrictSubscriber(subscriber));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> i1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.d(this, mapper, ErrorMode.IMMEDIATE, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> i2(@p7.e q7.a onTerminate) {
        return c2(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.a(onTerminate), onTerminate, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> p0<R> i5(R seed, @p7.e q7.c<R, ? super T, R> reducer) {
        Objects.requireNonNull(seed, "seed is null");
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.S(new a3(this, seed, reducer));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> i6(long count) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return io.reactivex.rxjava3.plugins.a.P(this);
            }
            return io.reactivex.rxjava3.plugins.a.P(new v3(this, count));
        }
        throw new IllegalArgumentException("count >= 0 expected but it was " + count);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> i7(long time, @p7.e TimeUnit unit) {
        return l7(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false, V());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> i8(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<? extends Map<K, Collection<V>>> mapSupplier, @p7.e q7.o<? super K, ? extends Collection<? super V>> collectionFactory) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        Objects.requireNonNull(mapSupplier, "mapSupplier is null");
        Objects.requireNonNull(collectionFactory, "collectionFactory is null");
        return (p0<Map<K, Collection<V>>>) a0(mapSupplier, io.reactivex.rxjava3.internal.functions.a.H(keySelector, valueSelector, collectionFactory));
    }

    @p7.g("none")
    @p7.a(BackpressureKind.FULL)
    public final void j(@p7.e q7.g<? super T> onNext) {
        k(onNext, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> j1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return l1(mapper, true, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final v<T> j2(long index) {
        if (index >= 0) {
            return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.flowable.t0(this, index));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <R> p0<R> j5(@p7.e q7.s<R> seedSupplier, @p7.e q7.c<R, ? super T, R> reducer) {
        Objects.requireNonNull(seedSupplier, "seedSupplier is null");
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.S(new b3(this, seedSupplier, reducer));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> j6(long time, @p7.e TimeUnit unit) {
        return r6(R7(time, unit));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> j7(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return l7(time, unit, scheduler, false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final g0<T> j8() {
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.i1(this));
    }

    @p7.g("none")
    @p7.a(BackpressureKind.FULL)
    public final void k(@p7.e q7.g<? super T> onNext, int bufferSize) {
        Objects.requireNonNull(onNext, "onNext is null");
        Iterator<T> it = m(bufferSize).iterator();
        while (it.hasNext()) {
            try {
                onNext.accept(it.next());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                ((io.reactivex.rxjava3.disposables.f) it).dispose();
                throw io.reactivex.rxjava3.internal.util.g.i(th);
            }
        }
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> k1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean tillTheEnd) {
        return l1(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final p0<T> k2(long index, @p7.e T defaultItem) {
        if (index >= 0) {
            Objects.requireNonNull(defaultItem, "defaultItem is null");
            return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.v0(this, index, defaultItem));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> k5() {
        return l5(Long.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> k6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return r6(S7(time, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> k7(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        return l7(time, unit, scheduler, delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> k8() {
        return m8(io.reactivex.rxjava3.internal.functions.a.q());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final Iterable<T> l() {
        return m(V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> l1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean tillTheEnd, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.d(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final p0<T> l2(long index) {
        if (index >= 0) {
            return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.v0(this, index, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> l5(long times) {
        int i4 = (times > 0L ? 1 : (times == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return m2();
            }
            return io.reactivex.rxjava3.plugins.a.P(new d3(this, times));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + times);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> l6(int count) {
        if (count >= 0) {
            if (count == 0) {
                return io.reactivex.rxjava3.plugins.a.P(this);
            }
            return io.reactivex.rxjava3.plugins.a.P(new w3(this, count));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final m<T> l7(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        return h7(Long.MAX_VALUE, time, unit, scheduler, delayError, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> l8(int capacityHint) {
        return n8(io.reactivex.rxjava3.internal.functions.a.q(), capacityHint);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final Iterable<T> m(int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return new io.reactivex.rxjava3.internal.operators.flowable.b(this, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> m1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return n1(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> m5(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return io.reactivex.rxjava3.plugins.a.P(new e3(this, stop));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> m6(long time, @p7.e TimeUnit unit) {
        return p6(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> m7(long time, @p7.e TimeUnit unit, boolean delayError) {
        return l7(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> m8(@p7.e Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        return (p0<List<T>>) Z7().P0(io.reactivex.rxjava3.internal.functions.a.p(comparator));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T n() {
        io.reactivex.rxjava3.internal.subscribers.e eVar = new io.reactivex.rxjava3.internal.subscribers.e();
        G6(eVar);
        T a10 = eVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> n1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.f(this, mapper, ErrorMode.IMMEDIATE, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> n5(@p7.e q7.o<? super m<Object>, ? extends org.reactivestreams.c<?>> handler) {
        Objects.requireNonNull(handler, "handler is null");
        return io.reactivex.rxjava3.plugins.a.P(new f3(this, handler));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("custom")
    @p7.e
    public final m<T> n6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return p6(time, unit, scheduler, false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <U> m<T> n7(@p7.e org.reactivestreams.c<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new i4(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<List<T>> n8(@p7.e Comparator<? super T> comparator, int capacityHint) {
        Objects.requireNonNull(comparator, "comparator is null");
        return (p0<List<T>>) a8(capacityHint).P0(io.reactivex.rxjava3.internal.functions.a.p(comparator));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T o(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        io.reactivex.rxjava3.internal.subscribers.e eVar = new io.reactivex.rxjava3.internal.subscribers.e();
        G6(eVar);
        T a10 = eVar.a();
        return a10 != null ? a10 : defaultItem;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> o1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return q1(mapper, true, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> o5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return g3.x9(FlowableInternalHelper.d(this), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("custom")
    @p7.e
    public final m<T> o6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        return p6(time, unit, scheduler, delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> o7(@p7.e q7.r<? super T> stopPredicate) {
        Objects.requireNonNull(stopPredicate, "stopPredicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new j4(this, stopPredicate));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final Iterable<T> p() {
        return new io.reactivex.rxjava3.internal.operators.flowable.c(this);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> p1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean tillTheEnd) {
        return q1(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> p2(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new y0(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> p5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, int bufferSize) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.x9(FlowableInternalHelper.f(this, bufferSize, false), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("custom")
    @p7.e
    public final m<T> p6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new x3(this, time, unit, scheduler, bufferSize << 1, delayError));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> p7(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new k4(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("custom")
    @p7.e
    public final m<T> p8(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new t4(this, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final Iterable<T> q(@p7.e T initialItem) {
        Objects.requireNonNull(initialItem, "initialItem is null");
        return new io.reactivex.rxjava3.internal.operators.flowable.d(this, initialItem);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> q1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean tillTheEnd, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.f(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final p0<T> q2(@p7.e T defaultItem) {
        return k2(0L, defaultItem);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final <R> m<R> q5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit) {
        return r5(selector, bufferSize, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final m<T> q6(long time, @p7.e TimeUnit unit, boolean delayError) {
        return p6(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.subscribers.f<T> q7() {
        io.reactivex.rxjava3.subscribers.f<T> fVar = new io.reactivex.rxjava3.subscribers.f<>();
        G6(fVar);
        return fVar;
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final Iterable<T> r() {
        return new io.reactivex.rxjava3.internal.operators.flowable.e(this);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> r1(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        return S2(mapper, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final v<T> r2() {
        return j2(0L);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> r5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.x9(FlowableInternalHelper.e(this, bufferSize, time, unit, scheduler, false), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<T> r6(@p7.e org.reactivestreams.c<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new y3(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.subscribers.f<T> r7(long initialRequest) {
        io.reactivex.rxjava3.subscribers.f<T> fVar = new io.reactivex.rxjava3.subscribers.f<>(initialRequest);
        G6(fVar);
        return fVar;
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T s() {
        return f6().h();
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final <R> m<R> s0(@p7.e s<? super T, ? extends R> composer) {
        Objects.requireNonNull(composer, "composer is null");
        return i3(composer.a(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> s1(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.f(this, mapper, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final p0<T> s2() {
        return l2(0L);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <K> m<io.reactivex.rxjava3.flowables.b<K, T>> s3(@p7.e q7.o<? super T, ? extends K> keySelector) {
        return (m<io.reactivex.rxjava3.flowables.b<K, T>>) v3(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> s5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.x9(FlowableInternalHelper.e(this, bufferSize, time, unit, scheduler, eagerTruncate), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> s6(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.P(new z3(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.subscribers.f<T> s7(long initialRequest, boolean cancel) {
        io.reactivex.rxjava3.subscribers.f<T> fVar = new io.reactivex.rxjava3.subscribers.f<>(initialRequest);
        if (cancel) {
            fVar.cancel();
        }
        G6(fVar);
        return fVar;
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<m<T>> s8(long count) {
        return u8(count, count, V());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final T t(@p7.e T defaultItem) {
        return d6(defaultItem).h();
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> t1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.z(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> t2() {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.e(false, null));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <K, V> m<io.reactivex.rxjava3.flowables.b<K, V>> t3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector) {
        return v3(keySelector, valueSelector, false, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> t5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, int bufferSize, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.x9(FlowableInternalHelper.f(this, bufferSize, eagerTruncate), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> t6() {
        return Z7().n2().Z3(io.reactivex.rxjava3.internal.functions.a.p(io.reactivex.rxjava3.internal.functions.a.q())).J2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> t7(long windowDuration, @p7.e TimeUnit unit) {
        return u7(windowDuration, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<m<T>> t8(long count, long skip) {
        return u8(count, skip, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final Stream<T> u() {
        return v(V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> u1(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.a0(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> u2(@p7.f T defaultItem) {
        return (CompletionStage) K6(new io.reactivex.rxjava3.internal.jdk8.e(true, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <K, V> m<io.reactivex.rxjava3.flowables.b<K, V>> u3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, boolean delayError) {
        return v3(keySelector, valueSelector, delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final <R> m<R> u5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, long time, @p7.e TimeUnit unit) {
        return v5(selector, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> u6(@p7.e Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        return Z7().n2().Z3(io.reactivex.rxjava3.internal.functions.a.p(comparator)).J2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> u7(long skipDuration, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new l4(this, skipDuration, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<m<T>> u8(long count, long skip, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.c(skip, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.rxjava3.internal.functions.b.c(count, "count");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new v4(this, count, skip, bufferSize));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final Stream<T> v(int prefetch) {
        Iterator<T> it = m(prefetch).iterator();
        Stream stream = StreamSupport.stream(Spliterators.spliteratorUnknownSize(it, 0), false);
        io.reactivex.rxjava3.disposables.f fVar = (io.reactivex.rxjava3.disposables.f) it;
        fVar.getClass();
        return (Stream) stream.onClose(new j(fVar));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> v1(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.b0(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> v2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return G2(mapper, false, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <K, V> m<io.reactivex.rxjava3.flowables.b<K, V>> v3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, boolean delayError, int bufferSize) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.P(new FlowableGroupBy(this, keySelector, valueSelector, bufferSize, delayError, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> v5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.x9(FlowableInternalHelper.g(this, time, unit, scheduler, false), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> v6(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return w0(io.reactivex.rxjava3.core.a.A1(other).p1(), this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> v7(long intervalDuration, @p7.e TimeUnit unit) {
        return O5(intervalDuration, unit);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<m<T>> v8(long timespan, long timeskip, @p7.e TimeUnit unit) {
        return x8(timespan, timeskip, unit, io.reactivex.rxjava3.schedulers.b.a(), V());
    }

    @p7.g("none")
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    public final void w() {
        io.reactivex.rxjava3.internal.operators.flowable.l.a(this);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> w1(@p7.e org.reactivestreams.c<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return w0(this, other);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> w2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int maxConcurrency) {
        return G2(mapper, false, maxConcurrency, V());
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final <K, V> m<io.reactivex.rxjava3.flowables.b<K, V>> w3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, boolean delayError, int bufferSize, @p7.e q7.o<? super q7.g<Object>, ? extends Map<K, Object>> evictingMapFactory) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(evictingMapFactory, "evictingMapFactory is null");
        return io.reactivex.rxjava3.plugins.a.P(new FlowableGroupBy(this, keySelector, valueSelector, bufferSize, delayError, evictingMapFactory));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> w4(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new h2(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("custom")
    @p7.e
    public final <R> m<R> w5(@p7.e q7.o<? super m<T>, ? extends org.reactivestreams.c<R>> selector, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return g3.x9(FlowableInternalHelper.g(this, time, unit, scheduler, eagerTruncate), selector);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> w6(@p7.e b0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return w0(v.I2(other).A2(), this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> w7(long intervalDuration, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return P5(intervalDuration, unit, scheduler);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> w8(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return x8(timespan, timeskip, unit, scheduler, V());
    }

    @p7.g("none")
    @p7.a(BackpressureKind.SPECIAL)
    public final void x(@p7.e org.reactivestreams.d<? super T> subscriber) {
        Objects.requireNonNull(subscriber, "subscriber is null");
        io.reactivex.rxjava3.internal.operators.flowable.l.b(this, subscriber);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<Boolean> x1(@p7.e Object item) {
        Objects.requireNonNull(item, "item is null");
        return e(io.reactivex.rxjava3.internal.functions.a.i(item));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> x2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        return B2(mapper, combiner, false, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <K> m<io.reactivex.rxjava3.flowables.b<K, T>> x3(@p7.e q7.o<? super T, ? extends K> keySelector, boolean delayError) {
        return (m<io.reactivex.rxjava3.flowables.b<K, T>>) v3(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), delayError, V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> x4(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new i2(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> x5() {
        return g3.w9(this);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> x6(@p7.e v0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return w0(p0.w2(other).n2(), this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<T> x7(long timeout, @p7.e TimeUnit unit) {
        return z7(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<m<T>> x8(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        io.reactivex.rxjava3.internal.functions.b.c(timespan, "timespan");
        io.reactivex.rxjava3.internal.functions.b.c(timeskip, "timeskip");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(unit, "unit is null");
        return io.reactivex.rxjava3.plugins.a.P(new z4(this, timespan, timeskip, unit, scheduler, Long.MAX_VALUE, bufferSize, false));
    }

    @p7.g("none")
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    public final void y(@p7.e q7.g<? super T> onNext) {
        io.reactivex.rxjava3.internal.operators.flowable.l.c(this, onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final p0<Long> y1() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.flowable.d0(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> y2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, int maxConcurrency) {
        return B2(mapper, combiner, false, maxConcurrency, V());
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("none")
    @p7.e
    public final <TRight, TLeftEnd, TRightEnd, R> m<R> y3(@p7.e org.reactivestreams.c<? extends TRight> other, @p7.e q7.o<? super T, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, @p7.e q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, @p7.e q7.c<? super T, ? super m<TRight>, ? extends R> resultSelector) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(leftEnd, "leftEnd is null");
        Objects.requireNonNull(rightEnd, "rightEnd is null");
        Objects.requireNonNull(resultSelector, "resultSelector is null");
        return io.reactivex.rxjava3.plugins.a.P(new s1(this, other, leftEnd, rightEnd, resultSelector));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> y4(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.P(new j2(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> y5(int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return g3.s9(this, bufferSize, false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> y6(@p7.e org.reactivestreams.c<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return z0(other, this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> y7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return z7(timeout, unit, scheduler, false);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<m<T>> y8(long timespan, @p7.e TimeUnit unit) {
        return D8(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    @p7.g("none")
    @p7.a(BackpressureKind.FULL)
    public final void z(@p7.e q7.g<? super T> onNext, int bufferSize) {
        io.reactivex.rxjava3.internal.operators.flowable.l.d(this, onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c, bufferSize);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U, R> m<R> z2(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors) {
        return B2(mapper, combiner, delayErrors, V(), V());
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @p7.g("none")
    @p7.e
    public final m<T> z3() {
        return io.reactivex.rxjava3.plugins.a.P(new t1(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> z4(@p7.e org.reactivestreams.c<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return h4(this, other);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final io.reactivex.rxjava3.flowables.a<T> z5(int bufferSize, long time, @p7.e TimeUnit unit) {
        return A5(bufferSize, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public final m<T> z6(@p7.e T... items) {
        m Y2 = Y2(items);
        if (Y2 == m2()) {
            return io.reactivex.rxjava3.plugins.a.P(this);
        }
        return z0(Y2, this);
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("custom")
    @p7.e
    public final m<T> z7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean emitLast) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.P(new m4(this, timeout, unit, scheduler, emitLast));
    }

    @p7.c
    @p7.a(BackpressureKind.ERROR)
    @p7.g("io.reactivex:computation")
    @p7.e
    public final m<m<T>> z8(long timespan, @p7.e TimeUnit unit, long count) {
        return D8(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count, false);
    }
}
