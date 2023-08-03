package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.internal.observers.ForEachWhileObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.maybe.p1;
import io.reactivex.rxjava3.internal.operators.observable.ObservableGroupBy;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.rxjava3.internal.operators.observable.a1;
import io.reactivex.rxjava3.internal.operators.observable.a2;
import io.reactivex.rxjava3.internal.operators.observable.a3;
import io.reactivex.rxjava3.internal.operators.observable.a4;
import io.reactivex.rxjava3.internal.operators.observable.b2;
import io.reactivex.rxjava3.internal.operators.observable.b3;
import io.reactivex.rxjava3.internal.operators.observable.b4;
import io.reactivex.rxjava3.internal.operators.observable.c1;
import io.reactivex.rxjava3.internal.operators.observable.c2;
import io.reactivex.rxjava3.internal.operators.observable.c3;
import io.reactivex.rxjava3.internal.operators.observable.c4;
import io.reactivex.rxjava3.internal.operators.observable.d1;
import io.reactivex.rxjava3.internal.operators.observable.d2;
import io.reactivex.rxjava3.internal.operators.observable.e1;
import io.reactivex.rxjava3.internal.operators.observable.e2;
import io.reactivex.rxjava3.internal.operators.observable.e3;
import io.reactivex.rxjava3.internal.operators.observable.e4;
import io.reactivex.rxjava3.internal.operators.observable.f1;
import io.reactivex.rxjava3.internal.operators.observable.f2;
import io.reactivex.rxjava3.internal.operators.observable.f3;
import io.reactivex.rxjava3.internal.operators.observable.f4;
import io.reactivex.rxjava3.internal.operators.observable.g1;
import io.reactivex.rxjava3.internal.operators.observable.g2;
import io.reactivex.rxjava3.internal.operators.observable.g3;
import io.reactivex.rxjava3.internal.operators.observable.g4;
import io.reactivex.rxjava3.internal.operators.observable.h1;
import io.reactivex.rxjava3.internal.operators.observable.h2;
import io.reactivex.rxjava3.internal.operators.observable.h3;
import io.reactivex.rxjava3.internal.operators.observable.h4;
import io.reactivex.rxjava3.internal.operators.observable.i1;
import io.reactivex.rxjava3.internal.operators.observable.i2;
import io.reactivex.rxjava3.internal.operators.observable.i3;
import io.reactivex.rxjava3.internal.operators.observable.i4;
import io.reactivex.rxjava3.internal.operators.observable.j1;
import io.reactivex.rxjava3.internal.operators.observable.j2;
import io.reactivex.rxjava3.internal.operators.observable.j3;
import io.reactivex.rxjava3.internal.operators.observable.j4;
import io.reactivex.rxjava3.internal.operators.observable.k1;
import io.reactivex.rxjava3.internal.operators.observable.k2;
import io.reactivex.rxjava3.internal.operators.observable.k3;
import io.reactivex.rxjava3.internal.operators.observable.l1;
import io.reactivex.rxjava3.internal.operators.observable.l2;
import io.reactivex.rxjava3.internal.operators.observable.l3;
import io.reactivex.rxjava3.internal.operators.observable.l4;
import io.reactivex.rxjava3.internal.operators.observable.m1;
import io.reactivex.rxjava3.internal.operators.observable.m2;
import io.reactivex.rxjava3.internal.operators.observable.m3;
import io.reactivex.rxjava3.internal.operators.observable.m4;
import io.reactivex.rxjava3.internal.operators.observable.n1;
import io.reactivex.rxjava3.internal.operators.observable.n2;
import io.reactivex.rxjava3.internal.operators.observable.n3;
import io.reactivex.rxjava3.internal.operators.observable.n4;
import io.reactivex.rxjava3.internal.operators.observable.o1;
import io.reactivex.rxjava3.internal.operators.observable.o2;
import io.reactivex.rxjava3.internal.operators.observable.o3;
import io.reactivex.rxjava3.internal.operators.observable.o4;
import io.reactivex.rxjava3.internal.operators.observable.p2;
import io.reactivex.rxjava3.internal.operators.observable.p3;
import io.reactivex.rxjava3.internal.operators.observable.p4;
import io.reactivex.rxjava3.internal.operators.observable.q1;
import io.reactivex.rxjava3.internal.operators.observable.q2;
import io.reactivex.rxjava3.internal.operators.observable.q3;
import io.reactivex.rxjava3.internal.operators.observable.r1;
import io.reactivex.rxjava3.internal.operators.observable.r3;
import io.reactivex.rxjava3.internal.operators.observable.s1;
import io.reactivex.rxjava3.internal.operators.observable.s2;
import io.reactivex.rxjava3.internal.operators.observable.s3;
import io.reactivex.rxjava3.internal.operators.observable.t1;
import io.reactivex.rxjava3.internal.operators.observable.t2;
import io.reactivex.rxjava3.internal.operators.observable.t3;
import io.reactivex.rxjava3.internal.operators.observable.u1;
import io.reactivex.rxjava3.internal.operators.observable.u2;
import io.reactivex.rxjava3.internal.operators.observable.u3;
import io.reactivex.rxjava3.internal.operators.observable.v1;
import io.reactivex.rxjava3.internal.operators.observable.v2;
import io.reactivex.rxjava3.internal.operators.observable.v3;
import io.reactivex.rxjava3.internal.operators.observable.w1;
import io.reactivex.rxjava3.internal.operators.observable.w2;
import io.reactivex.rxjava3.internal.operators.observable.w3;
import io.reactivex.rxjava3.internal.operators.observable.x1;
import io.reactivex.rxjava3.internal.operators.observable.x2;
import io.reactivex.rxjava3.internal.operators.observable.x3;
import io.reactivex.rxjava3.internal.operators.observable.y0;
import io.reactivex.rxjava3.internal.operators.observable.y1;
import io.reactivex.rxjava3.internal.operators.observable.y2;
import io.reactivex.rxjava3.internal.operators.observable.y3;
import io.reactivex.rxjava3.internal.operators.observable.z0;
import io.reactivex.rxjava3.internal.operators.observable.z1;
import io.reactivex.rxjava3.internal.operators.observable.z2;
import io.reactivex.rxjava3.internal.operators.observable.z3;
import io.reactivex.rxjava3.internal.operators.single.b1;
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

/* compiled from: Observable.java */
/* loaded from: classes4.dex */
public abstract class g0<T> implements l0<T> {

