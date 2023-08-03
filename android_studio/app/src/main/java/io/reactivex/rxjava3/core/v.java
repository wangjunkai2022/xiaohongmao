package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.internal.operators.flowable.d1;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeToPublisher;
import io.reactivex.rxjava3.internal.operators.maybe.a1;
import io.reactivex.rxjava3.internal.operators.maybe.b1;
import io.reactivex.rxjava3.internal.operators.maybe.c1;
import io.reactivex.rxjava3.internal.operators.maybe.e1;
import io.reactivex.rxjava3.internal.operators.maybe.f1;
import io.reactivex.rxjava3.internal.operators.maybe.g1;
import io.reactivex.rxjava3.internal.operators.maybe.h1;
import io.reactivex.rxjava3.internal.operators.maybe.i1;
import io.reactivex.rxjava3.internal.operators.maybe.j1;
import io.reactivex.rxjava3.internal.operators.maybe.k1;
import io.reactivex.rxjava3.internal.operators.maybe.l1;
import io.reactivex.rxjava3.internal.operators.maybe.m1;
import io.reactivex.rxjava3.internal.operators.maybe.n1;
import io.reactivex.rxjava3.internal.operators.maybe.o1;
import io.reactivex.rxjava3.internal.operators.maybe.p1;
import io.reactivex.rxjava3.internal.operators.maybe.q1;
import io.reactivex.rxjava3.internal.operators.maybe.r1;
import io.reactivex.rxjava3.internal.operators.maybe.s1;
import io.reactivex.rxjava3.internal.operators.maybe.t1;
import io.reactivex.rxjava3.internal.operators.maybe.u1;
import io.reactivex.rxjava3.internal.operators.maybe.v1;
import io.reactivex.rxjava3.internal.operators.maybe.x0;
import io.reactivex.rxjava3.internal.operators.maybe.y0;
import io.reactivex.rxjava3.internal.operators.maybe.z0;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

