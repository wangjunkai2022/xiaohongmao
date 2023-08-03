package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Completable.java */
/* loaded from: classes4.dex */
public abstract class a implements g {
    @p7.c
    @p7.g("none")
    @p7.e
    public static a A(@p7.e Iterable<? extends g> sources) {
        return m.e3(sources).V0(io.reactivex.rxjava3.internal.functions.a.k());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a A1(@p7.e g source) {
        Objects.requireNonNull(source, "source is null");
        if (source instanceof a) {
            return io.reactivex.rxjava3.plugins.a.O((a) source);
        }
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.x(source));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a B(@p7.e org.reactivestreams.c<? extends g> sources) {
        return C(sources, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a C(@p7.e org.reactivestreams.c<? extends g> sources, int prefetch) {
        return m.i3(sources).X0(io.reactivex.rxjava3.internal.functions.a.k(), true, prefetch);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a E(@p7.e e source) {
        Objects.requireNonNull(source, "source is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.g(source));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a F(@p7.e q7.s<? extends g> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.h(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static p0<Boolean> P0(@p7.e g source1, @p7.e g source2) {
        Objects.requireNonNull(source1, "source1 is null");
        Objects.requireNonNull(source2, "source2 is null");
        return p0(source1, source2).l(p0.N0(Boolean.TRUE));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    private a S(final q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, final q7.g<? super Throwable> onError, final q7.a onComplete, final q7.a onTerminate, final q7.a onAfterTerminate, final q7.a onDispose) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        Objects.requireNonNull(onTerminate, "onTerminate is null");
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        Objects.requireNonNull(onDispose, "onDispose is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.k0(this, onSubscribe, onError, onComplete, onTerminate, onAfterTerminate, onDispose));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a V(@p7.e Throwable throwable) {
        Objects.requireNonNull(throwable, "throwable is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.o(throwable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a W(@p7.e q7.s<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.p(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a X(@p7.e q7.a action) {
        Objects.requireNonNull(action, "action is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.q(action));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a Y(@p7.e Callable<?> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.r(callable));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a Z(@p7.e CompletionStage<?> stage) {
        Objects.requireNonNull(stage, "stage is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.jdk8.a(stage));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a a0(@p7.e Future<?> future) {
        Objects.requireNonNull(future, "future is null");
        return X(io.reactivex.rxjava3.internal.functions.a.j(future));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> a b0(@p7.e b0<T> maybe) {
        Objects.requireNonNull(maybe, "maybe is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.maybe.r0(maybe));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static a b1(@p7.e org.reactivestreams.c<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.i(sources, io.reactivex.rxjava3.internal.functions.a.k(), false));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> a c0(@p7.e l0<T> observable) {
        Objects.requireNonNull(observable, "observable is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.s(observable));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static a c1(@p7.e org.reactivestreams.c<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.mixed.i(sources, io.reactivex.rxjava3.internal.functions.a.k(), true));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static <T> a d0(@p7.e org.reactivestreams.c<T> publisher) {
        Objects.requireNonNull(publisher, "publisher is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.t(publisher));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a e(@p7.e Iterable<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.a(null, sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a e0(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.u(run));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static a f(@p7.e g... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return t();
        }
        if (sources.length == 1) {
            return A1(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.a(sources, null));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <T> a f0(@p7.e v0<T> single) {
        Objects.requireNonNull(single, "single is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.v(single));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a g0(@p7.e q7.s<?> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.w(supplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a k0(@p7.e Iterable<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.f0(sources));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    private a k1(long timeout, TimeUnit unit, o0 scheduler, g fallback) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.o0(this, timeout, unit, scheduler, fallback));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static a l0(@p7.e org.reactivestreams.c<? extends g> sources) {
        return n0(sources, Integer.MAX_VALUE, false);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public static a l1(long delay, @p7.e TimeUnit unit) {
        return m1(delay, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a m0(@p7.e org.reactivestreams.c<? extends g> sources, int maxConcurrency) {
        return n0(sources, maxConcurrency, false);
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public static a m1(long delay, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.p0(delay, unit, scheduler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    private static a n0(@p7.e org.reactivestreams.c<? extends g> sources, int maxConcurrency, boolean delayErrors) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.b0(sources, maxConcurrency, delayErrors));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static a o0(@p7.e g... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return t();
        }
        if (sources.length == 1) {
            return A1(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.c0(sources));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static a p0(@p7.e g... sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.d0(sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a q0(@p7.e Iterable<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.e0(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @p7.g("none")
    @p7.e
    public static a r0(@p7.e org.reactivestreams.c<? extends g> sources) {
        return n0(sources, Integer.MAX_VALUE, true);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a s0(@p7.e org.reactivestreams.c<? extends g> sources, int maxConcurrency) {
        return n0(sources, maxConcurrency, true);
    }

    private static NullPointerException s1(Throwable ex) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(ex);
        return nullPointerException;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a t() {
        return io.reactivex.rxjava3.plugins.a.O(io.reactivex.rxjava3.internal.operators.completable.n.f76682a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a u0() {
        return io.reactivex.rxjava3.plugins.a.O(io.reactivex.rxjava3.internal.operators.completable.g0.f76612a);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a v(@p7.e Iterable<? extends g> sources) {
        Objects.requireNonNull(sources, "sources is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.f(sources));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a w(@p7.e org.reactivestreams.c<? extends g> sources) {
        return x(sources, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static a w1(@p7.e g onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        if (!(onSubscribe instanceof a)) {
            return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.x(onSubscribe));
        }
        throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public static a x(@p7.e org.reactivestreams.c<? extends g> sources, int prefetch) {
        Objects.requireNonNull(sources, "sources is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.d(sources, prefetch));
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static a y(@p7.e g... sources) {
        Objects.requireNonNull(sources, "sources is null");
        if (sources.length == 0) {
            return t();
        }
        if (sources.length == 1) {
            return A1(sources[0]);
        }
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.e(sources));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <R> a y1(@p7.e q7.s<R> resourceSupplier, @p7.e q7.o<? super R, ? extends g> sourceSupplier, @p7.e q7.g<? super R> resourceCleanup) {
        return z1(resourceSupplier, sourceSupplier, resourceCleanup, true);
    }

    @p7.c
    @SafeVarargs
    @p7.g("none")
    @p7.e
    public static a z(@p7.e g... sources) {
        return m.Y2(sources).X0(io.reactivex.rxjava3.internal.functions.a.k(), true, 2);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public static <R> a z1(@p7.e q7.s<R> resourceSupplier, @p7.e q7.o<? super R, ? extends g> sourceSupplier, @p7.e q7.g<? super R> resourceCleanup, boolean eager) {
        Objects.requireNonNull(resourceSupplier, "resourceSupplier is null");
        Objects.requireNonNull(sourceSupplier, "sourceSupplier is null");
        Objects.requireNonNull(resourceCleanup, "resourceCleanup is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.t0(resourceSupplier, sourceSupplier, resourceCleanup, eager));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> v<T> A0(@p7.e q7.o<? super Throwable, ? extends T> itemSupplier) {
        Objects.requireNonNull(itemSupplier, "itemSupplier is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.completable.j0(this, itemSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> v<T> B0(@p7.e T item) {
        Objects.requireNonNull(item, "item is null");
        return A0(io.reactivex.rxjava3.internal.functions.a.n(item));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a C0() {
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.j(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a D(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.b(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a D0() {
        return d0(p1().k5());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a E0(long times) {
        return d0(p1().l5(times));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a F0(@p7.e q7.e stop) {
        return d0(p1().m5(stop));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final a G(long time, @p7.e TimeUnit unit) {
        return I(time, unit, io.reactivex.rxjava3.schedulers.b.a(), false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a G0(@p7.e q7.o<? super m<Object>, ? extends org.reactivestreams.c<?>> handler) {
        return d0(p1().n5(handler));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a H(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return I(time, unit, scheduler, false);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a H0() {
        return d0(p1().G5());
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a I(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler, boolean delayError) {
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.i(this, time, unit, scheduler, delayError));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a I0(long times) {
        return d0(p1().H5(times));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final a J(long time, @p7.e TimeUnit unit) {
        return K(time, unit, io.reactivex.rxjava3.schedulers.b.a());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a J0(long times, @p7.e q7.r<? super Throwable> predicate) {
        return d0(p1().I5(times, predicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a K(long time, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return m1(time, unit, scheduler).h(this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a K0(@p7.e q7.d<? super Integer, ? super Throwable> predicate) {
        return d0(p1().J5(predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a L(@p7.e q7.a onAfterTerminate) {
        q7.g<? super io.reactivex.rxjava3.disposables.f> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g<? super Throwable> h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(h4, h10, aVar, aVar, onAfterTerminate, aVar);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a L0(@p7.e q7.r<? super Throwable> predicate) {
        return d0(p1().K5(predicate));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a M(@p7.e q7.a onFinally) {
        Objects.requireNonNull(onFinally, "onFinally is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.l(this, onFinally));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a M0(@p7.e q7.e stop) {
        Objects.requireNonNull(stop, "stop is null");
        return J0(Long.MAX_VALUE, io.reactivex.rxjava3.internal.functions.a.v(stop));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a N(@p7.e q7.a onComplete) {
        q7.g<? super io.reactivex.rxjava3.disposables.f> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g<? super Throwable> h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(h4, h10, onComplete, aVar, aVar, aVar);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a N0(@p7.e q7.o<? super m<Throwable>, ? extends org.reactivestreams.c<?>> handler) {
        return d0(p1().M5(handler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a O(@p7.e q7.a onDispose) {
        q7.g<? super io.reactivex.rxjava3.disposables.f> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g<? super Throwable> h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(h4, h10, aVar, aVar, aVar, onDispose);
    }

    @p7.g("none")
    public final void O0(@p7.e d observer) {
        Objects.requireNonNull(observer, "observer is null");
        d(new io.reactivex.rxjava3.internal.observers.q(observer));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a P(@p7.e q7.g<? super Throwable> onError) {
        q7.g<? super io.reactivex.rxjava3.disposables.f> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(h4, onError, aVar, aVar, aVar, aVar);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a Q(@p7.e q7.g<? super Throwable> onEvent) {
        Objects.requireNonNull(onEvent, "onEvent is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.m(this, onEvent));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a Q0(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return y(other, this);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a R(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, @p7.e q7.a onDispose) {
        q7.g<? super Throwable> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(onSubscribe, h4, aVar, aVar, aVar, onDispose);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <T> m<T> R0(@p7.e b0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(v.I2(other).A2(), p1());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <T> m<T> S0(@p7.e v0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return m.w0(p0.w2(other).n2(), p1());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a T(@p7.e q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        q7.g<? super Throwable> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(onSubscribe, h4, aVar, aVar, aVar, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <T> m<T> T0(@p7.e org.reactivestreams.c<T> other) {
        Objects.requireNonNull(other, "other is null");
        return p1().y6(other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a U(@p7.e q7.a onTerminate) {
        q7.g<? super io.reactivex.rxjava3.disposables.f> h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g<? super Throwable> h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return S(h4, h10, aVar, onTerminate, aVar, aVar);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> g0<T> U0(@p7.e l0<T> other) {
        Objects.requireNonNull(other, "other is null");
        return g0.i8(other).p1(t1());
    }

    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f V0() {
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        d(emptyCompletableObserver);
        return emptyCompletableObserver;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f W0(@p7.e q7.a onComplete) {
        Objects.requireNonNull(onComplete, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(onComplete);
        d(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.disposables.f X0(@p7.e q7.a onComplete, @p7.e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onError, "onError is null");
        Objects.requireNonNull(onComplete, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(onError, onComplete);
        d(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    protected abstract void Y0(@p7.e d observer);

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a Z0(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.m0(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <E extends d> E a1(E observer) {
        d(observer);
        return observer;
    }

    @Override // io.reactivex.rxjava3.core.g
    @p7.g("none")
    public final void d(@p7.e d observer) {
        Objects.requireNonNull(observer, "observer is null");
        try {
            d d02 = io.reactivex.rxjava3.plugins.a.d0(this, observer);
            Objects.requireNonNull(d02, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            Y0(d02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
            throw s1(th);
        }
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a d1(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.n0(this, other));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<Void> e1() {
        io.reactivex.rxjava3.observers.n<Void> nVar = new io.reactivex.rxjava3.observers.n<>();
        d(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final io.reactivex.rxjava3.observers.n<Void> f1(boolean dispose) {
        io.reactivex.rxjava3.observers.n<Void> nVar = new io.reactivex.rxjava3.observers.n<>();
        if (dispose) {
            nVar.dispose();
        }
        d(nVar);
        return nVar;
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a g(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return f(this, other);
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final a g1(long timeout, @p7.e TimeUnit unit) {
        return k1(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), null);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a h(@p7.e g next) {
        Objects.requireNonNull(next, "next is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.b(this, next));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a h0() {
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.y(this));
    }

    @p7.c
    @p7.g("io.reactivex:computation")
    @p7.e
    public final a h1(long timeout, @p7.e TimeUnit unit, @p7.e g fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return k1(timeout, unit, io.reactivex.rxjava3.schedulers.b.a(), fallback);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <T> m<T> i(@p7.e org.reactivestreams.c<T> next) {
        Objects.requireNonNull(next, "next is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.mixed.b(this, next));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a i0(@p7.e f onLift) {
        Objects.requireNonNull(onLift, "onLift is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.z(this, onLift));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a i1(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        return k1(timeout, unit, scheduler, null);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> v<T> j(@p7.e b0<T> next) {
        Objects.requireNonNull(next, "next is null");
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.n(next, this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> p0<d0<T>> j0() {
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.completable.a0(this));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a j1(long timeout, @p7.e TimeUnit unit, @p7.e o0 scheduler, @p7.e g fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return k1(timeout, unit, scheduler, fallback);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> g0<T> k(@p7.e l0<T> next) {
        Objects.requireNonNull(next, "next is null");
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.mixed.a(this, next));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> p0<T> l(@p7.e v0<T> next) {
        Objects.requireNonNull(next, "next is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.single.g(next, this));
    }

    @p7.g("none")
    public final void m() {
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        d(gVar);
        gVar.c();
    }

    @p7.c
    @p7.g("none")
    public final boolean n(long timeout, @p7.e TimeUnit unit) {
        Objects.requireNonNull(unit, "unit is null");
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        d(gVar);
        return gVar.a(timeout, unit);
    }

    @p7.c
    @p7.g("none")
    public final <R> R n1(@p7.e b<? extends R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.g("none")
    public final void o() {
        r(io.reactivex.rxjava3.internal.functions.a.f76182c, io.reactivex.rxjava3.internal.functions.a.f76184e);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> CompletionStage<T> o1(@p7.f T defaultItem) {
        return (CompletionStage) a1(new io.reactivex.rxjava3.internal.jdk8.b(true, defaultItem));
    }

    @p7.g("none")
    public final void p(@p7.e d observer) {
        Objects.requireNonNull(observer, "observer is null");
        io.reactivex.rxjava3.internal.observers.d dVar = new io.reactivex.rxjava3.internal.observers.d();
        observer.onSubscribe(dVar);
        d(dVar);
        dVar.a(observer);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @p7.g("none")
    @p7.e
    public final <T> m<T> p1() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.d) {
            return ((io.reactivex.rxjava3.internal.fuseable.d) this).c();
        }
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.completable.q0(this));
    }

    @p7.g("none")
    public final void q(@p7.e q7.a onComplete) {
        r(onComplete, io.reactivex.rxjava3.internal.functions.a.f76184e);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final Future<Void> q1() {
        return (Future) a1(new io.reactivex.rxjava3.internal.observers.i());
    }

    @p7.g("none")
    public final void r(@p7.e q7.a onComplete, @p7.e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onComplete, "onComplete is null");
        Objects.requireNonNull(onError, "onError is null");
        io.reactivex.rxjava3.internal.observers.g gVar = new io.reactivex.rxjava3.internal.observers.g();
        d(gVar);
        gVar.b(io.reactivex.rxjava3.internal.functions.a.h(), onError, onComplete);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> v<T> r1() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.e) {
            return ((io.reactivex.rxjava3.internal.fuseable.e) this).b();
        }
        return io.reactivex.rxjava3.plugins.a.Q(new io.reactivex.rxjava3.internal.operators.maybe.k0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a s() {
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.c(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a t0(@p7.e g other) {
        Objects.requireNonNull(other, "other is null");
        return o0(this, other);
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> g0<T> t1() {
        if (this instanceof io.reactivex.rxjava3.internal.fuseable.f) {
            return ((io.reactivex.rxjava3.internal.fuseable.f) this).a();
        }
        return io.reactivex.rxjava3.plugins.a.R(new io.reactivex.rxjava3.internal.operators.completable.r0(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a u(@p7.e h transformer) {
        Objects.requireNonNull(transformer, "transformer is null");
        return A1(transformer.a(this));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> p0<T> u1(@p7.e q7.s<? extends T> completionValueSupplier) {
        Objects.requireNonNull(completionValueSupplier, "completionValueSupplier is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.completable.s0(this, completionValueSupplier, null));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a v0(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.h0(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final <T> p0<T> v1(T completionValue) {
        Objects.requireNonNull(completionValue, "completionValue is null");
        return io.reactivex.rxjava3.plugins.a.S(new io.reactivex.rxjava3.internal.operators.completable.s0(this, null, completionValue));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a w0() {
        return x0(io.reactivex.rxjava3.internal.functions.a.c());
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a x0(@p7.e q7.r<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.i0(this, predicate));
    }

    @p7.c
    @p7.g("custom")
    @p7.e
    public final a x1(@p7.e o0 scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.k(this, scheduler));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a y0(@p7.e q7.o<? super Throwable, ? extends g> fallbackSupplier) {
        Objects.requireNonNull(fallbackSupplier, "fallbackSupplier is null");
        return io.reactivex.rxjava3.plugins.a.O(new io.reactivex.rxjava3.internal.operators.completable.l0(this, fallbackSupplier));
    }

    @p7.c
    @p7.g("none")
    @p7.e
    public final a z0(@p7.e g fallback) {
        Objects.requireNonNull(fallback, "fallback is null");
        return y0(io.reactivex.rxjava3.internal.functions.a.n(fallback));
    }
}