    /* compiled from: Observable.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f76128a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f76128a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f76128a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f76128a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f76128a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> A0(@p7.e l0<? extends T>... sources) {
        return z0(R(), R(), sources);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> A3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        return O2(item1, item2, item3, item4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> B0(@p7.e l0<? extends l0<? extends T>> sources) {
        return C0(sources, R(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> B3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        return O2(item1, item2, item3, item4, item5);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> C0(@p7.e l0<? extends l0<? extends T>> sources, int bufferSize, boolean tillTheEnd) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u(sources, io.reactivex.rxjava3.internal.functions.a.k(), bufferSize, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> C3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5, @p7.e T item6) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        return O2(item1, item2, item3, item4, item5, item6);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static g0<Integer> C4(int start, int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (count == 0) {
            return f2();
        } else {
            if (count == 1) {
                return x3(Integer.valueOf(start));
            }
            if (start + (count - 1) <= 2147483647L) {
                return io.reactivex.rxjava3.plugins.a.R(new m2(start, count));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> D0(@p7.e Iterable<? extends l0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return B0(U2(sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> D3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5, @p7.e T item6, @p7.e T item7) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        return O2(item1, item2, item3, item4, item5, item6, item7);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static g0<Long> D4(long start, long count) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (i4 == 0) {
            return f2();
        } else {
            if (count == 1) {
                return x3(Long.valueOf(start));
            }
            long j4 = (count - 1) + start;
            if (start > 0 && j4 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.rxjava3.plugins.a.R(new n2(start, count));
        }
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> E0(@p7.e l0<? extends l0<? extends T>> sources) {
        return F0(sources, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> E3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5, @p7.e T item6, @p7.e T item7, @p7.e T item8) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        Objects.requireNonNull(item8, "item8 is null");
        return O2(item1, item2, item3, item4, item5, item6, item7, item8);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> F0(@p7.e l0<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return i8(sources).Y0(io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> F3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5, @p7.e T item6, @p7.e T item7, @p7.e T item8, @p7.e T item9) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        Objects.requireNonNull(item4, "item4 is null");
        Objects.requireNonNull(item5, "item5 is null");
        Objects.requireNonNull(item6, "item6 is null");
        Objects.requireNonNull(item7, "item7 is null");
        Objects.requireNonNull(item8, "item8 is null");
        Objects.requireNonNull(item9, "item9 is null");
        return O2(item1, item2, item3, item4, item5, item6, item7, item8, item9);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> G0(@p7.e Iterable<? extends l0<? extends T>> sources) {
        return H0(sources, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> G3(@p7.e T item1, @p7.e T item2, @p7.e T item3, @p7.e T item4, @p7.e T item5, @p7.e T item6, @p7.e T item7, @p7.e T item8, @p7.e T item9, @p7.e T item10) {
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
        return O2(item1, item2, item3, item4, item5, item6, item7, item8, item9, item10);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> H0(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return U2(sources).a1(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> H7(@p7.e l0<T> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        if (!(onSubscribe instanceof g0)) {
            return io.reactivex.rxjava3.plugins.a.R(new l1(onSubscribe));
        }
        throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> I0(@p7.e l0<? extends l0<? extends T>> sources) {
        return J0(sources, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> J0(@p7.e l0<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return i8(sources).a1(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, D> g0<T> J7(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends l0<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup) {
        return K7(resourceSupplier, sourceSupplier, resourceCleanup, true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> K0(@p7.e Iterable<? extends l0<? extends T>> sources) {
        return L0(sources, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, D> g0<T> K7(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends l0<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup, boolean eager) {
        Objects.requireNonNull(resourceSupplier, "resourceSupplier is null");
        Objects.requireNonNull(sourceSupplier, "sourceSupplier is null");
        Objects.requireNonNull(resourceCleanup, "resourceCleanup is null");
        return io.reactivex.rxjava3.plugins.a.R(new g4(resourceSupplier, sourceSupplier, resourceCleanup, eager));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> L0(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return U2(sources).a1(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> N2(@p7.e q7.a action) {
        Objects.requireNonNull(action, "action is null");
        return io.reactivex.rxjava3.plugins.a.R(new c1(action));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> O2(@p7.e T... items) {
        Objects.requireNonNull(items, "items is null");
        if (items.length == 0) {
            return f2();
        }
        if (items.length == 1) {
            return x3(items[0]);
        }
        return io.reactivex.rxjava3.plugins.a.R(new d1(items));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> P2(@p7.e Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return io.reactivex.rxjava3.plugins.a.R(new e1(callable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Q2(@p7.e g completableSource) {
        Objects.requireNonNull(completableSource, "completableSource is null");
        return io.reactivex.rxjava3.plugins.a.R(new f1(completableSource));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Q3(@p7.e l0<? extends l0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w0(sources, io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE, R()));
    }

    @p7.c
    public static int R() {
        return m.V();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> R2(@p7.e CompletionStage<T> stage) {
        Objects.requireNonNull(stage, "stage is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.u(stage));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> R3(@p7.e l0<? extends l0<? extends T>> sources, int maxConcurrency) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w0(sources, io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, R()));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> S2(@p7.e Future<? extends T> future) {
        Objects.requireNonNull(future, "future is null");
        return io.reactivex.rxjava3.plugins.a.R(new g1(future, 0L, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> S3(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return O2(source1, source2).y2(io.reactivex.rxjava3.internal.functions.a.k(), false, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> T2(@p7.e Future<? extends T> future, long timeout, @p7.e TimeUnit unit) {
        Objects.requireNonNull(future, "future is null");
        Objects.requireNonNull(unit, "unit is null");
        return io.reactivex.rxjava3.plugins.a.R(new g1(future, timeout, unit));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> T3(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return O2(source1, source2, source3).y2(io.reactivex.rxjava3.internal.functions.a.k(), false, 3);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> U2(@p7.e Iterable<? extends T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.R(new h1(source));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> U3(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3, @p7.e l0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return O2(source1, source2, source3, source4).y2(io.reactivex.rxjava3.internal.functions.a.k(), false, 4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> V2(@p7.e b0<T> maybe) {
        Objects.requireNonNull(maybe, "maybe is null");
        return io.reactivex.rxjava3.plugins.a.R(new p1(maybe));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> V3(@p7.e Iterable<? extends l0<? extends T>> sources) {
        return U2(sources).o2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    private g0<T> W1(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete, @p7.e q7.a onAfterTerminate) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.o0(this, onNext, onError, onComplete, onAfterTerminate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> W2(@p7.e Optional<T> optional) {
        Objects.requireNonNull(optional, "optional is null");
        return (g0) optional.map(e0.f76126a).orElseGet(f0.f76127a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> W3(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency) {
        return U2(sources).p2(io.reactivex.rxjava3.internal.functions.a.k(), maxConcurrency);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static <T> g0<T> X2(@p7.e org.reactivestreams.c<? extends T> publisher) {
        Objects.requireNonNull(publisher, "publisher is null");
        return io.reactivex.rxjava3.plugins.a.R(new i1(publisher));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> X3(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return U2(sources).z2(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> g0<R> Y(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e l0<? extends T8> source8, @p7.e l0<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> combiner) {
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
        return j0(new l0[]{source1, source2, source3, source4, source5, source6, source7, source8, source9}, io.reactivex.rxjava3.internal.functions.a.E(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Y2(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        return io.reactivex.rxjava3.plugins.a.R(new j1(run));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Y3(int maxConcurrency, int bufferSize, @p7.e l0<? extends T>... sources) {
        return O2(sources).z2(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> g0<R> Z(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e l0<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3, source4, source5, source6, source7, source8}, io.reactivex.rxjava3.internal.functions.a.D(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Z2(@p7.e v0<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.R(new b1(source));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> Z3(@p7.e l0<? extends T>... sources) {
        return O2(sources).p2(io.reactivex.rxjava3.internal.functions.a.k(), sources.length);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> g0<R> a0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3, source4, source5, source6, source7}, io.reactivex.rxjava3.internal.functions.a.C(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> a3(@p7.e Stream<T> stream) {
        Objects.requireNonNull(stream, "stream is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.v(stream));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> a4(int maxConcurrency, int bufferSize, @p7.e l0<? extends T>... sources) {
        return O2(sources).z2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> g0<R> b0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3, source4, source5, source6}, io.reactivex.rxjava3.internal.functions.a.B(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> b3(@p7.e q7.s<? extends T> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new k1(supplier));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> b4(@p7.e l0<? extends T>... sources) {
        return O2(sources).y2(io.reactivex.rxjava3.internal.functions.a.k(), true, sources.length);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> c(@p7.e Iterable<? extends l0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.h(null, sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> g0<R> c0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3, source4, source5}, io.reactivex.rxjava3.internal.functions.a.A(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> c3(@p7.e q7.g<i<T>> generator) {
        Objects.requireNonNull(generator, "generator is null");
        return g3(io.reactivex.rxjava3.internal.functions.a.u(), r1.l(generator), io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> c4(@p7.e l0<? extends l0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w0(sources, io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE, R()));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> d(@p7.e l0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        int length = sources.length;
        if (length == 0) {
            return f2();
        }
        if (length == 1) {
            return i8(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.h(sources, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> g0<R> d0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3, source4}, io.reactivex.rxjava3.internal.functions.a.z(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, S> g0<T> d3(@p7.e q7.s<S> initialState, @p7.e q7.b<S, i<T>> generator) {
        Objects.requireNonNull(generator, "generator is null");
        return g3(initialState, r1.k(generator), io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> d4(@p7.e l0<? extends l0<? extends T>> sources, int maxConcurrency) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w0(sources, io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, R()));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> g0<R> e0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2, source3}, io.reactivex.rxjava3.internal.functions.a.y(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, S> g0<T> e3(@p7.e q7.s<S> initialState, @p7.e q7.b<S, i<T>> generator, @p7.e q7.g<? super S> disposeState) {
        Objects.requireNonNull(generator, "generator is null");
        return g3(initialState, r1.k(generator), disposeState);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> e4(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return O2(source1, source2).y2(io.reactivex.rxjava3.internal.functions.a.k(), true, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> g0<R> f0(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return j0(new l0[]{source1, source2}, io.reactivex.rxjava3.internal.functions.a.x(combiner), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> f2() {
        return io.reactivex.rxjava3.plugins.a.R(io.reactivex.rxjava3.internal.operators.observable.t0.f80117a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, S> g0<T> f3(@p7.e q7.s<S> initialState, @p7.e q7.c<S, i<T>, S> generator) {
        return g3(initialState, generator, io.reactivex.rxjava3.internal.functions.a.h());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> f4(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return O2(source1, source2, source3).y2(io.reactivex.rxjava3.internal.functions.a.k(), true, 3);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> g0(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return h0(sources, combiner, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> g2(@p7.e Throwable throwable) {
        Objects.requireNonNull(throwable, "throwable is null");
        return h2(io.reactivex.rxjava3.internal.functions.a.o(throwable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, S> g0<T> g3(@p7.e q7.s<S> initialState, @p7.e q7.c<S, i<T>, S> generator, @p7.e q7.g<? super S> disposeState) {
        Objects.requireNonNull(initialState, "initialState is null");
        Objects.requireNonNull(generator, "generator is null");
        Objects.requireNonNull(disposeState, "disposeState is null");
        return io.reactivex.rxjava3.plugins.a.R(new m1(initialState, generator, disposeState));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> g4(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3, @p7.e l0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return O2(source1, source2, source3, source4).y2(io.reactivex.rxjava3.internal.functions.a.k(), true, 4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> h0(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.t(null, sources, combiner, bufferSize << 1, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> h2(@p7.e q7.s<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u0(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> h4(@p7.e Iterable<? extends l0<? extends T>> sources) {
        return U2(sources).x2(io.reactivex.rxjava3.internal.functions.a.k(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> i0(@p7.e l0<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return j0(sources, combiner, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> i4(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency) {
        return U2(sources).y2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency);
    }

    @p7.e
    private g0<T> i7(long timeout, @p7.e TimeUnit unit, @p7.f l0<? extends T> fallback, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new b4(this, timeout, unit, scheduler, fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> i8(@p7.e l0<T> source) {
        Objects.requireNonNull(source, "source is null");
        if (source instanceof g0) {
            return io.reactivex.rxjava3.plugins.a.R((g0) source);
        }
        return io.reactivex.rxjava3.plugins.a.R(new l1(source));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> j0(@p7.e l0<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return f2();
        }
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.t(sources, null, combiner, bufferSize << 1, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> j4(@p7.e Iterable<? extends l0<? extends T>> sources, int maxConcurrency, int bufferSize) {
        return U2(sources).z2(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.e
    private <U, V> g0<T> j7(@p7.e l0<U> firstTimeoutIndicator, @p7.e q7.o<? super T, ? extends l0<V>> itemTimeoutIndicator, @p7.f l0<? extends T> fallback) {
        Objects.requireNonNull(itemTimeoutIndicator, "itemTimeoutIndicator is null");
        return io.reactivex.rxjava3.plugins.a.R(new a4(this, firstTimeoutIndicator, itemTimeoutIndicator, fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> g0<R> j8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e l0<? extends T8> source8, @p7.e l0<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> zipper) {
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
        return v8(io.reactivex.rxjava3.internal.functions.a.E(zipper), false, R(), source1, source2, source3, source4, source5, source6, source7, source8, source9);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> k0(@p7.e l0<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return l0(sources, combiner, R());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static g0<Long> k7(long delay, @p7.e TimeUnit unit) {
        return l7(delay, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> g0<R> k8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e l0<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.D(zipper), false, R(), source1, source2, source3, source4, source5, source6, source7, source8);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> l0(@p7.e l0<? extends T>[] sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (sources.length == 0) {
            return f2();
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.t(sources, null, combiner, bufferSize << 1, true));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static g0<Long> l7(long delay, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new c4(Math.max(delay, 0L), unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> g0<R> l8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e l0<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.C(zipper), false, R(), source1, source2, source3, source4, source5, source6, source7);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> m0(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner) {
        return n0(sources, combiner, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> g0<R> m8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e l0<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.B(zipper), false, R(), source1, source2, source3, source4, source5, source6);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> n0(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        Objects.requireNonNull(combiner, "combiner is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.t(null, sources, combiner, bufferSize << 1, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> g0<R> n8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e l0<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.A(zipper), false, R(), source1, source2, source3, source4, source5);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> o4() {
        return io.reactivex.rxjava3.plugins.a.R(f2.f79416a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> g0<R> o8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e l0<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.z(zipper), false, R(), source1, source2, source3, source4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> p0(@p7.e l0<? extends l0<? extends T>> sources) {
        return q0(sources, R());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static g0<Long> p3(long initialDelay, long period, @p7.e TimeUnit unit) {
        return q3(initialDelay, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> g0<R> p8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e l0<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.y(zipper), false, R(), source1, source2, source3);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> q0(@p7.e l0<? extends l0<? extends T>> sources, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u(sources, io.reactivex.rxjava3.internal.functions.a.k(), bufferSize, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static g0<Long> q3(long initialDelay, long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new s1(Math.max(0L, initialDelay), Math.max(0L, period), unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> g0<R> q8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.x(zipper), false, R(), source1, source2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> r0(@p7.e l0<? extends T> source1, l0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return v0(source1, source2);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static g0<Long> r3(long period, @p7.e TimeUnit unit) {
        return q3(period, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> r6(@p7.e l0<? extends l0<? extends T>> sources) {
        return s6(sources, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> g0<R> r8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper, boolean delayError) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.x(zipper), delayError, R(), source1, source2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> s0(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return v0(source1, source2, source3);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static g0<Long> s3(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return q3(period, period, unit, scheduler);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> s6(@p7.e l0<? extends l0<? extends T>> sources, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new p3(sources, io.reactivex.rxjava3.internal.functions.a.k(), bufferSize, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> g0<R> s8(@p7.e l0<? extends T1> source1, @p7.e l0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper, boolean delayError, int bufferSize) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return v8(io.reactivex.rxjava3.internal.functions.a.x(zipper), delayError, bufferSize, source1, source2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> t0(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e l0<? extends T> source3, @p7.e l0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return v0(source1, source2, source3, source4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> t1(@p7.e j0<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.c0(source));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static g0<Long> t3(long start, long count, long initialDelay, long period, @p7.e TimeUnit unit) {
        return u3(start, count, initialDelay, period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> t6(@p7.e l0<? extends l0<? extends T>> sources) {
        return u6(sources, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> t8(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.R(new o4(null, sources, zipper, R(), false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> u0(@p7.e Iterable<? extends l0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return U2(sources).V0(io.reactivex.rxjava3.internal.functions.a.k(), false, R());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static g0<Long> u3(long start, long count, long initialDelay, long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (i4 == 0) {
            return f2().A1(initialDelay, unit, scheduler);
        } else {
            long j4 = start + (count - 1);
            if (start > 0 && j4 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            Objects.requireNonNull(unit, "unit is null");
            Objects.requireNonNull(scheduler, "scheduler is null");
            return io.reactivex.rxjava3.plugins.a.R(new t1(start, j4, Math.max(0L, initialDelay), Math.max(0L, period), unit, scheduler));
        }
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> u5(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2) {
        return x5(source1, source2, io.reactivex.rxjava3.internal.functions.b.a(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> u6(@p7.e l0<? extends l0<? extends T>> sources, int bufferSize) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new p3(sources, io.reactivex.rxjava3.internal.functions.a.k(), bufferSize, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> u8(@p7.e Iterable<? extends l0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper, boolean delayError, int bufferSize) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new o4(null, sources, zipper, bufferSize, delayError));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> v0(@p7.e l0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return f2();
        }
        if (sources.length == 1) {
            return i8(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u(O2(sources), io.reactivex.rxjava3.internal.functions.a.k(), R(), ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> v5(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, int bufferSize) {
        return x5(source1, source2, io.reactivex.rxjava3.internal.functions.b.a(), bufferSize);
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T, R> g0<R> v8(@p7.e q7.o<? super Object[], ? extends R> zipper, boolean delayError, int bufferSize, @p7.e l0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return f2();
        }
        Objects.requireNonNull(zipper, "zipper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new o4(sources, null, zipper, bufferSize, delayError));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> w0(@p7.e l0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return f2();
        }
        if (sources.length == 1) {
            return i8(sources[0]);
        }
        return B0(O2(sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> w5(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e q7.d<? super T, ? super T> isEqual) {
        return x5(source1, source2, isEqual, R());
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> x0(int maxConcurrency, int bufferSize, @p7.e l0<? extends T>... sources) {
        return O2(sources).a1(io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> x3(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.R(new v1(item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> x5(@p7.e l0<? extends T> source1, @p7.e l0<? extends T> source2, @p7.e q7.d<? super T, ? super T> isEqual, int bufferSize) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(isEqual, "isEqual is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.S(new e3(source1, source2, isEqual, bufferSize));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> y0(@p7.e l0<? extends T>... sources) {
        return x0(R(), R(), sources);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> y1(@p7.e q7.s<? extends l0<? extends T>> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.f0(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> y3(@p7.e T item1, @p7.e T item2) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        return O2(item1, item2);
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> g0<T> z0(int maxConcurrency, int bufferSize, @p7.e l0<? extends T>... sources) {
        return O2(sources).a1(io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> z3(@p7.e T item1, @p7.e T item2, @p7.e T item3) {
        Objects.requireNonNull(item1, "item1 is null");
        Objects.requireNonNull(item2, "item2 is null");
        Objects.requireNonNull(item3, "item3 is null");
        return O2(item1, item2, item3);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<List<T>> A(int count) {
        return B(count, count);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> A1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return B1(time, unit, scheduler, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a A2(@p7.e q7.o<? super T, ? extends g> mapper) {
        return B2(mapper, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> A4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return io.reactivex.rxjava3.plugins.a.R(new l2(this, selector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> A5(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new h3(this, defaultItem));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> A6(long count, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return B6(count, time, unit, scheduler, false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> A7(@p7.e q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector) {
        return C7(keySelector, valueSelector, HashMapSupplier.asSupplier(), ArrayListSupplier.asFunction());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<List<T>> B(int count, int skip) {
        return (g0<List<T>>) C(count, skip, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> B1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.g0(this, time, unit, scheduler, delayError));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a B2(@p7.e q7.o<? super T, ? extends g> mapper, boolean delayErrors) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new y0(this, mapper, delayErrors));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> B4() {
        return io.reactivex.rxjava3.plugins.a.U(new k2(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> B5() {
        return io.reactivex.rxjava3.plugins.a.Q(new g3(this));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> B6(long count, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (count >= 0) {
            return io.reactivex.rxjava3.plugins.a.R(new t3(this, count, time, unit, scheduler, bufferSize, delayError));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> B7(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<Map<K, Collection<V>>> mapSupplier) {
        return C7(keySelector, valueSelector, mapSupplier, ArrayListSupplier.asFunction());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> g0<U> C(int count, int skip, @p7.e q7.s<U> bufferSupplier) {
        io.reactivex.rxjava3.internal.functions.b.b(count, "count");
        io.reactivex.rxjava3.internal.functions.b.b(skip, com.coremedia.iso.boxes.u.f10406o);
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.m(this, count, skip, bufferSupplier));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> C1(long time, @p7.e TimeUnit unit, boolean delayError) {
        return B1(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> C2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.b1(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> C5() {
        return io.reactivex.rxjava3.plugins.a.S(new h3(this, null));
    }

    @p7.c
    @p7.g("io.reactivex:trampoline")
    @p7.e
    public final g0<T> C6(long time, @p7.e TimeUnit unit) {
        return F6(time, unit, io.reactivex.rxjava3.schedulers.b.j(), false, R());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, Collection<V>>> C7(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<? extends Map<K, Collection<V>>> mapSupplier, @p7.e q7.o<? super K, ? extends Collection<? super V>> collectionFactory) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        Objects.requireNonNull(mapSupplier, "mapSupplier is null");
        Objects.requireNonNull(collectionFactory, "collectionFactory is null");
        return (p0<Map<K, Collection<V>>>) W(mapSupplier, io.reactivex.rxjava3.internal.functions.a.H(keySelector, valueSelector, collectionFactory));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> g0<U> D(int count, @p7.e q7.s<U> bufferSupplier) {
        return C(count, count, bufferSupplier);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<T> D1(@p7.e l0<U> subscriptionIndicator, @p7.e q7.o<? super T, ? extends l0<V>> itemDelayIndicator) {
        return H1(subscriptionIndicator).E1(itemDelayIndicator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<V> D2(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends V> combiner) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return (g0<V>) u2(r1.a(mapper), combiner, false, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> D5() {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.y(false, null));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> D6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return F6(time, unit, scheduler, false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> D7() {
        return F7(io.reactivex.rxjava3.internal.functions.a.q());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<List<T>> E(long timespan, long timeskip, @p7.e TimeUnit unit) {
        return (g0<List<T>>) G(timespan, timeskip, unit, io.reactivex.rxjava3.schedulers.b.a(), ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> E1(@p7.e q7.o<? super T, ? extends l0<U>> itemDelayIndicator) {
        Objects.requireNonNull(itemDelayIndicator, "itemDelayIndicator is null");
        return (g0<T>) o2(r1.c(itemDelayIndicator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> E2(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return F2(mapper, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> E4(@p7.e q7.c<T, T, T> reducer) {
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.Q(new o2(this, reducer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> E5(@p7.f T defaultItem) {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.y(true, defaultItem));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> E6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        return F6(time, unit, scheduler, delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> E7(int capacityHint) {
        return G7(io.reactivex.rxjava3.internal.functions.a.q(), capacityHint);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<List<T>> F(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return (g0<List<T>>) G(timespan, timeskip, unit, scheduler, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> F1(long time, @p7.e TimeUnit unit) {
        return G1(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> F2(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new z0(this, mapper, delayErrors));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> F4(R seed, @p7.e q7.c<R, ? super T, R> reducer) {
        Objects.requireNonNull(seed, "seed is null");
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.S(new p2(this, seed, reducer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> F5(long count) {
        int i4 = (count > 0L ? 1 : (count == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return io.reactivex.rxjava3.plugins.a.R(this);
            }
            return io.reactivex.rxjava3.plugins.a.R(new i3(this, count));
        }
        throw new IllegalArgumentException("count >= 0 expected but it was " + count);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> F6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        return B6(Long.MAX_VALUE, time, unit, scheduler, delayError, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> F7(@p7.e Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        return (p0<List<T>>) t7().P0(io.reactivex.rxjava3.internal.functions.a.p(comparator));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <U extends Collection<? super T>> g0<U> G(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.p(this, timespan, timeskip, unit, scheduler, bufferSupplier, Integer.MAX_VALUE, false));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> G1(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return H1(l7(time, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> G2(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return H2(mapper, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> G4(@p7.e q7.s<R> seedSupplier, @p7.e q7.c<R, ? super T, R> reducer) {
        Objects.requireNonNull(seedSupplier, "seedSupplier is null");
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.S(new q2(this, seedSupplier, reducer));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> G5(long time, @p7.e TimeUnit unit) {
        return O5(k7(time, unit));
    }

    @p7.c
    @p7.g("io.reactivex:trampoline")
    @p7.e
    public final g0<T> G6(long time, @p7.e TimeUnit unit, boolean delayError) {
        return F6(time, unit, io.reactivex.rxjava3.schedulers.b.j(), delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> G7(@p7.e Comparator<? super T> comparator, int capacityHint) {
        Objects.requireNonNull(comparator, "comparator is null");
        return (p0<List<T>>) u7(capacityHint).P0(io.reactivex.rxjava3.internal.functions.a.p(comparator));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<List<T>> H(long timespan, @p7.e TimeUnit unit) {
        return K(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> H1(@p7.e l0<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.h0(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> H2(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new a1(this, mapper, delayErrors));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> H3(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new x1(this, defaultItem));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> H4() {
        return I4(Long.MAX_VALUE);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> H5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return O5(l7(time, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> H6(@p7.e l0<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new u3(this, other));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<List<T>> I(long timespan, @p7.e TimeUnit unit, int count) {
        return K(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> I1(@p7.e q7.o<? super T, d0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.i0(this, selector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> I2(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.t(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> I3() {
        return io.reactivex.rxjava3.plugins.a.Q(new w1(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> I4(long times) {
        int i4 = (times > 0L ? 1 : (times == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return f2();
            }
            return io.reactivex.rxjava3.plugins.a.R(new s2(this, times));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + times);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> I5(int count) {
        if (count >= 0) {
            if (count == 0) {
                return io.reactivex.rxjava3.plugins.a.R(this);
            }
            return io.reactivex.rxjava3.plugins.a.R(new j3(this, count));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> I6(@p7.e q7.r<? super T> stopPredicate) {
        Objects.requireNonNull(stopPredicate, "stopPredicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new v3(this, stopPredicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> I7(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new f4(this, scheduler));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<List<T>> J(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return (g0<List<T>>) L(timespan, unit, scheduler, Integer.MAX_VALUE, ArrayListSupplier.asSupplier(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> J1() {
        return L1(io.reactivex.rxjava3.internal.functions.a.k(), io.reactivex.rxjava3.internal.functions.a.g());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f J2(@p7.e q7.g<? super T> onNext) {
        return a6(onNext);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> J3() {
        return io.reactivex.rxjava3.plugins.a.S(new x1(this, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> J4(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return io.reactivex.rxjava3.plugins.a.R(new t2(this, stop));
    }

    @p7.c
    @p7.g("io.reactivex:trampoline")
    @p7.e
    public final g0<T> J5(long time, @p7.e TimeUnit unit) {
        return M5(time, unit, io.reactivex.rxjava3.schedulers.b.j(), false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> J6(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new w3(this, predicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<List<T>> K(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, int count) {
        return (g0<List<T>>) L(timespan, unit, scheduler, count, ArrayListSupplier.asSupplier(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> g0<T> K1(@p7.e q7.o<? super T, K> keySelector) {
        return L1(keySelector, io.reactivex.rxjava3.internal.functions.a.g());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f K2(@p7.e q7.r<? super T> onNext) {
        return M2(onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> K3() {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.w(false, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> K4(@p7.e q7.o<? super g0<Object>, ? extends l0<?>> handler) {
        Objects.requireNonNull(handler, "handler is null");
        return io.reactivex.rxjava3.plugins.a.R(new u2(this, handler));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> K5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return M5(time, unit, scheduler, false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> K6() {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        a(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <U extends Collection<? super T>> g0<U> L(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, int count, @p7.e q7.s<U> bufferSupplier, boolean restartTimerOnMaxSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        io.reactivex.rxjava3.internal.functions.b.b(count, "count");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.p(this, timespan, timespan, unit, scheduler, bufferSupplier, count, restartTimerOnMaxSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> g0<T> L1(@p7.e q7.o<? super T, K> keySelector, @p7.e q7.s<? extends Collection<? super K>> collectionSupplier) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(collectionSupplier, "collectionSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.k0(this, keySelector, collectionSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f L2(@p7.e q7.r<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        return M2(onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> L3(@p7.f T defaultItem) {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.w(true, defaultItem));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> L4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return v2.R8(r1.g(this), selector);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> L5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        return M5(time, unit, scheduler, delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> L6(boolean dispose) {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        if (dispose) {
            nVar.dispose();
        }
        a(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<g0<T>> L7(long count) {
        return N7(count, count, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <B> g0<List<T>> M(@p7.e l0<B> boundaryIndicator) {
        return (g0<List<T>>) Q(boundaryIndicator, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> M0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return N0(mapper, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> M1() {
        return O1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f M2(@p7.e q7.r<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(onNext, onError, onComplete);
        a(forEachWhileObserver);
        return forEachWhileObserver;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> M3(@p7.e k0<? extends R, ? super T> lifter) {
        Objects.requireNonNull(lifter, "lifter is null");
        return io.reactivex.rxjava3.plugins.a.R(new y1(this, lifter));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> M4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, int bufferSize) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return v2.R8(r1.i(this, bufferSize, false), selector);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> M5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new k3(this, time, unit, scheduler, bufferSize << 1, delayError));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> M6(long windowDuration, @p7.e TimeUnit unit) {
        return N6(windowDuration, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<g0<T>> M7(long count, long skip) {
        return N7(count, skip, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <B> g0<List<T>> N(@p7.e l0<B> boundaryIndicator, int initialCapacity) {
        io.reactivex.rxjava3.internal.functions.b.b(initialCapacity, "initialCapacity");
        return (g0<List<T>>) Q(boundaryIndicator, io.reactivex.rxjava3.internal.functions.a.f(initialCapacity));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> N0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return f2();
            }
            return ObservableScalarXMap.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u(this, mapper, bufferSize, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> N1(@p7.e q7.d<? super T, ? super T> comparer) {
        Objects.requireNonNull(comparer, "comparer is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.l0(this, io.reactivex.rxjava3.internal.functions.a.k(), comparer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> N3(@p7.e q7.o<? super T, ? extends R> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new z1(this, mapper));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final <R> g0<R> N4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit) {
        return O4(selector, bufferSize, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("io.reactivex:trampoline")
    @p7.e
    public final g0<T> N5(long time, @p7.e TimeUnit unit, boolean delayError) {
        return M5(time, unit, io.reactivex.rxjava3.schedulers.b.j(), delayError, R());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> N6(long skipDuration, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new x3(this, skipDuration, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<g0<T>> N7(long count, long skip, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.c(count, "count");
        io.reactivex.rxjava3.internal.functions.b.c(skip, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new h4(this, count, skip, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <TOpening, TClosing> g0<List<T>> O(@p7.e l0<? extends TOpening> openingIndicator, @p7.e q7.o<? super TOpening, ? extends l0<? extends TClosing>> closingIndicator) {
        return (g0<List<T>>) P(openingIndicator, closingIndicator, ArrayListSupplier.asSupplier());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> O0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int bufferSize, @p7.e o0 scheduler) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w(this, mapper, bufferSize, ErrorMode.IMMEDIATE, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> g0<T> O1(@p7.e q7.o<? super T, K> keySelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.l0(this, keySelector, io.reactivex.rxjava3.internal.functions.b.a()));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> O3(@p7.e q7.o<? super T, Optional<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.x(this, mapper));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> O4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.R8(r1.h(this, bufferSize, time, unit, scheduler, false), selector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> O5(@p7.e l0<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new l3(this, other));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> O6(long intervalDuration, @p7.e TimeUnit unit) {
        return l5(intervalDuration, unit);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<g0<T>> O7(long timespan, long timeskip, @p7.e TimeUnit unit) {
        return Q7(timespan, timeskip, unit, io.reactivex.rxjava3.schedulers.b.a(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <TOpening, TClosing, U extends Collection<? super T>> g0<U> P(@p7.e l0<? extends TOpening> openingIndicator, @p7.e q7.o<? super TOpening, ? extends l0<? extends TClosing>> closingIndicator, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(openingIndicator, "openingIndicator is null");
        Objects.requireNonNull(closingIndicator, "closingIndicator is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.n(this, openingIndicator, closingIndicator, bufferSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a P0(@p7.e q7.o<? super T, ? extends g> mapper) {
        return Q0(mapper, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> P1(@p7.e q7.g<? super T> onAfterNext) {
        Objects.requireNonNull(onAfterNext, "onAfterNext is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.m0(this, onAfterNext));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<d0<T>> P3() {
        return io.reactivex.rxjava3.plugins.a.R(new b2(this));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> P4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.R8(r1.h(this, bufferSize, time, unit, scheduler, eagerTruncate), selector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> P5(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new m3(this, predicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> P6(long intervalDuration, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return m5(intervalDuration, unit, scheduler);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> P7(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return Q7(timespan, timeskip, unit, scheduler, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <B, U extends Collection<? super T>> g0<U> Q(@p7.e l0<B> boundaryIndicator, @p7.e q7.s<U> bufferSupplier) {
        Objects.requireNonNull(boundaryIndicator, "boundaryIndicator is null");
        Objects.requireNonNull(bufferSupplier, "bufferSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.o(this, boundaryIndicator, bufferSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a Q0(@p7.e q7.o<? super T, ? extends g> mapper, int capacityHint) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.q(this, mapper, ErrorMode.IMMEDIATE, capacityHint));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> Q1(@p7.e q7.a onAfterTerminate) {
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        return W1(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76182c, onAfterTerminate);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> Q4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, int bufferSize, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return v2.R8(r1.i(this, bufferSize, eagerTruncate), selector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> Q5() {
        return t7().q2().N3(io.reactivex.rxjava3.internal.functions.a.p(io.reactivex.rxjava3.internal.functions.a.q())).C2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> Q6(long timeout, @p7.e TimeUnit unit) {
        return S6(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> Q7(long timespan, long timeskip, @p7.e TimeUnit unit, @p7.e o0 scheduler, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.c(timespan, "timespan");
        io.reactivex.rxjava3.internal.functions.b.c(timeskip, "timeskip");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(unit, "unit is null");
        return io.reactivex.rxjava3.plugins.a.R(new l4(this, timespan, timeskip, unit, scheduler, Long.MAX_VALUE, bufferSize, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a R0(@p7.e q7.o<? super T, ? extends g> mapper) {
        return T0(mapper, true, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> R1(@p7.e q7.a onFinally) {
        Objects.requireNonNull(onFinally, "onFinally is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.n0(this, onFinally));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final <R> g0<R> R4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, long time, @p7.e TimeUnit unit) {
        return S4(selector, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> R5(@p7.e Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        return t7().q2().N3(io.reactivex.rxjava3.internal.functions.a.p(comparator)).C2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> R6(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return S6(timeout, unit, scheduler, false);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<g0<T>> R7(long timespan, @p7.e TimeUnit unit) {
        return W7(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> S() {
        return T(16);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a S0(@p7.e q7.o<? super T, ? extends g> mapper, boolean tillTheEnd) {
        return T0(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> S1(@p7.e q7.a onComplete) {
        return W1(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.h(), onComplete, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> S4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.R8(r1.j(this, time, unit, scheduler, false), selector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> S5(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return r0(io.reactivex.rxjava3.core.a.A1(other).t1(), this);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> S6(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean emitLast) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new y3(this, timeout, unit, scheduler, emitLast));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<g0<T>> S7(long timespan, @p7.e TimeUnit unit, long count) {
        return W7(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> T(int initialCapacity) {
        io.reactivex.rxjava3.internal.functions.b.b(initialCapacity, "initialCapacity");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.q(this, initialCapacity));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a T0(@p7.e q7.o<? super T, ? extends g> mapper, boolean tillTheEnd, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.q(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> T1(@p7.e q7.a onDispose) {
        return Y1(io.reactivex.rxjava3.internal.functions.a.h(), onDispose);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> T4(@p7.e q7.o<? super g0<T>, ? extends l0<R>> selector, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(selector, "selector is null");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.R8(r1.j(this, time, unit, scheduler, eagerTruncate), selector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> T5(@p7.e b0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return r0(v.I2(other).C2(), this);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> T6(long timeout, @p7.e TimeUnit unit, boolean emitLast) {
        return S6(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), emitLast);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<g0<T>> T7(long timespan, @p7.e TimeUnit unit, long count, boolean restart) {
        return W7(timespan, unit, io.reactivex.rxjava3.schedulers.b.a(), count, restart);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> U(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return (g0<U>) N3(io.reactivex.rxjava3.internal.functions.a.e(clazz));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> U0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return V0(mapper, true, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> U1(@p7.e n0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        return W1(r1.f(observer), r1.e(observer), r1.d(observer), io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> U4() {
        return v2.Q8(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> U5(@p7.e l0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return v0(other, this);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> U6(long timeout, @p7.e TimeUnit unit) {
        return u1(timeout, unit);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> U7(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return W7(timespan, unit, scheduler, Long.MAX_VALUE, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R, A> p0<R> V(@p7.e Collector<T, A, R> collector) {
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.jdk8.r(this, collector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> V0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean tillTheEnd, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return f2();
            }
            return ObservableScalarXMap.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.u(this, mapper, bufferSize, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> V1(@p7.e q7.g<? super d0<T>> onNotification) {
        Objects.requireNonNull(onNotification, "onNotification is null");
        return W1(io.reactivex.rxjava3.internal.functions.a.t(onNotification), io.reactivex.rxjava3.internal.functions.a.s(onNotification), io.reactivex.rxjava3.internal.functions.a.r(onNotification), io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> V4(int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return v2.M8(this, bufferSize, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> V5(@p7.e v0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return r0(p0.w2(other).q2(), this);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> V6(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return v1(timeout, unit, scheduler);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> V7(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count) {
        return W7(timespan, unit, scheduler, count, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> p0<U> W(@p7.e q7.s<? extends U> initialItemSupplier, @p7.e q7.b<? super U, ? super T> collector) {
        Objects.requireNonNull(initialItemSupplier, "initialItemSupplier is null");
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.s(this, initialItemSupplier, collector));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final <R> g0<R> W0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean tillTheEnd, int bufferSize, @p7.e o0 scheduler) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w(this, mapper, bufferSize, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, scheduler));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> W4(int bufferSize, long time, @p7.e TimeUnit unit) {
        return X4(bufferSize, time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public final g0<T> W5(@p7.e T... items) {
        g0 O2 = O2(items);
        if (O2 == f2()) {
            return io.reactivex.rxjava3.plugins.a.R(this);
        }
        return v0(O2, this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> W6() {
        return Z6(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> W7(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count, boolean restart) {
        return X7(timespan, unit, scheduler, count, restart, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> p0<U> X(@p7.e U initialItem, @p7.e q7.b<? super U, ? super T> collector) {
        Objects.requireNonNull(initialItem, "initialItem is null");
        return W(io.reactivex.rxjava3.internal.functions.a.o(initialItem), collector);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> X0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return Y0(mapper, Integer.MAX_VALUE, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> X1(@p7.e q7.g<? super Throwable> onError) {
        q7.g<? super T> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return W1(h4, onError, aVar, aVar);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> X4(int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.N8(this, time, unit, scheduler, bufferSize, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> X5(@p7.e T item) {
        return v0(x3(item), this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> X6(@p7.e o0 scheduler) {
        return Z6(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<g0<T>> X7(long timespan, @p7.e TimeUnit unit, @p7.e o0 scheduler, long count, boolean restart, int bufferSize) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(unit, "unit is null");
        io.reactivex.rxjava3.internal.functions.b.c(count, "count");
        return io.reactivex.rxjava3.plugins.a.R(new l4(this, timespan, timespan, unit, scheduler, count, bufferSize, restart));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> Y0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.v(this, mapper, ErrorMode.IMMEDIATE, maxConcurrency, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> Y1(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, @p7.e q7.a onDispose) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.p0(this, onSubscribe, onDispose));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> Y4(int bufferSize, long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.N8(this, time, unit, scheduler, bufferSize, eagerTruncate);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> Y5(@p7.e Iterable<? extends T> items) {
        return v0(U2(items), this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> Y6(@p7.e TimeUnit unit) {
        return Z6(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <B> g0<g0<T>> Y7(@p7.e l0<B> boundaryIndicator) {
        return Z7(boundaryIndicator, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> Z0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean tillTheEnd) {
        return a1(mapper, tillTheEnd, Integer.MAX_VALUE, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> Z1(@p7.e q7.g<? super T> onNext) {
        q7.g<? super Throwable> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return W1(onNext, h4, aVar, aVar);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> Z4(int bufferSize, boolean eagerTruncate) {
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return v2.M8(this, bufferSize, eagerTruncate);
    }

    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f Z5() {
        return c6(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> Z6(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new z3(this, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <B> g0<g0<T>> Z7(@p7.e l0<B> boundaryIndicator, int bufferSize) {
        Objects.requireNonNull(boundaryIndicator, "boundaryIndicator is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new i4(this, boundaryIndicator, bufferSize));
    }

    @Override // io.reactivex.rxjava3.core.l0
    @p7.g("none")
    public final void a(@p7.e n0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        try {
            n0<? super T> f02 = io.reactivex.rxjava3.plugins.a.f0(this, observer);
            Objects.requireNonNull(f02, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            d6(f02);
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
    @p7.g("none")
    @p7.e
    public final <R> g0<R> a1(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean tillTheEnd, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.v(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, maxConcurrency, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> a2(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        return Y1(onSubscribe, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> a5(long time, @p7.e TimeUnit unit) {
        return b5(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f a6(@p7.e q7.g<? super T> onNext) {
        return c6(onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> a7(long timeout, @p7.e TimeUnit unit) {
        return i7(timeout, unit, null, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<g0<T>> a8(@p7.e l0<U> openingIndicator, @p7.e q7.o<? super U, ? extends l0<V>> closingIndicator) {
        return b8(openingIndicator, closingIndicator, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> b(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.g(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> b1(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.b1(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> b2(@p7.e q7.a onTerminate) {
        Objects.requireNonNull(onTerminate, "onTerminate is null");
        return W1(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.a(onTerminate), onTerminate, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> b5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.O8(this, time, unit, scheduler, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f b6(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        return c6(onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> b7(long timeout, @p7.e TimeUnit unit, @p7.e l0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return i7(timeout, unit, fallback, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<g0<T>> b8(@p7.e l0<U> openingIndicator, @p7.e q7.o<? super U, ? extends l0<V>> closingIndicator, int bufferSize) {
        Objects.requireNonNull(openingIndicator, "openingIndicator is null");
        Objects.requireNonNull(closingIndicator, "closingIndicator is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new j4(this, openingIndicator, closingIndicator, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> c1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return d1(mapper, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> c2(long index) {
        if (index >= 0) {
            return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.observable.r0(this, index));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final io.reactivex.rxjava3.observables.a<T> c5(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean eagerTruncate) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return v2.O8(this, time, unit, scheduler, eagerTruncate);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f c6(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        LambdaObserver lambdaObserver = new LambdaObserver(onNext, onError, onComplete, io.reactivex.rxjava3.internal.functions.a.h());
        a(lambdaObserver);
        return lambdaObserver;
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> c7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return i7(timeout, unit, null, scheduler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <T1, T2, T3, T4, R> g0<R> c8(@p7.e l0<T1> source1, @p7.e l0<T2> source2, @p7.e l0<T3> source3, @p7.e l0<T4> source4, @p7.e q7.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return h8(new l0[]{source1, source2, source3, source4}, io.reactivex.rxjava3.internal.functions.a.A(combiner));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> d1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.r(this, mapper, ErrorMode.IMMEDIATE, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> d2(long index, @p7.e T defaultItem) {
        if (index >= 0) {
            Objects.requireNonNull(defaultItem, "defaultItem is null");
            return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.s0(this, index, defaultItem));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> d5() {
        return f5(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.c());
    }

    protected abstract void d6(@p7.e n0<? super T> observer);

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> d7(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e l0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return i7(timeout, unit, fallback, scheduler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <T1, T2, T3, R> g0<R> d8(@p7.e l0<T1> source1, @p7.e l0<T2> source2, @p7.e l0<T3> source3, @p7.e q7.i<? super T, ? super T1, ? super T2, ? super T3, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return h8(new l0[]{source1, source2, source3}, io.reactivex.rxjava3.internal.functions.a.z(combiner));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> e(@p7.e l0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return d(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> e1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return g1(mapper, true, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> e2(long index) {
        if (index >= 0) {
            return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.s0(this, index, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + index);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> e5(long times) {
        return f5(times, io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> e6(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new n3(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<T> e7(@p7.e l0<U> firstTimeoutIndicator, @p7.e q7.o<? super T, ? extends l0<V>> itemTimeoutIndicator) {
        Objects.requireNonNull(firstTimeoutIndicator, "firstTimeoutIndicator is null");
        return j7(firstTimeoutIndicator, itemTimeoutIndicator, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <T1, T2, R> g0<R> e8(@p7.e l0<T1> source1, @p7.e l0<T2> source2, @p7.e q7.h<? super T, ? super T1, ? super T2, R> combiner) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return h8(new l0[]{source1, source2}, io.reactivex.rxjava3.internal.functions.a.y(combiner));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> f(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.j(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> f1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean tillTheEnd) {
        return g1(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> f5(long times, @p7.e q7.r<? super Throwable> predicate) {
        if (times >= 0) {
            Objects.requireNonNull(predicate, "predicate is null");
            return io.reactivex.rxjava3.plugins.a.R(new x2(this, times, predicate));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + times);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <E extends n0<? super T>> E f6(E observer) {
        a(observer);
        return observer;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, V> g0<T> f7(@p7.e l0<U> firstTimeoutIndicator, @p7.e q7.o<? super T, ? extends l0<V>> itemTimeoutIndicator, @p7.e l0<? extends T> fallback) {
        Objects.requireNonNull(firstTimeoutIndicator, "firstTimeoutIndicator is null");
        Objects.requireNonNull(fallback, "fallback is null");
        return j7(firstTimeoutIndicator, itemTimeoutIndicator, fallback);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> f8(@p7.e l0<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.R(new m4(this, combiner, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T g() {
        io.reactivex.rxjava3.internal.observers.e eVar = new io.reactivex.rxjava3.internal.observers.e();
        a(eVar);
        T a10 = eVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> g1(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper, boolean tillTheEnd, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.r(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> g5(@p7.e q7.d<? super Integer, ? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new w2(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> g6(@p7.e l0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new o3(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <V> g0<T> g7(@p7.e q7.o<? super T, ? extends l0<V>> itemTimeoutIndicator) {
        return j7(null, itemTimeoutIndicator, null);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> g8(@p7.e Iterable<? extends l0<?>> others, @p7.e q7.o<? super Object[], R> combiner) {
        Objects.requireNonNull(others, "others is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.R(new n4(this, others, combiner));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T h(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        io.reactivex.rxjava3.internal.observers.e eVar = new io.reactivex.rxjava3.internal.observers.e();
        a(eVar);
        T a10 = eVar.a();
        return a10 != null ? a10 : defaultItem;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> h1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return i1(mapper, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> g0<io.reactivex.rxjava3.observables.b<K, T>> h3(@p7.e q7.o<? super T, ? extends K> keySelector) {
        return (g0<io.reactivex.rxjava3.observables.b<K, T>>) k3(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> h5(@p7.e q7.r<? super Throwable> predicate) {
        return f5(Long.MAX_VALUE, predicate);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> h6(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return i6(mapper, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <V> g0<T> h7(@p7.e q7.o<? super T, ? extends l0<V>> itemTimeoutIndicator, @p7.e l0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return j7(null, itemTimeoutIndicator, fallback);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> h8(@p7.e l0<?>[] others, @p7.e q7.o<? super Object[], R> combiner) {
        Objects.requireNonNull(others, "others is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.R(new n4(this, others, combiner));
    }

    @p7.g("none")
    @p7.e
    public final void i(@p7.e q7.g<? super T> onNext) {
        j(onNext, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> i1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.s(this, mapper, ErrorMode.IMMEDIATE, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> i2(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.v0(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> g0<io.reactivex.rxjava3.observables.b<K, V>> i3(@p7.e q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector) {
        return k3(keySelector, valueSelector, false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> i5(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return f5(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.v(stop));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> i6(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return f2();
            }
            return ObservableScalarXMap.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.R(new p3(this, mapper, bufferSize, false));
    }

    @p7.g("none")
    @p7.e
    public final void j(@p7.e q7.g<? super T> onNext, int capacityHint) {
        Objects.requireNonNull(onNext, "onNext is null");
        Iterator<T> it = l(capacityHint).iterator();
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
    @p7.g("none")
    @p7.e
    public final <R> g0<R> j1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return l1(mapper, true, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> j2(@p7.e T defaultItem) {
        return d2(0L, defaultItem);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> g0<io.reactivex.rxjava3.observables.b<K, V>> j3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, boolean delayError) {
        return k3(keySelector, valueSelector, delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> j5(@p7.e q7.o<? super g0<Throwable>, ? extends l0<?>> handler) {
        Objects.requireNonNull(handler, "handler is null");
        return io.reactivex.rxjava3.plugins.a.R(new y2(this, handler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a j6(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.t(this, mapper, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Iterable<T> k() {
        return l(R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> k1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean tillTheEnd) {
        return l1(mapper, tillTheEnd, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> k2() {
        return c2(0L);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> g0<io.reactivex.rxjava3.observables.b<K, V>> k3(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, boolean delayError, int bufferSize) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new ObservableGroupBy(this, keySelector, valueSelector, bufferSize, delayError));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> k4(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new c2(this, other));
    }

    @p7.g("none")
    @p7.e
    public final void k5(@p7.e n0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        if (observer instanceof io.reactivex.rxjava3.observers.l) {
            a(observer);
        } else {
            a(new io.reactivex.rxjava3.observers.l(observer));
        }
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a k6(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.t(this, mapper, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Iterable<T> l(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new io.reactivex.rxjava3.internal.operators.observable.b(this, capacityHint);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> l1(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper, boolean tillTheEnd, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.s(this, mapper, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> l2() {
        return e2(0L);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> g0<io.reactivex.rxjava3.observables.b<K, T>> l3(@p7.e q7.o<? super T, ? extends K> keySelector, boolean delayError) {
        return (g0<io.reactivex.rxjava3.observables.b<K, T>>) k3(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> l4(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new d2(this, other));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> l5(long period, @p7.e TimeUnit unit) {
        return m5(period, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> l6(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return m6(mapper, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T m() {
        io.reactivex.rxjava3.internal.observers.f fVar = new io.reactivex.rxjava3.internal.observers.f();
        a(fVar);
        T a10 = fVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> m1(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        return I2(mapper);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> m2() {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.s(false, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <TRight, TLeftEnd, TRightEnd, R> g0<R> m3(@p7.e l0<? extends TRight> other, @p7.e q7.o<? super T, ? extends l0<TLeftEnd>> leftEnd, @p7.e q7.o<? super TRight, ? extends l0<TRightEnd>> rightEnd, @p7.e q7.c<? super T, ? super g0<TRight>, ? extends R> resultSelector) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(leftEnd, "leftEnd is null");
        Objects.requireNonNull(rightEnd, "rightEnd is null");
        Objects.requireNonNull(resultSelector, "resultSelector is null");
        return io.reactivex.rxjava3.plugins.a.R(new n1(this, other, leftEnd, rightEnd, resultSelector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> m4(@p7.e l0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return S3(this, other);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> m5(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new z2(this, period, unit, scheduler, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> m6(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return f2();
            }
            return ObservableScalarXMap.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.R(new p3(this, mapper, bufferSize, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> m7() {
        return p7(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T n(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        io.reactivex.rxjava3.internal.observers.f fVar = new io.reactivex.rxjava3.internal.observers.f();
        a(fVar);
        T a10 = fVar.a();
        return a10 != null ? a10 : defaultItem;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> n1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.x(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> n2(@p7.f T defaultItem) {
        return (CompletionStage) f6(new io.reactivex.rxjava3.internal.jdk8.s(true, defaultItem));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> n3() {
        return io.reactivex.rxjava3.plugins.a.R(new o1(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> n4(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new e2(this, other));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> n5(long period, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean emitLast) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new z2(this, period, unit, scheduler, emitLast));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> n6(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.u(this, mapper, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> n7(@p7.e o0 scheduler) {
        return p7(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Iterable<T> o() {
        return new io.reactivex.rxjava3.internal.operators.observable.c(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> o0(@p7.e m0<? super T, ? extends R> composer) {
        Objects.requireNonNull(composer, "composer is null");
        return i8(composer.a(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> o1(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.y(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> o2(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        return x2(mapper, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.core.a o3() {
        return io.reactivex.rxjava3.plugins.a.O(new q1(this));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> o5(long period, @p7.e TimeUnit unit, boolean emitLast) {
        return n5(period, unit, io.reactivex.rxjava3.schedulers.b.a(), emitLast);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> o6(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.u(this, mapper, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> o7(@p7.e TimeUnit unit) {
        return p7(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Iterable<T> p(@p7.e T initialItem) {
        Objects.requireNonNull(initialItem, "initialItem is null");
        return new io.reactivex.rxjava3.internal.operators.observable.d(this, initialItem);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> p1(@p7.e l0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return r0(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> p2(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, int maxConcurrency) {
        return z2(mapper, false, maxConcurrency, R());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> p4(@p7.e o0 scheduler) {
        return r4(scheduler, false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> p5(@p7.e l0<U> sampler) {
        Objects.requireNonNull(sampler, "sampler is null");
        return io.reactivex.rxjava3.plugins.a.R(new a3(this, sampler, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> p6(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.v(this, mapper, false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<io.reactivex.rxjava3.schedulers.d<T>> p7(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return (g0<io.reactivex.rxjava3.schedulers.d<T>>) N3(io.reactivex.rxjava3.internal.functions.a.w(unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Iterable<T> q() {
        return new io.reactivex.rxjava3.internal.operators.observable.e(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> q1(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.z(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> q2(@p7.e q7.o<? super T, ? extends l0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        return u2(mapper, combiner, false, R(), R());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> q4(@p7.e o0 scheduler, boolean delayError) {
        return r4(scheduler, delayError, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> q5(@p7.e l0<U> sampler, boolean emitLast) {
        Objects.requireNonNull(sampler, "sampler is null");
        return io.reactivex.rxjava3.plugins.a.R(new a3(this, sampler, emitLast));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> q6(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.v(this, mapper, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> R q7(@p7.e h0<T, ? extends R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T r() {
        T g4 = B5().g();
        if (g4 != null) {
            return g4;
        }
        throw new NoSuchElementException();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> r1(@p7.e Object item) {
        Objects.requireNonNull(item, "item is null");
        return f(io.reactivex.rxjava3.internal.functions.a.i(item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> r2(@p7.e q7.o<? super T, ? extends l0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, int maxConcurrency) {
        return u2(mapper, combiner, false, maxConcurrency, R());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> r4(@p7.e o0 scheduler, boolean delayError, int bufferSize) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.R(new g2(this, scheduler, delayError, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> r5(@p7.e R initialValue, @p7.e q7.c<R, ? super T, R> accumulator) {
        Objects.requireNonNull(initialValue, "initialValue is null");
        return t5(io.reactivex.rxjava3.internal.functions.a.o(initialValue), accumulator);
    }

    @p7.c
    @p7.a(BackpressureKind.SPECIAL)
    @p7.g("none")
    @p7.e
    public final m<T> r7(@p7.e BackpressureStrategy strategy) {
        Objects.requireNonNull(strategy, "strategy is null");
        io.reactivex.rxjava3.internal.operators.flowable.n1 n1Var = new io.reactivex.rxjava3.internal.operators.flowable.n1(this);
        int i4 = a.f76128a[strategy.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return n1Var.F4();
                    }
                    return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.p2(n1Var));
                }
                return n1Var;
            }
            return n1Var.P4();
        }
        return n1Var.N4();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T s(@p7.e T defaultItem) {
        return A5(defaultItem).h();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Long> s1() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.observable.b0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> s2(@p7.e q7.o<? super T, ? extends l0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors) {
        return u2(mapper, combiner, delayErrors, R(), R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> s4(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return i2(io.reactivex.rxjava3.internal.functions.a.l(clazz)).U(clazz);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> s5(@p7.e q7.c<T, T, T> accumulator) {
        Objects.requireNonNull(accumulator, "accumulator is null");
        return io.reactivex.rxjava3.plugins.a.R(new b3(this, accumulator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Future<T> s7() {
        return (Future) f6(new io.reactivex.rxjava3.internal.observers.j());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Stream<T> t() {
        return u(R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> t2(@p7.e q7.o<? super T, ? extends l0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors, int maxConcurrency) {
        return u2(mapper, combiner, delayErrors, maxConcurrency, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> t4() {
        return u4(io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> t5(@p7.e q7.s<R> seedSupplier, @p7.e q7.c<R, ? super T, R> accumulator) {
        Objects.requireNonNull(seedSupplier, "seedSupplier is null");
        Objects.requireNonNull(accumulator, "accumulator is null");
        return io.reactivex.rxjava3.plugins.a.R(new c3(this, seedSupplier, accumulator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> t7() {
        return u7(16);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Stream<T> u(int capacityHint) {
        Iterator<T> it = l(capacityHint).iterator();
        Stream stream = StreamSupport.stream(Spliterators.spliteratorUnknownSize(it, 0), false);
        io.reactivex.rxjava3.disposables.f fVar = (io.reactivex.rxjava3.disposables.f) it;
        fVar.getClass();
        return (Stream) stream.onClose(new j(fVar));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> u1(long timeout, @p7.e TimeUnit unit) {
        return v1(timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> u2(@p7.e q7.o<? super T, ? extends l0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner, boolean delayErrors, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return z2(r1.b(mapper, combiner), delayErrors, maxConcurrency, bufferSize);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> u4(@p7.e q7.r<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.R(new h2(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<List<T>> u7(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return io.reactivex.rxjava3.plugins.a.S(new e4(this, capacityHint));
    }

    @p7.g("none")
    public final void v() {
        io.reactivex.rxjava3.internal.operators.observable.l.a(this);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> v1(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.e0(this, timeout, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> v2(@p7.e q7.o<? super T, ? extends l0<? extends R>> onNextMapper, @p7.e q7.o<? super Throwable, ? extends l0<? extends R>> onErrorMapper, @p7.e q7.s<? extends l0<? extends R>> onCompleteSupplier) {
        Objects.requireNonNull(onNextMapper, "onNextMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        Objects.requireNonNull(onCompleteSupplier, "onCompleteSupplier is null");
        return Q3(new a2(this, onNextMapper, onErrorMapper, onCompleteSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> v3() {
        return b(io.reactivex.rxjava3.internal.functions.a.b());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> v4(@p7.e q7.o<? super Throwable, ? extends l0<? extends T>> fallbackSupplier) {
        Objects.requireNonNull(fallbackSupplier, "fallbackSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new i2(this, fallbackSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> v6(long count) {
        if (count >= 0) {
            return io.reactivex.rxjava3.plugins.a.R(new q3(this, count));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + count);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U extends Collection<? super T>> p0<U> v7(@p7.e q7.s<U> collectionSupplier) {
        Objects.requireNonNull(collectionSupplier, "collectionSupplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new e4(this, collectionSupplier));
    }

    @p7.g("none")
    public final void w(@p7.e n0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        io.reactivex.rxjava3.internal.operators.observable.l.b(this, observer);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<T> w1(@p7.e q7.o<? super T, ? extends l0<U>> debounceIndicator) {
        Objects.requireNonNull(debounceIndicator, "debounceIndicator is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.d0(this, debounceIndicator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> w2(@p7.e q7.o<? super T, ? extends l0<? extends R>> onNextMapper, @p7.e q7.o<Throwable, ? extends l0<? extends R>> onErrorMapper, @p7.e q7.s<? extends l0<? extends R>> onCompleteSupplier, int maxConcurrency) {
        Objects.requireNonNull(onNextMapper, "onNextMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        Objects.requireNonNull(onCompleteSupplier, "onCompleteSupplier is null");
        return R3(new a2(this, onNextMapper, onErrorMapper, onCompleteSupplier), maxConcurrency);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <TRight, TLeftEnd, TRightEnd, R> g0<R> w3(@p7.e l0<? extends TRight> other, @p7.e q7.o<? super T, ? extends l0<TLeftEnd>> leftEnd, @p7.e q7.o<? super TRight, ? extends l0<TRightEnd>> rightEnd, @p7.e q7.c<? super T, ? super TRight, ? extends R> resultSelector) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(leftEnd, "leftEnd is null");
        Objects.requireNonNull(rightEnd, "rightEnd is null");
        Objects.requireNonNull(resultSelector, "resultSelector is null");
        return io.reactivex.rxjava3.plugins.a.R(new u1(this, other, leftEnd, rightEnd, resultSelector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> w4(@p7.e l0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return v4(io.reactivex.rxjava3.internal.functions.a.n(fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> w6(long time, @p7.e TimeUnit unit) {
        return H6(k7(time, unit));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> p0<Map<K, T>> w7(@p7.e q7.o<? super T, ? extends K> keySelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        return (p0<Map<K, T>>) W(HashMapSupplier.asSupplier(), io.reactivex.rxjava3.internal.functions.a.F(keySelector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> w8(@p7.e l0<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        Objects.requireNonNull(other, "other is null");
        return q8(this, other, zipper);
    }

    @p7.g("none")
    public final void x(@p7.e q7.g<? super T> onNext) {
        io.reactivex.rxjava3.internal.operators.observable.l.c(this, onNext, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> x1(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return g6(x3(defaultItem));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> x2(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean delayErrors) {
        return y2(mapper, delayErrors, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> x4(@p7.e q7.o<? super Throwable, ? extends T> itemSupplier) {
        Objects.requireNonNull(itemSupplier, "itemSupplier is null");
        return io.reactivex.rxjava3.plugins.a.R(new j2(this, itemSupplier));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final g0<T> x6(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return H6(l7(time, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, V>> x7(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        return (p0<Map<K, V>>) W(HashMapSupplier.asSupplier(), io.reactivex.rxjava3.internal.functions.a.G(keySelector, valueSelector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> x8(@p7.e l0<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper, boolean delayError) {
        return r8(this, other, zipper, delayError);
    }

    @p7.g("none")
    public final void y(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError) {
        io.reactivex.rxjava3.internal.operators.observable.l.c(this, onNext, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> y2(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
        return z2(mapper, delayErrors, maxConcurrency, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> y4(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return x4(io.reactivex.rxjava3.internal.functions.a.n(item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> y5() {
        return io.reactivex.rxjava3.plugins.a.R(new f3(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> y6(int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + count);
        } else if (count == 0) {
            return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.p1(this));
        } else {
            if (count == 1) {
                return io.reactivex.rxjava3.plugins.a.R(new s3(this));
            }
            return io.reactivex.rxjava3.plugins.a.R(new r3(this, count));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <K, V> p0<Map<K, V>> y7(@p7.e q7.o<? super T, ? extends K> keySelector, @p7.e q7.o<? super T, ? extends V> valueSelector, @p7.e q7.s<? extends Map<K, V>> mapSupplier) {
        Objects.requireNonNull(keySelector, "keySelector is null");
        Objects.requireNonNull(valueSelector, "valueSelector is null");
        Objects.requireNonNull(mapSupplier, "mapSupplier is null");
        return (p0<Map<K, V>>) W(mapSupplier, io.reactivex.rxjava3.internal.functions.a.G(keySelector, valueSelector));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> y8(@p7.e l0<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper, boolean delayError, int bufferSize) {
        return s8(this, other, zipper, delayError, bufferSize);
    }

    @p7.g("none")
    public final void z(@p7.e q7.g<? super T> onNext, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        io.reactivex.rxjava3.internal.operators.observable.l.c(this, onNext, onError, onComplete);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final g0<T> z1(long time, @p7.e TimeUnit unit) {
        return B1(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> z2(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper, boolean delayErrors, int maxConcurrency, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.o) {
            Object obj = ((io.reactivex.rxjava3.internal.fuseable.o) this).get();
            if (obj == null) {
                return f2();
            }
            return ObservableScalarXMap.a(obj, mapper);
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.w0(this, mapper, delayErrors, maxConcurrency, bufferSize));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> z4() {
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.observable.j0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> z5() {
        return B4().F8();
    }

    @p7.c
    @p7.g("io.reactivex:trampoline")
    @p7.e
    public final g0<T> z6(long count, long time, @p7.e TimeUnit unit) {
        return B6(count, time, unit, io.reactivex.rxjava3.schedulers.b.j(), false, R());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <K> p0<Map<K, Collection<T>>> z7(@p7.e q7.o<? super T, ? extends K> keySelector) {
        return (p0<Map<K, Collection<T>>>) C7(keySelector, io.reactivex.rxjava3.internal.functions.a.k(), HashMapSupplier.asSupplier(), ArrayListSupplier.asFunction());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> g0<R> z8(@p7.e Iterable<U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        Objects.requireNonNull(other, "other is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return io.reactivex.rxjava3.plugins.a.R(new p4(this, other, zipper));
    }
}