/* compiled from: Maybe.java */
/* loaded from: classes4.dex */
public abstract class v<T> implements b0<T> {
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> A(@p7.e Iterable<? extends b0<? extends T>> sources) {
        return m.e3(sources).j1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> B(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return m.i3(sources).j1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> C(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int prefetch) {
        return m.i3(sources).l1(io.reactivex.rxjava3.internal.functions.a.k(), true, prefetch);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> D(@p7.e Iterable<? extends b0<? extends T>> sources) {
        return m.e3(sources).d1(MaybeToPublisher.instance(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> D0(@p7.e q7.a action) {
        Objects.requireNonNull(action, "action is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.i0(action));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> E(@p7.e Iterable<? extends b0<? extends T>> sources, int maxConcurrency) {
        return m.e3(sources).e1(MaybeToPublisher.instance(), false, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> E0(@p7.e Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.j0(callable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> E2(@p7.e b0<T> onSubscribe) {
        if (!(onSubscribe instanceof v)) {
            Objects.requireNonNull(onSubscribe, "onSubscribe is null");
            return io.reactivex.rxjava3.plugins.a.Q(new r1(onSubscribe));
        }
        throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> F(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return m.i3(sources).b1(MaybeToPublisher.instance());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> F0(@p7.e g completableSource) {
        Objects.requireNonNull(completableSource, "completableSource is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.k0(completableSource));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> G(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int maxConcurrency) {
        return m.i3(sources).c1(MaybeToPublisher.instance(), maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> G0(@p7.e CompletionStage<T> stage) {
        Objects.requireNonNull(stage, "stage is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.jdk8.o(stage));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, D> v<T> G2(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends b0<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup) {
        return H2(resourceSupplier, sourceSupplier, resourceCleanup, true);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> H(@p7.e Iterable<? extends b0<? extends T>> sources) {
        return m.e3(sources).d1(MaybeToPublisher.instance(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> H0(@p7.e Future<? extends T> future) {
        Objects.requireNonNull(future, "future is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.l0(future, 0L, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, D> v<T> H2(@p7.e q7.s<? extends D> resourceSupplier, @p7.e q7.o<? super D, ? extends b0<? extends T>> sourceSupplier, @p7.e q7.g<? super D> resourceCleanup, boolean eager) {
        Objects.requireNonNull(resourceSupplier, "resourceSupplier is null");
        Objects.requireNonNull(sourceSupplier, "sourceSupplier is null");
        Objects.requireNonNull(resourceCleanup, "resourceCleanup is null");
        return io.reactivex.rxjava3.plugins.a.Q(new t1(resourceSupplier, sourceSupplier, resourceCleanup, eager));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> I(@p7.e Iterable<? extends b0<? extends T>> sources, int maxConcurrency) {
        return m.e3(sources).e1(MaybeToPublisher.instance(), true, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> I0(@p7.e Future<? extends T> future, long timeout, @p7.e TimeUnit unit) {
        Objects.requireNonNull(future, "future is null");
        Objects.requireNonNull(unit, "unit is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.l0(future, timeout, unit));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> I2(@p7.e b0<T> source) {
        if (source instanceof v) {
            return io.reactivex.rxjava3.plugins.a.Q((v) source);
        }
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.Q(new r1(source));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> J(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return m.i3(sources).d1(MaybeToPublisher.instance(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> J0(@p7.e l0<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.observable.r0(source, 0L));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> J1(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2) {
        return K1(source1, source2, io.reactivex.rxjava3.internal.functions.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> v<R> J2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e b0<? extends T5> source5, @p7.e b0<? extends T6> source6, @p7.e b0<? extends T7> source7, @p7.e b0<? extends T8> source8, @p7.e b0<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> zipper) {
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
        return S2(io.reactivex.rxjava3.internal.functions.a.E(zipper), source1, source2, source3, source4, source5, source6, source7, source8, source9);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> K(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int maxConcurrency) {
        return m.i3(sources).e1(MaybeToPublisher.instance(), true, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> K0(@p7.e Optional<T> optional) {
        Objects.requireNonNull(optional, "optional is null");
        return (v) optional.map(t.f76148a).orElseGet(u.f76149a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> K1(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e q7.d<? super T, ? super T> isEqual) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(isEqual, "isEqual is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.maybe.w(source1, source2, isEqual));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> v<R> K2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e b0<? extends T5> source5, @p7.e b0<? extends T6> source6, @p7.e b0<? extends T7> source7, @p7.e b0<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.D(zipper), source1, source2, source3, source4, source5, source6, source7, source8);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static <T> v<T> L0(@p7.e org.reactivestreams.c<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.flowable.u0(source, 0L));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> v<R> L2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e b0<? extends T5> source5, @p7.e b0<? extends T6> source6, @p7.e b0<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.C(zipper), source1, source2, source3, source4, source5, source6, source7);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> M0(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.m0(run));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> v<R> M2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e b0<? extends T5> source5, @p7.e b0<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.B(zipper), source1, source2, source3, source4, source5, source6);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> N0(@p7.e v0<T> single) {
        Objects.requireNonNull(single, "single is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.n0(single));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> v<R> N2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e b0<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.A(zipper), source1, source2, source3, source4, source5);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> O0(@p7.e q7.s<? extends T> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.o0(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> v<R> O2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e b0<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.z(zipper), source1, source2, source3, source4);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> v<R> P2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e b0<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.y(zipper), source1, source2, source3);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> v<R> Q2(@p7.e b0<? extends T1> source1, @p7.e b0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return S2(io.reactivex.rxjava3.internal.functions.a.x(zipper), source1, source2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> R(@p7.e z<T> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.i(onSubscribe));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> v<R> R2(@p7.e Iterable<? extends b0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.Q(new v1(sources, zipper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> S0(T item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.u0(item));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T, R> v<R> S2(@p7.e q7.o<? super Object[], ? extends R> zipper, @p7.e b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return o0();
        }
        Objects.requireNonNull(zipper, "zipper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new u1(sources, zipper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> T(@p7.e q7.s<? extends b0<? extends T>> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.j(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> X0(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return e1(source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Y0(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return e1(source1, source2, source3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Z0(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3, @p7.e b0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return e1(source1, source2, source3, source4);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Z1(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.k(sources, io.reactivex.rxjava3.internal.functions.a.k(), false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> a1(@p7.e Iterable<? extends b0<? extends T>> sources) {
        return m.e3(sources).O2(io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> a2(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.k(sources, io.reactivex.rxjava3.internal.functions.a.k(), true));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> b1(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return c1(sources, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> c1(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int maxConcurrency) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.P(new d1(sources, io.reactivex.rxjava3.internal.functions.a.k(), false, maxConcurrency));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> d(@p7.e Iterable<? extends b0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.b(null, sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> d1(@p7.e b0<? extends b0<? extends T>> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.h0(source, io.reactivex.rxjava3.internal.functions.a.k()));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> v<T> e(@p7.e b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return o0();
        }
        if (sources.length == 1) {
            return I2(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.b(sources, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> e1(b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m.m2();
        }
        if (sources.length == 1) {
            return io.reactivex.rxjava3.plugins.a.P(new o1(sources[0]));
        }
        return io.reactivex.rxjava3.plugins.a.P(new y0(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> f1(@p7.e b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        return m.Y2(sources).O2(io.reactivex.rxjava3.internal.functions.a.k(), true, Math.max(1, sources.length));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> g1(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return f1(source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> h1(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return f1(source1, source2, source3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> i1(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3, @p7.e b0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return f1(source1, source2, source3, source4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> j1(@p7.e Iterable<? extends b0<? extends T>> sources) {
        return m.e3(sources).O2(io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> k1(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return l1(sources, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> l1(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int maxConcurrency) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.P(new d1(sources, io.reactivex.rxjava3.internal.functions.a.k(), true, maxConcurrency));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> n1() {
        return io.reactivex.rxjava3.plugins.a.Q(z0.f78828a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> o0() {
        return io.reactivex.rxjava3.plugins.a.Q(io.reactivex.rxjava3.internal.operators.maybe.v.f78785a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> p0(@p7.e Throwable throwable) {
        Objects.requireNonNull(throwable, "throwable is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.x(throwable));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> q(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return w(source1, source2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> v<T> q0(@p7.e q7.s<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.y(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> r(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return w(source1, source2, source3);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static v<Long> r2(long delay, @p7.e TimeUnit unit) {
        return s2(delay, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> s(@p7.e b0<? extends T> source1, @p7.e b0<? extends T> source2, @p7.e b0<? extends T> source3, @p7.e b0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return w(source1, source2, source3, source4);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static v<Long> s2(long delay, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new n1(Math.max(0L, delay), unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> t(@p7.e Iterable<? extends b0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.maybe.f(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> u(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources) {
        return v(sources, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> v(@p7.e org.reactivestreams.c<? extends b0<? extends T>> sources, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.e(sources, io.reactivex.rxjava3.internal.functions.a.k(), ErrorMode.IMMEDIATE, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> w(@p7.e b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m.m2();
        }
        if (sources.length == 1) {
            return io.reactivex.rxjava3.plugins.a.P(new o1(sources[0]));
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.maybe.d(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> x(@p7.e b0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return m.m2();
        }
        if (sources.length == 1) {
            return io.reactivex.rxjava3.plugins.a.P(new o1(sources[0]));
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.maybe.e(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> y(@p7.e b0<? extends T>... sources) {
        return m.Y2(sources).b1(MaybeToPublisher.instance());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> z(@p7.e b0<? extends T>... sources) {
        return m.Y2(sources).d1(MaybeToPublisher.instance(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> A0(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.maybe.e0(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> A1(@p7.e q7.o<? super m<Object>, ? extends org.reactivestreams.c<?>> handler) {
        return A2().n5(handler);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> A2() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.d) {
            return ((io.reactivex.rxjava3.internal.fuseable.d) this).c();
        }
        return io.reactivex.rxjava3.plugins.a.P(new o1(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> B0(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.m(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> B1() {
        return D1(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Future<T> B2() {
        return (Future) W1(new io.reactivex.rxjava3.internal.observers.i());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> C0(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.n(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> C1(long times) {
        return D1(times, io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> C2() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.f) {
            return ((io.reactivex.rxjava3.internal.fuseable.f) this).a();
        }
        return io.reactivex.rxjava3.plugins.a.R(new p1(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> D1(long times, @p7.e q7.r<? super Throwable> predicate) {
        return A2().I5(times, predicate).e6();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> D2() {
        return io.reactivex.rxjava3.plugins.a.S(new q1(this, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> E1(@p7.e q7.d<? super Integer, ? super Throwable> predicate) {
        return A2().J5(predicate).e6();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> F1(@p7.e q7.r<? super Throwable> predicate) {
        return D1(Long.MAX_VALUE, predicate);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> F2(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new s1(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> G1(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return D1(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.v(stop));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> H1(@p7.e q7.o<? super m<Throwable>, ? extends org.reactivestreams.c<?>> handler) {
        return A2().M5(handler).e6();
    }

    @p7.g("none")
    public final void I1(@p7.e y<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        b(new io.reactivex.rxjava3.internal.observers.r(observer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> L(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return s0(mapper);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> L1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(a.A1(other).p1(), A2());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a M(@p7.e q7.o<? super T, ? extends g> mapper) {
        return v0(mapper);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> M1(@p7.e b0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(I2(other).A2(), A2());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> N(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        return y0(mapper);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> N1(@p7.e v0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(p0.w2(other).n2(), A2());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> O(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return q(this, other);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> O1(@p7.e org.reactivestreams.c<T> other) {
        Objects.requireNonNull(other, "other is null");
        return A2().y6(other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> P(@p7.e Object item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.maybe.g(this, item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> P0() {
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.p0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> P1(@p7.e l0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return g0.i8(other).p1(C2());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Long> Q() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.maybe.h(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a Q0() {
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.maybe.r0(this));
    }

    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f Q1() {
        return T1(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> R0() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.maybe.t0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f R1(@p7.e q7.g<? super T> onSuccess) {
        return T1(onSuccess, io.reactivex.rxjava3.internal.functions.a.f76185f, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> S(@p7.e T defaultItem) {
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new q1(this, defaultItem));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f S1(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError) {
        return T1(onSuccess, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> T0(@p7.e a0<? extends R, ? super T> lift) {
        Objects.requireNonNull(lift, "lift is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.v0(this, lift));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f T1(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        return (io.reactivex.rxjava3.disposables.f) W1(new MaybeCallbackObserver(onSuccess, onError, onComplete));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> v<R> T2(@p7.e b0<? extends U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        Objects.requireNonNull(other, "other is null");
        return Q2(this, other, zipper);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<T> U(long time, @p7.e TimeUnit unit) {
        return W(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> U0(@p7.e q7.o<? super T, ? extends R> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.w0(this, mapper));
    }

    protected abstract void U1(@p7.e y<? super T> observer);

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> V(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return W(time, unit, scheduler, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> V0(@p7.e q7.o<? super T, Optional<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.jdk8.p(this, mapper));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> V1(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new f1(this, scheduler));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> W(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.k(this, Math.max(0L, time), unit, scheduler, delayError));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<d0<T>> W0() {
        return io.reactivex.rxjava3.plugins.a.S(new x0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <E extends y<? super T>> E W1(E observer) {
        b(observer);
        return observer;
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<T> X(long time, @p7.e TimeUnit unit, boolean delayError) {
        return W(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> X1(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.Q(new g1(this, other));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> v<T> Y(@p7.e org.reactivestreams.c<U> delayIndicator) {
        Objects.requireNonNull(delayIndicator, "delayIndicator is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.l(this, delayIndicator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> Y1(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.S(new h1(this, other));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<T> Z(long time, @p7.e TimeUnit unit) {
        return a0(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> a0(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return b0(m.S7(time, unit, scheduler));
    }

    @Override // io.reactivex.rxjava3.core.b0
    @p7.g("none")
    public final void b(@p7.e y<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        y<? super T> e02 = io.reactivex.rxjava3.plugins.a.e0(this, observer);
        Objects.requireNonNull(e02, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            U1(e02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> v<T> b0(@p7.e org.reactivestreams.c<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.m(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<T> b2(@p7.e b0<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.Q(new i1(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> c0(@p7.e q7.o<? super T, d0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.o(this, selector));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> v<T> c2(@p7.e org.reactivestreams.c<U> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.Q(new j1(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> d0(@p7.e q7.g<? super T> onAfterSuccess) {
        Objects.requireNonNull(onAfterSuccess, "onAfterSuccess is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.q(this, onAfterSuccess));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> d2() {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        b(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> e0(@p7.e q7.a onAfterTerminate) {
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, h4, h10, h11, aVar, onAfterTerminate, aVar));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> e2(boolean dispose) {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        if (dispose) {
            nVar.dispose();
        }
        b(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> f(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return e(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> f0(@p7.e q7.a onFinally) {
        Objects.requireNonNull(onFinally, "onFinally is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.r(this, onFinally));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> f2() {
        return i2(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.f
    public final T g() {
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        b(gVar);
        return (T) gVar.c();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> g0(@p7.e q7.a onComplete) {
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        Objects.requireNonNull(onComplete, "onComplete is null");
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, h4, h10, h11, onComplete, aVar, aVar));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> g2(@p7.e o0 scheduler) {
        return i2(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T h(@p7.e T defaultValue) {
        Objects.requireNonNull(defaultValue, "defaultValue is null");
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        b(gVar);
        return (T) gVar.d(defaultValue);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> h0(@p7.e q7.a onDispose) {
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, h4, h10, h11, aVar, aVar, onDispose));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> h2(@p7.e TimeUnit unit) {
        return i2(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.g("none")
    public final void i() {
        m(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76184e, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> i0(@p7.e q7.g<? super Throwable> onError) {
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        Objects.requireNonNull(onError, "onError is null");
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, h4, h10, onError, aVar, aVar, aVar));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> i2(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new k1(this, unit, scheduler, true));
    }

    @p7.g("none")
    public final void j(@p7.e y<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        io.reactivex.rxjava3.internal.observers.d dVar = new io.reactivex.rxjava3.internal.observers.d();
        observer.onSubscribe(dVar);
        b(dVar);
        dVar.b(observer);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> j0(@p7.e q7.b<? super T, ? super Throwable> onEvent) {
        Objects.requireNonNull(onEvent, "onEvent is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.s(this, onEvent));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<T> j2(long timeout, @p7.e TimeUnit unit) {
        return l2(timeout, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.g("none")
    public final void k(@p7.e q7.g<? super T> onSuccess) {
        m(onSuccess, io.reactivex.rxjava3.internal.functions.a.f76184e, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> k0(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, @p7.e q7.a onDispose) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.t(this, onSubscribe, onDispose));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<T> k2(long timeout, @p7.e TimeUnit unit, @p7.e b0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return m2(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), fallback);
    }

    @p7.g("none")
    public final void l(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError) {
        m(onSuccess, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> l0(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, onSubscribe, h4, h10, aVar, aVar, aVar));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> l2(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return n2(s2(timeout, unit, scheduler));
    }

    @p7.g("none")
    public final void m(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError, @p7.e q7.a onComplete) {
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        b(gVar);
        gVar.b(onSuccess, onError, onComplete);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> m0(@p7.e q7.g<? super T> onSuccess) {
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.Q(new e1(this, h4, onSuccess, h10, aVar, aVar, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> m1(@p7.e b0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return X0(this, other);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> m2(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e b0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return o2(s2(timeout, unit, scheduler), fallback);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> n() {
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.c(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> n0(@p7.e q7.a onTerminate) {
        Objects.requireNonNull(onTerminate, "onTerminate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.u(this, onTerminate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<T> n2(@p7.e b0<U> timeoutIndicator) {
        Objects.requireNonNull(timeoutIndicator, "timeoutIndicator is null");
        return io.reactivex.rxjava3.plugins.a.Q(new l1(this, timeoutIndicator, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<U> o(@p7.e Class<? extends U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return (v<U>) U0(io.reactivex.rxjava3.internal.functions.a.e(clazz));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<T> o1(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new a1(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<T> o2(@p7.e b0<U> timeoutIndicator, @p7.e b0<? extends T> fallback) {
        Objects.requireNonNull(timeoutIndicator, "timeoutIndicator is null");
        Objects.requireNonNull(fallback, "fallback is null");
        return io.reactivex.rxjava3.plugins.a.Q(new l1(this, timeoutIndicator, fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> p(@p7.e c0<? super T, ? extends R> transformer) {
        Objects.requireNonNull(transformer, "transformer is null");
        return I2(transformer.a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<U> p1(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return r0(io.reactivex.rxjava3.internal.functions.a.l(clazz)).o(clazz);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> v<T> p2(@p7.e org.reactivestreams.c<U> timeoutIndicator) {
        Objects.requireNonNull(timeoutIndicator, "timeoutIndicator is null");
        return io.reactivex.rxjava3.plugins.a.Q(new m1(this, timeoutIndicator, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> q1() {
        return r1(io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public final <U> v<T> q2(@p7.e org.reactivestreams.c<U> timeoutIndicator, @p7.e b0<? extends T> fallback) {
        Objects.requireNonNull(timeoutIndicator, "timeoutIndicator is null");
        Objects.requireNonNull(fallback, "fallback is null");
        return io.reactivex.rxjava3.plugins.a.Q(new m1(this, timeoutIndicator, fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> r0(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.z(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> r1(@p7.e q7.r<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new b1(this, predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> s0(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.h0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> s1(@p7.e q7.o<? super Throwable, ? extends b0<? extends T>> fallbackSupplier) {
        Objects.requireNonNull(fallbackSupplier, "fallbackSupplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new c1(this, fallbackSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> v<R> t0(@p7.e q7.o<? super T, ? extends b0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.b0(this, mapper, combiner));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> t1(@p7.e b0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return s1(io.reactivex.rxjava3.internal.functions.a.n(fallback));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> t2() {
        return w2(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> u0(@p7.e q7.o<? super T, ? extends b0<? extends R>> onSuccessMapper, @p7.e q7.o<? super Throwable, ? extends b0<? extends R>> onErrorMapper, @p7.e q7.s<? extends b0<? extends R>> onCompleteSupplier) {
        Objects.requireNonNull(onSuccessMapper, "onSuccessMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        Objects.requireNonNull(onCompleteSupplier, "onCompleteSupplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.f0(this, onSuccessMapper, onErrorMapper, onCompleteSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> u1(@p7.e q7.o<? super Throwable, ? extends T> itemSupplier) {
        Objects.requireNonNull(itemSupplier, "itemSupplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.d1(this, itemSupplier));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> u2(@p7.e o0 scheduler) {
        return w2(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a v0(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.maybe.c0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> v1(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return u1(io.reactivex.rxjava3.internal.functions.a.n(item));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> v2(@p7.e TimeUnit unit) {
        return w2(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> w0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.o(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> w1() {
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.p(this));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final v<io.reactivex.rxjava3.schedulers.d<T>> w2(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.Q(new k1(this, unit, scheduler, false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> x0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.p(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> x1() {
        return y1(Long.MAX_VALUE);
    }

    @p7.c
    @p7.g("none")
    public final <R> R x2(@p7.e w<T, ? extends R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> y0(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.g0(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> y1(long times) {
        return A2().l5(times);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> y2() {
        return (CompletionStage) W1(new io.reactivex.rxjava3.internal.jdk8.b(false, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> z0(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.maybe.d0(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> z1(@p7.e q7.e stop) {
        return A2().m5(stop);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> z2(@p7.f T defaultItem) {
        return (CompletionStage) W1(new io.reactivex.rxjava3.internal.jdk8.b(true, defaultItem));
    }
}
