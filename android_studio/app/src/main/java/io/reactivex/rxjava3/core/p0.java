package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.internal.observers.BiConsumerSingleObserver;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.flowable.u3;
import io.reactivex.rxjava3.internal.operators.maybe.q1;
import io.reactivex.rxjava3.internal.operators.observable.h3;
import io.reactivex.rxjava3.internal.operators.single.a1;
import io.reactivex.rxjava3.internal.operators.single.b1;
import io.reactivex.rxjava3.internal.operators.single.c1;
import io.reactivex.rxjava3.internal.operators.single.d1;
import io.reactivex.rxjava3.internal.operators.single.e1;
import io.reactivex.rxjava3.internal.operators.single.f1;
import io.reactivex.rxjava3.internal.operators.single.x0;
import io.reactivex.rxjava3.internal.operators.single.y0;
import io.reactivex.rxjava3.internal.operators.single.z0;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

/* compiled from: Single.java */
/* loaded from: classes4.dex */
public abstract class p0<T> implements v0<T> {
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> A(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).o1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> p0<R> A2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e v0<? extends T5> source5, @p7.e v0<? extends T6> source6, @p7.e q7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.B(zipper), source1, source2, source3, source4, source5, source6);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> B(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        return m.i3(sources).o1(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, R> p0<R> B2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e v0<? extends T5> source5, @p7.e q7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.A(zipper), source1, source2, source3, source4, source5);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> C(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources, int prefetch) {
        return m.i3(sources).q1(io.reactivex.rxjava3.internal.functions.a.k(), true, prefetch);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> C0(@p7.e Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.g0(callable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<Boolean> C1(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.w(source1, source2));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, R> p0<R> C2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e q7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.z(zipper), source1, source2, source3, source4);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> D(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).d1(io.reactivex.rxjava3.internal.operators.single.l0.c(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> D0(@p7.e CompletionStage<T> stage) {
        Objects.requireNonNull(stage, "stage is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.jdk8.g0(stage));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, R> p0<R> D2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e q7.h<? super T1, ? super T2, ? super T3, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.y(zipper), source1, source2, source3);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> E(@p7.e Iterable<? extends v0<? extends T>> sources, int maxConcurrency) {
        return m.e3(sources).e1(io.reactivex.rxjava3.internal.operators.single.l0.c(), false, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> E0(@p7.e Future<? extends T> future) {
        return r2(m.c3(future));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, R> p0<R> E2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e q7.c<? super T1, ? super T2, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.x(zipper), source1, source2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> F(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        return m.i3(sources).b1(io.reactivex.rxjava3.internal.operators.single.l0.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> F0(@p7.e Future<? extends T> future, long timeout, @p7.e TimeUnit unit) {
        return r2(m.d3(future, timeout, unit));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, R> p0<R> F2(@p7.e Iterable<? extends v0<? extends T>> sources, @p7.e q7.o<? super Object[], ? extends R> zipper) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.S(new f1(sources, zipper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> G(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources, int maxConcurrency) {
        return m.i3(sources).c1(io.reactivex.rxjava3.internal.operators.single.l0.c(), maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> G0(@p7.e b0<T> maybe) {
        Objects.requireNonNull(maybe, "maybe is null");
        return io.reactivex.rxjava3.plugins.a.S(new q1(maybe, null));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T, R> p0<R> G2(@p7.e q7.o<? super Object[], ? extends R> zipper, @p7.e v0<? extends T>... sources) {
        Objects.requireNonNull(zipper, "zipper is null");
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return o0(new NoSuchElementException());
        }
        return io.reactivex.rxjava3.plugins.a.S(new e1(sources, zipper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> H(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).d1(io.reactivex.rxjava3.internal.operators.single.l0.c(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> H0(@p7.e b0<T> maybe, @p7.e T defaultItem) {
        Objects.requireNonNull(maybe, "maybe is null");
        Objects.requireNonNull(defaultItem, "defaultItem is null");
        return io.reactivex.rxjava3.plugins.a.S(new q1(maybe, defaultItem));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> I(@p7.e Iterable<? extends v0<? extends T>> sources, int maxConcurrency) {
        return m.e3(sources).e1(io.reactivex.rxjava3.internal.operators.single.l0.c(), true, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> I0(@p7.e l0<? extends T> observable) {
        Objects.requireNonNull(observable, "observable is null");
        return io.reactivex.rxjava3.plugins.a.S(new h3(observable, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> J(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        return m.i3(sources).d1(io.reactivex.rxjava3.internal.operators.single.l0.c(), true);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static <T> p0<T> J0(@p7.e org.reactivestreams.c<? extends T> publisher) {
        Objects.requireNonNull(publisher, "publisher is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.h0(publisher));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> K(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources, int maxConcurrency) {
        return m.i3(sources).e1(io.reactivex.rxjava3.internal.operators.single.l0.c(), true, maxConcurrency, 1);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> K0(@p7.e q7.s<? extends T> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.i0(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> N0(T item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.m0(item));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> P1(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.m(sources, io.reactivex.rxjava3.internal.functions.a.k(), false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> Q1(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.m(sources, io.reactivex.rxjava3.internal.functions.a.k(), true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> R(@p7.e t0<T> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.d(source));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> S(@p7.e q7.s<? extends v0<? extends T>> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.e(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> S0(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return m.Y2(source1, source2).Q2(io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> T0(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return m.Y2(source1, source2, source3).Q2(io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> U0(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3, @p7.e v0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return m.Y2(source1, source2, source3, source4).Q2(io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> V0(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).P2(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> W0(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.f1(sources, io.reactivex.rxjava3.internal.functions.a.k(), false, Integer.MAX_VALUE));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> X0(@p7.e v0<? extends v0<? extends T>> source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.y(source, io.reactivex.rxjava3.internal.functions.a.k()));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> Y0(v0<? extends T>... sources) {
        return m.Y2(sources).Q2(io.reactivex.rxjava3.internal.functions.a.k(), false, Math.max(1, sources.length));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> Z0(@p7.e v0<? extends T>... sources) {
        return m.Y2(sources).Q2(io.reactivex.rxjava3.internal.functions.a.k(), true, Math.max(1, sources.length));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> a1(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return m.Y2(source1, source2).Q2(io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> b1(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return m.Y2(source1, source2, source3).Q2(io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> c1(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3, @p7.e v0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return m.Y2(source1, source2, source3, source4).Q2(io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> d1(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).Q2(io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> e(@p7.e Iterable<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.a(null, sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> e1(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.flowable.f1(sources, io.reactivex.rxjava3.internal.functions.a.k(), true, Integer.MAX_VALUE));
    }

    private p0<T> e2(final long timeout, final TimeUnit unit, final o0 scheduler, final v0<? extends T> fallback) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new y0(this, timeout, unit, scheduler, fallback));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> p0<T> f(@p7.e v0<? extends T>... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return p0(io.reactivex.rxjava3.internal.operators.single.l0.a());
        }
        if (sources.length == 1) {
            return w2(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.a(sources, null));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static p0<Long> f2(long delay, @p7.e TimeUnit unit) {
        return g2(delay, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> g1() {
        return io.reactivex.rxjava3.plugins.a.S(io.reactivex.rxjava3.internal.operators.single.q0.f80898a);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static p0<Long> g2(long delay, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new z0(delay, unit, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> o0(@p7.e Throwable throwable) {
        Objects.requireNonNull(throwable, "throwable is null");
        return p0(io.reactivex.rxjava3.internal.functions.a.o(throwable));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> p(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return m.Y2(source1, source2).p1(io.reactivex.rxjava3.internal.functions.a.k(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> p0(@p7.e q7.s<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.x(supplier));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> q(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        return m.Y2(source1, source2, source3).p1(io.reactivex.rxjava3.internal.functions.a.k(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> r(@p7.e v0<? extends T> source1, @p7.e v0<? extends T> source2, @p7.e v0<? extends T> source3, @p7.e v0<? extends T> source4) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        return m.Y2(source1, source2, source3, source4).p1(io.reactivex.rxjava3.internal.functions.a.k(), false);
    }

    @p7.e
    private static <T> p0<T> r2(@p7.e m<T> source) {
        return io.reactivex.rxjava3.plugins.a.S(new u3(source, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> s(@p7.e Iterable<? extends v0<? extends T>> sources) {
        return m.e3(sources).p1(io.reactivex.rxjava3.internal.functions.a.k(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> s2(@p7.e v0<T> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        if (!(onSubscribe instanceof p0)) {
            return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.j0(onSubscribe));
        }
        throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> t(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources) {
        return u(sources, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static <T> m<T> u(@p7.e org.reactivestreams.c<? extends v0<? extends T>> sources, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.g(sources, io.reactivex.rxjava3.internal.functions.a.k(), ErrorMode.IMMEDIATE, prefetch));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, U> p0<T> u2(@p7.e q7.s<U> resourceSupplier, @p7.e q7.o<? super U, ? extends v0<? extends T>> sourceSupplier, @p7.e q7.g<? super U> resourceCleanup) {
        return v2(resourceSupplier, sourceSupplier, resourceCleanup, true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> g0<T> v(@p7.e l0<? extends v0<? extends T>> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.s(sources, io.reactivex.rxjava3.internal.functions.a.k(), ErrorMode.IMMEDIATE, 2));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T, U> p0<T> v2(@p7.e q7.s<U> resourceSupplier, @p7.e q7.o<? super U, ? extends v0<? extends T>> sourceSupplier, @p7.e q7.g<? super U> resourceCleanup, boolean eager) {
        Objects.requireNonNull(resourceSupplier, "resourceSupplier is null");
        Objects.requireNonNull(sourceSupplier, "sourceSupplier is null");
        Objects.requireNonNull(resourceCleanup, "resourceCleanup is null");
        return io.reactivex.rxjava3.plugins.a.S(new d1(resourceSupplier, sourceSupplier, resourceCleanup, eager));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> w(@p7.e v0<? extends T>... sources) {
        return m.Y2(sources).p1(io.reactivex.rxjava3.internal.functions.a.k(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> p0<T> w2(@p7.e v0<T> source) {
        Objects.requireNonNull(source, "source is null");
        if (source instanceof p0) {
            return io.reactivex.rxjava3.plugins.a.S((p0) source);
        }
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.j0(source));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> x(@p7.e v0<? extends T>... sources) {
        return m.Y2(sources).p1(io.reactivex.rxjava3.internal.functions.a.k(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> p0<R> x2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e v0<? extends T5> source5, @p7.e v0<? extends T6> source6, @p7.e v0<? extends T7> source7, @p7.e v0<? extends T8> source8, @p7.e v0<? extends T9> source9, @p7.e q7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> zipper) {
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
        return G2(io.reactivex.rxjava3.internal.functions.a.E(zipper), source1, source2, source3, source4, source5, source6, source7, source8, source9);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> y(@p7.e v0<? extends T>... sources) {
        return m.Y2(sources).b1(io.reactivex.rxjava3.internal.operators.single.l0.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> p0<R> y2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e v0<? extends T5> source5, @p7.e v0<? extends T6> source6, @p7.e v0<? extends T7> source7, @p7.e v0<? extends T8> source8, @p7.e q7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(source8, "source8 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.D(zipper), source1, source2, source3, source4, source5, source6, source7, source8);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static <T> m<T> z(@p7.e v0<? extends T>... sources) {
        return m.Y2(sources).d1(io.reactivex.rxjava3.internal.operators.single.l0.c(), true);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> p0<R> z2(@p7.e v0<? extends T1> source1, @p7.e v0<? extends T2> source2, @p7.e v0<? extends T3> source3, @p7.e v0<? extends T4> source4, @p7.e v0<? extends T5> source5, @p7.e v0<? extends T6> source6, @p7.e v0<? extends T7> source7, @p7.e q7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> zipper) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        Objects.requireNonNull(source3, "source3 is null");
        Objects.requireNonNull(source4, "source4 is null");
        Objects.requireNonNull(source5, "source5 is null");
        Objects.requireNonNull(source6, "source6 is null");
        Objects.requireNonNull(source7, "source7 is null");
        Objects.requireNonNull(zipper, "zipper is null");
        return G2(io.reactivex.rxjava3.internal.functions.a.C(zipper), source1, source2, source3, source4, source5, source6, source7);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> A0(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.jdk8.e0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> A1(@p7.e q7.o<? super m<Throwable>, ? extends org.reactivestreams.c<?>> handler) {
        return r2(n2().M5(handler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> B0(@p7.e q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.jdk8.f0(this, mapper));
    }

    @p7.g("none")
    public final void B1(@p7.e s0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        d(new io.reactivex.rxjava3.internal.observers.s(observer));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> D1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(a.A1(other).p1(), n2());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> E1(@p7.e b0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(v.I2(other).A2(), n2());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> F1(@p7.e v0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(w2(other).n2(), n2());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> G1(@p7.e org.reactivestreams.c<T> other) {
        Objects.requireNonNull(other, "other is null");
        return n2().y6(other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> H1(@p7.e l0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return g0.i8(other).p1(q2());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> p0<R> H2(@p7.e v0<U> other, @p7.e q7.c<? super T, ? super U, ? extends R> zipper) {
        return E2(this, other, zipper);
    }

    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f I1() {
        return L1(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76185f);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f J1(@p7.e q7.b<? super T, ? super Throwable> onCallback) {
        Objects.requireNonNull(onCallback, "onCallback is null");
        BiConsumerSingleObserver biConsumerSingleObserver = new BiConsumerSingleObserver(onCallback);
        d(biConsumerSingleObserver);
        return biConsumerSingleObserver;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f K1(@p7.e q7.g<? super T> onSuccess) {
        return L1(onSuccess, io.reactivex.rxjava3.internal.functions.a.f76185f);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> L(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.y(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> L0() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.k0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f L1(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        Objects.requireNonNull(onError, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(onSuccess, onError);
        d(consumerSingleObserver);
        return consumerSingleObserver;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a M(@p7.e q7.o<? super T, ? extends g> mapper) {
        return u0(mapper);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a M0() {
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.v(this));
    }

    protected abstract void M1(@p7.e s0<? super T> observer);

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> N(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        return v0(mapper);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> N1(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.v0(this, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> O(@p7.e v0<? extends T> other) {
        return p(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> O0(@p7.e u0<? extends R, ? super T> lift) {
        Objects.requireNonNull(lift, "lift is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.n0(this, lift));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <E extends s0<? super T>> E O1(E observer) {
        d(observer);
        return observer;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> P(@p7.e Object item) {
        return Q(item, io.reactivex.rxjava3.internal.functions.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> P0(@p7.e q7.o<? super T, ? extends R> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.o0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<Boolean> Q(@p7.e Object item, @p7.e q7.d<Object, Object> comparer) {
        Objects.requireNonNull(item, "item is null");
        Objects.requireNonNull(comparer, "comparer is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.c(this, item, comparer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> Q0(@p7.e q7.o<? super T, Optional<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.jdk8.h0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<d0<T>> R0() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.p0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> R1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return T1(new io.reactivex.rxjava3.internal.operators.completable.q0(other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <E> p0<T> S1(@p7.e v0<? extends E> other) {
        Objects.requireNonNull(other, "other is null");
        return T1(new a1(other));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<T> T(long time, @p7.e TimeUnit unit) {
        return V(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <E> p0<T> T1(@p7.e org.reactivestreams.c<E> other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.w0(this, other));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> U(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return V(time, unit, scheduler, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> U1() {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        d(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> V(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.f(this, time, unit, scheduler, delayError));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<T> V1(boolean dispose) {
        io.reactivex.rxjava3.observers.n<T> nVar = new io.reactivex.rxjava3.observers.n<>();
        if (dispose) {
            nVar.dispose();
        }
        d(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<T> W(long time, @p7.e TimeUnit unit, boolean delayError) {
        return V(time, unit, io.reactivex.rxjava3.schedulers.b.a(), delayError);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> W1() {
        return Z1(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<T> X(long time, @p7.e TimeUnit unit) {
        return Y(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> X1(@p7.e o0 scheduler) {
        return Z1(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> Y(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return a0(g0.l7(time, unit, scheduler));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> Y1(@p7.e TimeUnit unit) {
        return Z1(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> Z(@p7.e g subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.g(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> Z1(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new x0(this, unit, scheduler, true));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> p0<T> a0(@p7.e l0<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.h(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<T> a2(long timeout, @p7.e TimeUnit unit) {
        return e2(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), null);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> p0<T> b0(@p7.e v0<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.j(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> b2(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return e2(timeout, unit, scheduler, null);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> p0<T> c0(@p7.e org.reactivestreams.c<U> subscriptionIndicator) {
        Objects.requireNonNull(subscriptionIndicator, "subscriptionIndicator is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.i(this, subscriptionIndicator));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> c2(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e v0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return e2(timeout, unit, scheduler, fallback);
    }

    @Override // io.reactivex.rxjava3.core.v0
    @p7.g("none")
    public final void d(@p7.e s0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        s0<? super T> g02 = io.reactivex.rxjava3.plugins.a.g0(this, observer);
        Objects.requireNonNull(g02, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            M1(g02);
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
    @p7.g("none")
    @p7.e
    public final <R> v<R> d0(@p7.e q7.o<? super T, d0<R>> selector) {
        Objects.requireNonNull(selector, "selector is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.single.k(this, selector));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<T> d2(long timeout, @p7.e TimeUnit unit, @p7.e v0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return e2(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), fallback);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> e0(@p7.e q7.g<? super T> onAfterSuccess) {
        Objects.requireNonNull(onAfterSuccess, "onAfterSuccess is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.m(this, onAfterSuccess));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> f0(@p7.e q7.a onAfterTerminate) {
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.n(this, onAfterTerminate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> f1(@p7.e v0<? extends T> other) {
        return S0(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> g(@p7.e v0<? extends T> other) {
        Objects.requireNonNull(other, "other is null");
        return f(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> g0(@p7.e q7.a onFinally) {
        Objects.requireNonNull(onFinally, "onFinally is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.o(this, onFinally));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final T h() {
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        d(gVar);
        return (T) gVar.c();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> h0(@p7.e q7.a onDispose) {
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.p(this, onDispose));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> h1(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.r0(this, scheduler));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> h2() {
        return k2(TimeUnit.MILLISECONDS, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.g("none")
    public final void i() {
        l(io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76184e);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> i0(@p7.e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onError, "onError is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.q(this, onError));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> v<U> i1(@p7.e Class<U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return q0(io.reactivex.rxjava3.internal.functions.a.l(clazz)).o(clazz);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> i2(@p7.e o0 scheduler) {
        return k2(TimeUnit.MILLISECONDS, scheduler);
    }

    @p7.g("none")
    public final void j(@p7.e s0<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        io.reactivex.rxjava3.internal.observers.d dVar = new io.reactivex.rxjava3.internal.observers.d();
        observer.onSubscribe(dVar);
        d(dVar);
        dVar.c(observer);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> j0(@p7.e q7.b<? super T, ? super Throwable> onEvent) {
        Objects.requireNonNull(onEvent, "onEvent is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.r(this, onEvent));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> j1() {
        return k1(io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> j2(@p7.e TimeUnit unit) {
        return k2(unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.g("none")
    public final void k(@p7.e q7.g<? super T> onSuccess) {
        l(onSuccess, io.reactivex.rxjava3.internal.functions.a.f76184e);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> k0(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, @p7.e q7.a onDispose) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.s(this, onSubscribe, onDispose));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> k1(@p7.e q7.r<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.single.s0(this, predicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<io.reactivex.rxjava3.schedulers.d<T>> k2(@p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new x0(this, unit, scheduler, false));
    }

    @p7.g("none")
    public final void l(@p7.e q7.g<? super T> onSuccess, @p7.e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        Objects.requireNonNull(onError, "onError is null");
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        d(gVar);
        gVar.b(onSuccess, onError, io.reactivex.rxjava3.internal.functions.a.f76182c);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> l0(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.t(this, onSubscribe));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> l1(@p7.e q7.o<? super Throwable, ? extends v0<? extends T>> fallbackSupplier) {
        Objects.requireNonNull(fallbackSupplier, "fallbackSupplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.u0(this, fallbackSupplier));
    }

    @p7.c
    @p7.g("none")
    public final <R> R l2(@p7.e q0<T, ? extends R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> m() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.b(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> m0(@p7.e q7.g<? super T> onSuccess) {
        Objects.requireNonNull(onSuccess, "onSuccess is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.u(this, onSuccess));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> m1(@p7.e v0<? extends T> fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return l1(io.reactivex.rxjava3.internal.functions.a.n(fallback));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final CompletionStage<T> m2() {
        return (CompletionStage) O1(new io.reactivex.rxjava3.internal.jdk8.b(false, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> p0<U> n(@p7.e Class<? extends U> clazz) {
        Objects.requireNonNull(clazz, "clazz is null");
        return (p0<U>) P0(io.reactivex.rxjava3.internal.functions.a.e(clazz));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> n0(@p7.e q7.a onTerminate) {
        Objects.requireNonNull(onTerminate, "onTerminate is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.v(this, onTerminate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> n1(@p7.e q7.o<Throwable, ? extends T> itemSupplier) {
        Objects.requireNonNull(itemSupplier, "itemSupplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.t0(this, itemSupplier, null));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> n2() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.d) {
            return ((io.reactivex.rxjava3.internal.fuseable.d) this).c();
        }
        return io.reactivex.rxjava3.plugins.a.P(new a1(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> o(@p7.e w0<? super T, ? extends R> transformer) {
        Objects.requireNonNull(transformer, "transformer is null");
        return w2(transformer.a(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> o1(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.t0(this, null, item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Future<T> o2() {
        return (Future) O1(new io.reactivex.rxjava3.internal.observers.i());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> p1() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.l(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> p2() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.e) {
            return ((io.reactivex.rxjava3.internal.fuseable.e) this).b();
        }
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.n0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final v<T> q0(@p7.e q7.r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.a0(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> q1() {
        return n2().k5();
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final g0<T> q2() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.f) {
            return ((io.reactivex.rxjava3.internal.fuseable.f) this).a();
        }
        return io.reactivex.rxjava3.plugins.a.R(new b1(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> r0(@p7.e q7.o<? super T, ? extends v0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.y(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> r1(long times) {
        return n2().l5(times);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U, R> p0<R> s0(@p7.e q7.o<? super T, ? extends v0<? extends U>> mapper, @p7.e q7.c<? super T, ? super U, ? extends R> combiner) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(combiner, "combiner is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.z(this, mapper, combiner));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> s1(@p7.e q7.e stop) {
        return n2().m5(stop);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> p0<R> t0(@p7.e q7.o<? super T, ? extends v0<? extends R>> onSuccessMapper, @p7.e q7.o<? super Throwable, ? extends v0<? extends R>> onErrorMapper) {
        Objects.requireNonNull(onSuccessMapper, "onSuccessMapper is null");
        Objects.requireNonNull(onErrorMapper, "onErrorMapper is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.e0(this, onSuccessMapper, onErrorMapper));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final m<T> t1(@p7.e q7.o<? super m<Object>, ? extends org.reactivestreams.c<?>> handler) {
        return n2().n5(handler);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final p0<T> t2(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.S(new c1(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a u0(@p7.e q7.o<? super T, ? extends g> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.single.a0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> u1() {
        return r2(n2().G5());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> v<R> v0(@p7.e q7.o<? super T, ? extends b0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.single.d0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> v1(long times) {
        return r2(n2().H5(times));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <R> g0<R> w0(@p7.e q7.o<? super T, ? extends l0<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.x(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> w1(long times, @p7.e q7.r<? super Throwable> predicate) {
        return r2(n2().I5(times, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <R> m<R> x0(@p7.e q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.single.f0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> x1(@p7.e q7.d<? super Integer, ? super Throwable> predicate) {
        return r2(n2().J5(predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <U> m<U> y0(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.single.b0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> y1(@p7.e q7.r<? super Throwable> predicate) {
        return r2(n2().K5(predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <U> g0<U> z0(@p7.e q7.o<? super T, ? extends Iterable<? extends U>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.single.c0(this, mapper));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final p0<T> z1(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return w1(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.v(stop));
    }
}
