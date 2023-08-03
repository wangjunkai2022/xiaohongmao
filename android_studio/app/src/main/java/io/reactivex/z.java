package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.internal.observers.ForEachWhileObserver;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.operators.observable.ObservableGroupBy;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.internal.operators.observable.a1;
import io.reactivex.internal.operators.observable.a2;
import io.reactivex.internal.operators.observable.a4;
import io.reactivex.internal.operators.observable.b1;
import io.reactivex.internal.operators.observable.b2;
import io.reactivex.internal.operators.observable.b3;
import io.reactivex.internal.operators.observable.b4;
import io.reactivex.internal.operators.observable.c1;
import io.reactivex.internal.operators.observable.c2;
import io.reactivex.internal.operators.observable.c3;
import io.reactivex.internal.operators.observable.c4;
import io.reactivex.internal.operators.observable.d1;
import io.reactivex.internal.operators.observable.d2;
import io.reactivex.internal.operators.observable.d3;
import io.reactivex.internal.operators.observable.d4;
import io.reactivex.internal.operators.observable.e1;
import io.reactivex.internal.operators.observable.e2;
import io.reactivex.internal.operators.observable.e3;
import io.reactivex.internal.operators.observable.e4;
import io.reactivex.internal.operators.observable.f1;
import io.reactivex.internal.operators.observable.f2;
import io.reactivex.internal.operators.observable.f3;
import io.reactivex.internal.operators.observable.f4;
import io.reactivex.internal.operators.observable.g1;
import io.reactivex.internal.operators.observable.g3;
import io.reactivex.internal.operators.observable.g4;
import io.reactivex.internal.operators.observable.h1;
import io.reactivex.internal.operators.observable.h3;
import io.reactivex.internal.operators.observable.h4;
import io.reactivex.internal.operators.observable.i1;
import io.reactivex.internal.operators.observable.i2;
import io.reactivex.internal.operators.observable.i3;
import io.reactivex.internal.operators.observable.i4;
import io.reactivex.internal.operators.observable.j1;
import io.reactivex.internal.operators.observable.j2;
import io.reactivex.internal.operators.observable.j3;
import io.reactivex.internal.operators.observable.j4;
import io.reactivex.internal.operators.observable.k1;
import io.reactivex.internal.operators.observable.k2;
import io.reactivex.internal.operators.observable.k3;
import io.reactivex.internal.operators.observable.k4;
import io.reactivex.internal.operators.observable.l1;
import io.reactivex.internal.operators.observable.l2;
import io.reactivex.internal.operators.observable.l3;
import io.reactivex.internal.operators.observable.l4;
import io.reactivex.internal.operators.observable.m1;
import io.reactivex.internal.operators.observable.m2;
import io.reactivex.internal.operators.observable.m3;
import io.reactivex.internal.operators.observable.m4;
import io.reactivex.internal.operators.observable.n1;
import io.reactivex.internal.operators.observable.n2;
import io.reactivex.internal.operators.observable.n3;
import io.reactivex.internal.operators.observable.o1;
import io.reactivex.internal.operators.observable.o3;
import io.reactivex.internal.operators.observable.p1;
import io.reactivex.internal.operators.observable.p2;
import io.reactivex.internal.operators.observable.p3;
import io.reactivex.internal.operators.observable.q1;
import io.reactivex.internal.operators.observable.q2;
import io.reactivex.internal.operators.observable.q3;
import io.reactivex.internal.operators.observable.r0;
import io.reactivex.internal.operators.observable.r1;
import io.reactivex.internal.operators.observable.r2;
import io.reactivex.internal.operators.observable.r3;
import io.reactivex.internal.operators.observable.s0;
import io.reactivex.internal.operators.observable.s1;
import io.reactivex.internal.operators.observable.s2;
import io.reactivex.internal.operators.observable.s3;
import io.reactivex.internal.operators.observable.t0;
import io.reactivex.internal.operators.observable.t1;
import io.reactivex.internal.operators.observable.t2;
import io.reactivex.internal.operators.observable.t3;
import io.reactivex.internal.operators.observable.u0;
import io.reactivex.internal.operators.observable.u1;
import io.reactivex.internal.operators.observable.u2;
import io.reactivex.internal.operators.observable.u3;
import io.reactivex.internal.operators.observable.v0;
import io.reactivex.internal.operators.observable.v1;
import io.reactivex.internal.operators.observable.v2;
import io.reactivex.internal.operators.observable.v3;
import io.reactivex.internal.operators.observable.w0;
import io.reactivex.internal.operators.observable.w1;
import io.reactivex.internal.operators.observable.w2;
import io.reactivex.internal.operators.observable.w3;
import io.reactivex.internal.operators.observable.x1;
import io.reactivex.internal.operators.observable.x2;
import io.reactivex.internal.operators.observable.x3;
import io.reactivex.internal.operators.observable.y0;
import io.reactivex.internal.operators.observable.y1;
import io.reactivex.internal.operators.observable.y2;
import io.reactivex.internal.operators.observable.y3;
import io.reactivex.internal.operators.observable.z0;
import io.reactivex.internal.operators.observable.z1;
import io.reactivex.internal.operators.observable.z2;
import io.reactivex.internal.operators.observable.z3;
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

/* compiled from: Observable.java */
/* loaded from: classes3.dex */
public abstract class z<T> implements e0<T> {

    /* compiled from: Observable.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f81817a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f81817a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81817a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81817a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81817a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> amb(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.h(null, iterable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> ambArray(e0<? extends T>... e0VarArr) {
        io.reactivex.internal.functions.b.g(e0VarArr, "sources is null");
        int length = e0VarArr.length;
        if (length == 0) {
            return empty();
        }
        if (length == 1) {
            return wrap(e0VarArr[0]);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.h(e0VarArr, null));
    }

    public static int bufferSize() {
        return j.Y();
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatest(n7.o<? super Object[], ? extends R> oVar, int i4, e0<? extends T>... e0VarArr) {
        return combineLatest(e0VarArr, oVar, i4);
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatestDelayError(e0<? extends T>[] e0VarArr, n7.o<? super Object[], ? extends R> oVar) {
        return combineLatestDelayError(e0VarArr, oVar, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(io.reactivex.internal.functions.a.k(), bufferSize(), false);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArray(e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return empty();
        }
        if (e0VarArr.length == 1) {
            return wrap(e0VarArr[0]);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(fromArray(e0VarArr), io.reactivex.internal.functions.a.k(), bufferSize(), ErrorMode.BOUNDARY));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArrayDelayError(e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return empty();
        }
        if (e0VarArr.length == 1) {
            return wrap(e0VarArr[0]);
        }
        return concatDelayError(fromArray(e0VarArr));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArrayEager(e0<? extends T>... e0VarArr) {
        return concatArrayEager(bufferSize(), bufferSize(), e0VarArr);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArrayEagerDelayError(e0<? extends T>... e0VarArr) {
        return concatArrayEagerDelayError(bufferSize(), bufferSize(), e0VarArr);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concatDelayError(Iterable<? extends e0<? extends T>> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return concatDelayError(fromIterable(iterable));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatEager(e0<? extends e0<? extends T>> e0Var) {
        return concatEager(e0Var, bufferSize(), bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> create(c0<T> c0Var) {
        io.reactivex.internal.functions.b.g(c0Var, "source is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.c0(c0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> defer(Callable<? extends e0<? extends T>> callable) {
        io.reactivex.internal.functions.b.g(callable, "supplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.f0(callable));
    }

    @m7.c
    @m7.g("none")
    private z<T> doOnEach(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.g(aVar2, "onAfterTerminate is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.o0(this, gVar, gVar2, aVar, aVar2));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> empty() {
        return io.reactivex.plugins.a.R(t0.f74777a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> error(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.b.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.R(new u0(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> fromArray(T... tArr) {
        io.reactivex.internal.functions.b.g(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        if (tArr.length == 1) {
            return just(tArr[0]);
        }
        return io.reactivex.plugins.a.R(new c1(tArr));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> fromCallable(Callable<? extends T> callable) {
        io.reactivex.internal.functions.b.g(callable, "supplier is null");
        return io.reactivex.plugins.a.R(new d1(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> fromFuture(Future<? extends T> future) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return io.reactivex.plugins.a.R(new e1(future, 0L, null));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> fromIterable(Iterable<? extends T> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "source is null");
        return io.reactivex.plugins.a.R(new f1(iterable));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> z<T> fromPublisher(org.reactivestreams.c<? extends T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "publisher is null");
        return io.reactivex.plugins.a.R(new g1(cVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> generate(n7.g<i<T>> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "generator is null");
        return generate(io.reactivex.internal.functions.a.u(), n1.m(gVar), io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static z<Long> interval(long j4, long j10, TimeUnit timeUnit) {
        return interval(j4, j10, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static z<Long> intervalRange(long j4, long j10, long j11, long j12, TimeUnit timeUnit) {
        return intervalRange(j4, j10, j11, j12, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return io.reactivex.plugins.a.R(new r1(t9));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(Iterable<? extends e0<? extends T>> iterable, int i4, int i10) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k(), false, i4, i10);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeArray(int i4, int i10, e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).flatMap(io.reactivex.internal.functions.a.k(), false, i4, i10);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeArrayDelayError(int i4, int i10, e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).flatMap(io.reactivex.internal.functions.a.k(), true, i4, i10);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(Iterable<? extends e0<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k(), true);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> never() {
        return io.reactivex.plugins.a.R(b2.f73899a);
    }

    @m7.c
    @m7.g("none")
    public static z<Integer> range(int i4, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i10);
        } else if (i10 == 0) {
            return empty();
        } else {
            if (i10 == 1) {
                return just(Integer.valueOf(i4));
            }
            if (i4 + (i10 - 1) <= 2147483647L) {
                return io.reactivex.plugins.a.R(new j2(i4, i10));
            }
            throw new IllegalArgumentException("Integer overflow");
        }
    }

    @m7.c
    @m7.g("none")
    public static z<Long> rangeLong(long j4, long j10) {
        int i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j10);
        } else if (i4 == 0) {
            return empty();
        } else {
            if (j10 == 1) {
                return just(Long.valueOf(j4));
            }
            long j11 = (j10 - 1) + j4;
            if (j4 > 0 && j11 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            return io.reactivex.plugins.a.R(new k2(j4, j10));
        }
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> sequenceEqual(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        return sequenceEqual(e0Var, e0Var2, io.reactivex.internal.functions.b.d(), bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> switchOnNext(e0<? extends e0<? extends T>> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new m3(e0Var, io.reactivex.internal.functions.a.k(), i4, false));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> switchOnNextDelayError(e0<? extends e0<? extends T>> e0Var) {
        return switchOnNextDelayError(e0Var, bufferSize());
    }

    private z<T> timeout0(long j4, TimeUnit timeUnit, e0<? extends T> e0Var, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "timeUnit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new y3(this, j4, timeUnit, h0Var, e0Var));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static z<Long> timer(long j4, TimeUnit timeUnit) {
        return timer(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> unsafeCreate(e0<T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "onSubscribe is null");
        if (!(e0Var instanceof z)) {
            return io.reactivex.plugins.a.R(new h1(e0Var));
        }
        throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
    }

    @m7.c
    @m7.g("none")
    public static <T, D> z<T> using(Callable<? extends D> callable, n7.o<? super D, ? extends e0<? extends T>> oVar, n7.g<? super D> gVar) {
        return using(callable, oVar, gVar, true);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> wrap(e0<T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "source is null");
        if (e0Var instanceof z) {
            return io.reactivex.plugins.a.R((z) e0Var);
        }
        return io.reactivex.plugins.a.R(new h1(e0Var));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> zip(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.R(new l4(null, iterable, oVar, bufferSize(), false));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> zipArray(n7.o<? super Object[], ? extends R> oVar, boolean z9, int i4, e0<? extends T>... e0VarArr) {
        if (e0VarArr.length == 0) {
            return empty();
        }
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new l4(e0VarArr, null, oVar, i4, z9));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> zipIterable(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new l4(null, iterable, oVar, i4, z9));
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> all(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.g(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> ambWith(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return ambArray(this, e0Var);
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> any(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.j(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> R as(@m7.e a0<T, ? extends R> a0Var) {
        return (R) ((a0) io.reactivex.internal.functions.b.g(a0Var, "converter is null")).a(this);
    }

    @m7.c
    @m7.g("none")
    public final T blockingFirst() {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe(dVar);
        T a10 = dVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @m7.g("none")
    public final void blockingForEach(n7.g<? super T> gVar) {
        Iterator<T> it = blockingIterable().iterator();
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

    @m7.c
    @m7.g("none")
    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final T blockingLast() {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        subscribe(eVar);
        T a10 = eVar.a();
        if (a10 != null) {
            return a10;
        }
        throw new NoSuchElementException();
    }

    @m7.c
    @m7.g("none")
    public final Iterable<T> blockingLatest() {
        return new io.reactivex.internal.operators.observable.c(this);
    }

    @m7.c
    @m7.g("none")
    public final Iterable<T> blockingMostRecent(T t9) {
        return new io.reactivex.internal.operators.observable.d(this, t9);
    }

    @m7.c
    @m7.g("none")
    public final Iterable<T> blockingNext() {
        return new io.reactivex.internal.operators.observable.e(this);
    }

    @m7.c
    @m7.g("none")
    public final T blockingSingle() {
        T h4 = singleElement().h();
        if (h4 != null) {
            return h4;
        }
        throw new NoSuchElementException();
    }

    @m7.g("none")
    public final void blockingSubscribe() {
        io.reactivex.internal.operators.observable.l.a(this);
    }

    @m7.c
    @m7.g("none")
    public final z<List<T>> buffer(int i4) {
        return buffer(i4, i4);
    }

    @m7.c
    @m7.g("none")
    public final z<T> cache() {
        return cacheWithInitialCapacity(16);
    }

    @m7.c
    @m7.g("none")
    public final z<T> cacheWithInitialCapacity(int i4) {
        io.reactivex.internal.functions.b.h(i4, "initialCapacity");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.r(this, i4));
    }

    @m7.c
    @m7.g("none")
    public final <U> z<U> cast(Class<U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return (z<U>) map(io.reactivex.internal.functions.a.e(cls));
    }

    @m7.c
    @m7.g("none")
    public final <U> i0<U> collect(Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.b.g(callable, "initialValueSupplier is null");
        io.reactivex.internal.functions.b.g(bVar, "collector is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.t(this, callable, bVar));
    }

    @m7.c
    @m7.g("none")
    public final <U> i0<U> collectInto(U u9, n7.b<? super U, ? super T> bVar) {
        io.reactivex.internal.functions.b.g(u9, "initialValue is null");
        return collect(io.reactivex.internal.functions.a.m(u9), bVar);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> compose(f0<? super T, ? extends R> f0Var) {
        return wrap(((f0) io.reactivex.internal.functions.b.g(f0Var, "composer is null")).a(this));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMap(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return concatMap(oVar, 2);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a concatMapCompletable(n7.o<? super T, ? extends g> oVar) {
        return concatMapCompletable(oVar, 2);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a concatMapCompletableDelayError(n7.o<? super T, ? extends g> oVar) {
        return concatMapCompletableDelayError(oVar, true, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return concatMapDelayError(oVar, bufferSize(), true);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapEager(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return concatMapEager(oVar, Integer.MAX_VALUE, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapEagerDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar, boolean z9) {
        return concatMapEagerDelayError(oVar, Integer.MAX_VALUE, bufferSize(), z9);
    }

    @m7.c
    @m7.g("none")
    public final <U> z<U> concatMapIterable(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new b1(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapMaybe(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return concatMapMaybe(oVar, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapMaybeDelayError(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return concatMapMaybeDelayError(oVar, true, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapSingle(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return concatMapSingle(oVar, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapSingleDelayError(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return concatMapSingleDelayError(oVar, true, 2);
    }

    @m7.c
    @m7.g("none")
    public final z<T> concatWith(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return concat(this, e0Var);
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> contains(Object obj) {
        io.reactivex.internal.functions.b.g(obj, "element is null");
        return any(io.reactivex.internal.functions.a.i(obj));
    }

    @m7.c
    @m7.g("none")
    public final i0<Long> count() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.observable.b0(this));
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> debounce(n7.o<? super T, ? extends e0<U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "debounceSelector is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.d0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> defaultIfEmpty(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return switchIfEmpty(just(t9));
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> delay(n7.o<? super T, ? extends e0<U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "itemDelay is null");
        return (z<T>) flatMap(n1.c(oVar));
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> delaySubscription(e0<U> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.h0(this, e0Var));
    }

    @Deprecated
    @m7.c
    @m7.g("none")
    public final <T2> z<T2> dematerialize() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.i0(this, io.reactivex.internal.functions.a.k()));
    }

    @m7.c
    @m7.g("none")
    public final z<T> distinct() {
        return distinct(io.reactivex.internal.functions.a.k(), io.reactivex.internal.functions.a.g());
    }

    @m7.c
    @m7.g("none")
    public final z<T> distinctUntilChanged() {
        return distinctUntilChanged(io.reactivex.internal.functions.a.k());
    }

    @m7.c
    @m7.g("none")
    public final z<T> doAfterNext(n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onAfterNext is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.m0(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> doAfterTerminate(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return doOnEach(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71129c, aVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doFinally(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.n0(this, aVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnComplete(n7.a aVar) {
        return doOnEach(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.h(), aVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnDispose(n7.a aVar) {
        return doOnLifecycle(io.reactivex.internal.functions.a.h(), aVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnError(n7.g<? super Throwable> gVar) {
        n7.g<? super T> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return doOnEach(h4, gVar, aVar, aVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnLifecycle(n7.g<? super io.reactivex.disposables.c> gVar, n7.a aVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.b.g(aVar, "onDispose is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.p0(this, gVar, aVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnNext(n7.g<? super T> gVar) {
        n7.g<? super Throwable> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return doOnEach(gVar, h4, aVar, aVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnSubscribe(n7.g<? super io.reactivex.disposables.c> gVar) {
        return doOnLifecycle(gVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnTerminate(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onTerminate is null");
        return doOnEach(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.a(aVar), aVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final q<T> elementAt(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.Q(new r0(this, j4));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("none")
    public final i0<T> elementAtOrError(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.S(new s0(this, j4, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("none")
    public final z<T> filter(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new v0(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> first(T t9) {
        return elementAt(0L, t9);
    }

    @m7.c
    @m7.g("none")
    public final q<T> firstElement() {
        return elementAt(0L);
    }

    @m7.c
    @m7.g("none")
    public final i0<T> firstOrError() {
        return elementAtOrError(0L);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return flatMap((n7.o) oVar, false);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a flatMapCompletable(n7.o<? super T, ? extends g> oVar) {
        return flatMapCompletable(oVar, false);
    }

    @m7.c
    @m7.g("none")
    public final <U> z<U> flatMapIterable(n7.o<? super T, ? extends Iterable<? extends U>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new b1(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMapMaybe(n7.o<? super T, ? extends w<? extends R>> oVar) {
        return flatMapMaybe(oVar, false);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMapSingle(n7.o<? super T, ? extends o0<? extends R>> oVar) {
        return flatMapSingle(oVar, false);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c forEach(n7.g<? super T> gVar) {
        return subscribe(gVar);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c forEachWhile(n7.r<? super T> rVar) {
        return forEachWhile(rVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final <K> z<io.reactivex.observables.b<K, T>> groupBy(n7.o<? super T, ? extends K> oVar) {
        return (z<io.reactivex.observables.b<K, T>>) groupBy(oVar, io.reactivex.internal.functions.a.k(), false, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <TRight, TLeftEnd, TRightEnd, R> z<R> groupJoin(e0<? extends TRight> e0Var, n7.o<? super T, ? extends e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends e0<TRightEnd>> oVar2, n7.c<? super T, ? super z<TRight>, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        io.reactivex.internal.functions.b.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.b.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.R(new j1(this, e0Var, oVar, oVar2, cVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> hide() {
        return io.reactivex.plugins.a.R(new k1(this));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a ignoreElements() {
        return io.reactivex.plugins.a.O(new m1(this));
    }

    @m7.c
    @m7.g("none")
    public final i0<Boolean> isEmpty() {
        return all(io.reactivex.internal.functions.a.b());
    }

    @m7.c
    @m7.g("none")
    public final <TRight, TLeftEnd, TRightEnd, R> z<R> join(e0<? extends TRight> e0Var, n7.o<? super T, ? extends e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends e0<TRightEnd>> oVar2, n7.c<? super T, ? super TRight, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        io.reactivex.internal.functions.b.g(oVar, "leftEnd is null");
        io.reactivex.internal.functions.b.g(oVar2, "rightEnd is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return io.reactivex.plugins.a.R(new q1(this, e0Var, oVar, oVar2, cVar));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> last(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return io.reactivex.plugins.a.S(new t1(this, t9));
    }

    @m7.c
    @m7.g("none")
    public final q<T> lastElement() {
        return io.reactivex.plugins.a.Q(new s1(this));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> lastOrError() {
        return io.reactivex.plugins.a.S(new t1(this, null));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> lift(d0<? extends R, ? super T> d0Var) {
        io.reactivex.internal.functions.b.g(d0Var, "lifter is null");
        return io.reactivex.plugins.a.R(new u1(this, d0Var));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> map(n7.o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new v1(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final z<y<T>> materialize() {
        return io.reactivex.plugins.a.R(new x1(this));
    }

    @m7.c
    @m7.g("none")
    public final z<T> mergeWith(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return merge(this, e0Var);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> observeOn(h0 h0Var) {
        return observeOn(h0Var, false, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <U> z<U> ofType(Class<U> cls) {
        io.reactivex.internal.functions.b.g(cls, "clazz is null");
        return filter(io.reactivex.internal.functions.a.l(cls)).cast(cls);
    }

    @m7.c
    @m7.g("none")
    public final z<T> onErrorResumeNext(n7.o<? super Throwable, ? extends e0<? extends T>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "resumeFunction is null");
        return io.reactivex.plugins.a.R(new d2(this, oVar, false));
    }

    @m7.c
    @m7.g("none")
    public final z<T> onErrorReturn(n7.o<? super Throwable, ? extends T> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "valueSupplier is null");
        return io.reactivex.plugins.a.R(new e2(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> onErrorReturnItem(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return onErrorReturn(io.reactivex.internal.functions.a.n(t9));
    }

    @m7.c
    @m7.g("none")
    public final z<T> onExceptionResumeNext(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "next is null");
        return io.reactivex.plugins.a.R(new d2(this, io.reactivex.internal.functions.a.n(e0Var), true));
    }

    @m7.c
    @m7.g("none")
    public final z<T> onTerminateDetach() {
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.j0(this));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observables.a<T> publish() {
        return f2.o(this);
    }

    @m7.c
    @m7.g("none")
    public final q<T> reduce(n7.c<T, T, T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.Q(new l2(this, cVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> i0<R> reduceWith(Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new n2(this, callable, cVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    @m7.c
    @m7.g("none")
    public final z<T> repeatUntil(n7.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "stop is null");
        return io.reactivex.plugins.a.R(new q2(this, eVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> repeatWhen(n7.o<? super z<Object>, ? extends e0<?>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "handler is null");
        return io.reactivex.plugins.a.R(new r2(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observables.a<T> replay() {
        return s2.s(this);
    }

    @m7.c
    @m7.g("none")
    public final z<T> retry() {
        return retry(Long.MAX_VALUE, io.reactivex.internal.functions.a.c());
    }

    @m7.c
    @m7.g("none")
    public final z<T> retryUntil(n7.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "stop is null");
        return retry(Long.MAX_VALUE, io.reactivex.internal.functions.a.v(eVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> retryWhen(n7.o<? super z<Throwable>, ? extends e0<?>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "handler is null");
        return io.reactivex.plugins.a.R(new v2(this, oVar));
    }

    @m7.g("none")
    public final void safeSubscribe(g0<? super T> g0Var) {
        io.reactivex.internal.functions.b.g(g0Var, "observer is null");
        if (g0Var instanceof io.reactivex.observers.k) {
            subscribe(g0Var);
        } else {
            subscribe(new io.reactivex.observers.k(g0Var));
        }
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> sample(long j4, TimeUnit timeUnit) {
        return sample(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final z<T> scan(n7.c<T, T, T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.R(new y2(this, cVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> scanWith(Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(callable, "seedSupplier is null");
        io.reactivex.internal.functions.b.g(cVar, "accumulator is null");
        return io.reactivex.plugins.a.R(new z2(this, callable, cVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> serialize() {
        return io.reactivex.plugins.a.R(new c3(this));
    }

    @m7.c
    @m7.g("none")
    public final z<T> share() {
        return publish().i();
    }

    @m7.c
    @m7.g("none")
    public final i0<T> single(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
        return io.reactivex.plugins.a.S(new e3(this, t9));
    }

    @m7.c
    @m7.g("none")
    public final q<T> singleElement() {
        return io.reactivex.plugins.a.Q(new d3(this));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> singleOrError() {
        return io.reactivex.plugins.a.S(new e3(this, null));
    }

    @m7.c
    @m7.g("none")
    public final z<T> skip(long j4) {
        if (j4 <= 0) {
            return io.reactivex.plugins.a.R(this);
        }
        return io.reactivex.plugins.a.R(new f3(this, j4));
    }

    @m7.c
    @m7.g("none")
    public final z<T> skipLast(int i4) {
        if (i4 >= 0) {
            if (i4 == 0) {
                return io.reactivex.plugins.a.R(this);
            }
            return io.reactivex.plugins.a.R(new g3(this, i4));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i4);
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> skipUntil(e0<U> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new i3(this, e0Var));
    }

    @m7.c
    @m7.g("none")
    public final z<T> skipWhile(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new j3(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> sorted() {
        return toList().v1().map(io.reactivex.internal.functions.a.o(io.reactivex.internal.functions.a.p())).flatMapIterable(io.reactivex.internal.functions.a.k());
    }

    @m7.c
    @m7.g("none")
    public final z<T> startWith(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    @m7.c
    @m7.g("none")
    public final z<T> startWithArray(T... tArr) {
        z fromArray = fromArray(tArr);
        if (fromArray == empty()) {
            return io.reactivex.plugins.a.R(this);
        }
        return concatArray(fromArray, this);
    }

    @m7.g("none")
    public final io.reactivex.disposables.c subscribe() {
        return subscribe(io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c, io.reactivex.internal.functions.a.h());
    }

    protected abstract void subscribeActual(g0<? super T> g0Var);

    @m7.c
    @m7.g("custom")
    public final z<T> subscribeOn(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new k3(this, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final <E extends g0<? super T>> E subscribeWith(E e4) {
        subscribe(e4);
        return e4;
    }

    @m7.c
    @m7.g("none")
    public final z<T> switchIfEmpty(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new l3(this, e0Var));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMap(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return switchMap(oVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a switchMapCompletable(@m7.e n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.o(this, oVar, false));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a switchMapCompletableDelayError(@m7.e n7.o<? super T, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.o(this, oVar, true));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar) {
        return switchMapDelayError(oVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapMaybe(@m7.e n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.p(this, oVar, false));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapMaybeDelayError(@m7.e n7.o<? super T, ? extends w<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.p(this, oVar, true));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapSingle(@m7.e n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.q(this, oVar, false));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapSingleDelayError(@m7.e n7.o<? super T, ? extends o0<? extends R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.q(this, oVar, true));
    }

    @m7.c
    @m7.g("none")
    public final z<T> take(long j4) {
        if (j4 >= 0) {
            return io.reactivex.plugins.a.R(new n3(this, j4));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("none")
    public final z<T> takeLast(int i4) {
        if (i4 < 0) {
            throw new IndexOutOfBoundsException("count >= 0 required but it was " + i4);
        } else if (i4 == 0) {
            return io.reactivex.plugins.a.R(new l1(this));
        } else {
            if (i4 == 1) {
                return io.reactivex.plugins.a.R(new p3(this));
            }
            return io.reactivex.plugins.a.R(new o3(this, i4));
        }
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> takeUntil(e0<U> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return io.reactivex.plugins.a.R(new r3(this, e0Var));
    }

    @m7.c
    @m7.g("none")
    public final z<T> takeWhile(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.R(new t3(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> test() {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        subscribe(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> throttleFirst(long j4, TimeUnit timeUnit) {
        return throttleFirst(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> throttleLast(long j4, TimeUnit timeUnit) {
        return sample(j4, timeUnit);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> throttleLatest(long j4, TimeUnit timeUnit) {
        return throttleLatest(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> throttleWithTimeout(long j4, TimeUnit timeUnit) {
        return debounce(j4, timeUnit);
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final <V> z<T> timeout(n7.o<? super T, ? extends e0<V>> oVar) {
        return timeout0(null, oVar, null);
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final <R> R to(n7.o<? super z<T>, R> oVar) {
        try {
            return (R) ((n7.o) io.reactivex.internal.functions.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.a(BackpressureKind.SPECIAL)
    @m7.c
    @m7.g("none")
    public final j<T> toFlowable(BackpressureStrategy backpressureStrategy) {
        io.reactivex.internal.operators.flowable.k1 k1Var = new io.reactivex.internal.operators.flowable.k1(this);
        int i4 = a.f81817a[backpressureStrategy.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return k1Var.p4();
                    }
                    return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.flowable.l2(k1Var));
                }
                return k1Var;
            }
            return k1Var.z4();
        }
        return k1Var.x4();
    }

    @m7.c
    @m7.g("none")
    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.observers.h());
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toList() {
        return toList(16);
    }

    @m7.c
    @m7.g("none")
    public final <K> i0<Map<K, T>> toMap(n7.o<? super T, ? extends K> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        return (i0<Map<K, T>>) collect(HashMapSupplier.asCallable(), io.reactivex.internal.functions.a.F(oVar));
    }

    @m7.c
    @m7.g("none")
    public final <K> i0<Map<K, Collection<T>>> toMultimap(n7.o<? super T, ? extends K> oVar) {
        return (i0<Map<K, Collection<T>>>) toMultimap(oVar, io.reactivex.internal.functions.a.k(), HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toSortedList() {
        return toSortedList(io.reactivex.internal.functions.a.q());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> unsubscribeOn(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new c4(this, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final z<z<T>> window(long j4) {
        return window(j4, j4, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> withLatestFrom(e0<? extends U> e0Var, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        io.reactivex.internal.functions.b.g(cVar, "combiner is null");
        return io.reactivex.plugins.a.R(new j4(this, cVar, e0Var));
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> zipWith(Iterable<U> iterable, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(iterable, "other is null");
        io.reactivex.internal.functions.b.g(cVar, "zipper is null");
        return io.reactivex.plugins.a.R(new m4(this, iterable, cVar));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatest(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        return combineLatest(iterable, oVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatestDelayError(n7.o<? super Object[], ? extends R> oVar, int i4, e0<? extends T>... e0VarArr) {
        return combineLatestDelayError(e0VarArr, oVar, i4);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArrayEager(int i4, int i10, e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).concatMapEagerDelayError(io.reactivex.internal.functions.a.k(), i4, i10, false);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatArrayEagerDelayError(int i4, int i10, e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).concatMapEagerDelayError(io.reactivex.internal.functions.a.k(), i4, i10, true);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatEager(e0<? extends e0<? extends T>> e0Var, int i4, int i10) {
        return wrap(e0Var).concatMapEager(io.reactivex.internal.functions.a.k(), i4, i10);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static z<Long> interval(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new o1(Math.max(0L, j4), Math.max(0L, j10), timeUnit, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static z<Long> intervalRange(long j4, long j10, long j11, long j12, TimeUnit timeUnit, h0 h0Var) {
        int i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i4 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j10);
        } else if (i4 == 0) {
            return empty().delay(j11, timeUnit, h0Var);
        } else {
            long j13 = j4 + (j10 - 1);
            if (j4 > 0 && j13 < 0) {
                throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
            }
            io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
            io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
            return io.reactivex.plugins.a.R(new p1(j4, j13, Math.max(0L, j11), Math.max(0L, j12), timeUnit, h0Var));
        }
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(Iterable<? extends e0<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeArray(e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).flatMap(io.reactivex.internal.functions.a.k(), e0VarArr.length);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeArrayDelayError(e0<? extends T>... e0VarArr) {
        return fromArray(e0VarArr).flatMap(io.reactivex.internal.functions.a.k(), true, e0VarArr.length);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(Iterable<? extends e0<? extends T>> iterable, int i4, int i10) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k(), true, i4, i10);
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> sequenceEqual(e0<? extends T> e0Var, e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar) {
        return sequenceEqual(e0Var, e0Var2, dVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> switchOnNextDelayError(e0<? extends e0<? extends T>> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new m3(e0Var, io.reactivex.internal.functions.a.k(), i4, true));
    }

    @m7.c
    @m7.g("custom")
    public static z<Long> timer(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new z3(Math.max(j4, 0L), timeUnit, h0Var));
    }

    @m7.c
    @m7.g("none")
    public static <T, D> z<T> using(Callable<? extends D> callable, n7.o<? super D, ? extends e0<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        io.reactivex.internal.functions.b.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.b.g(oVar, "sourceSupplier is null");
        io.reactivex.internal.functions.b.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.R(new d4(callable, oVar, gVar, z9));
    }

    @m7.c
    @m7.g("none")
    public final Iterable<T> blockingIterable(int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return new io.reactivex.internal.operators.observable.b(this, i4);
    }

    @m7.g("none")
    public final void blockingSubscribe(n7.g<? super T> gVar) {
        io.reactivex.internal.operators.observable.l.c(this, gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final z<List<T>> buffer(int i4, int i10) {
        return (z<List<T>>) buffer(i4, i10, ArrayListSupplier.asCallable());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(this, oVar, i4, ErrorMode.IMMEDIATE));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a concatMapCompletable(n7.o<? super T, ? extends g> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "capacityHint");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.l(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a concatMapCompletableDelayError(n7.o<? super T, ? extends g> oVar, boolean z9) {
        return concatMapCompletableDelayError(oVar, z9, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(this, oVar, i4, z9 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapEager(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.w(this, oVar, ErrorMode.IMMEDIATE, i4, i10));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapEagerDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4, int i10, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.w(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4, i10));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapMaybe(n7.o<? super T, ? extends w<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.m(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapMaybeDelayError(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
        return concatMapMaybeDelayError(oVar, z9, 2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapSingle(n7.o<? super T, ? extends o0<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.n(this, oVar, ErrorMode.IMMEDIATE, i4));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapSingleDelayError(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
        return concatMapSingleDelayError(oVar, z9, 2);
    }

    @m7.d
    @m7.c
    @m7.g("none")
    public final <R> z<R> dematerialize(n7.o<? super T, y<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.i0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final <K> z<T> distinct(n7.o<? super T, K> oVar) {
        return distinct(oVar, io.reactivex.internal.functions.a.g());
    }

    @m7.c
    @m7.g("none")
    public final <K> z<T> distinctUntilChanged(n7.o<? super T, K> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.l0(this, oVar, io.reactivex.internal.functions.b.d()));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, boolean z9) {
        return flatMap(oVar, z9, Integer.MAX_VALUE);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a flatMapCompletable(n7.o<? super T, ? extends g> oVar, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.O(new y0(this, oVar, z9));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMapMaybe(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new z0(this, oVar, z9));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMapSingle(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        return io.reactivex.plugins.a.R(new a1(this, oVar, z9));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c forEachWhile(n7.r<? super T> rVar, n7.g<? super Throwable> gVar) {
        return forEachWhile(rVar, gVar, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final <K> z<io.reactivex.observables.b<K, T>> groupBy(n7.o<? super T, ? extends K> oVar, boolean z9) {
        return (z<io.reactivex.observables.b<K, T>>) groupBy(oVar, io.reactivex.internal.functions.a.k(), z9, bufferSize());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> observeOn(h0 h0Var, boolean z9) {
        return observeOn(h0Var, z9, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> publish(n7.o<? super z<T>, ? extends e0<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return io.reactivex.plugins.a.R(new i2(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> repeat(long j4) {
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 >= 0) {
            if (i4 == 0) {
                return empty();
            }
            return io.reactivex.plugins.a.R(new p2(this, j4));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        return s2.t(n1.g(this), oVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> retry(n7.d<? super Integer, ? super Throwable> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "predicate is null");
        return io.reactivex.plugins.a.R(new t2(this, dVar));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> sample(long j4, TimeUnit timeUnit, boolean z9) {
        return sample(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.c
    @m7.g("none")
    public final z<T> sorted(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.b.g(comparator, "sortFunction is null");
        return toList().v1().map(io.reactivex.internal.functions.a.o(comparator)).flatMapIterable(io.reactivex.internal.functions.a.k());
    }

    @m7.c
    @m7.g("none")
    public final z<T> startWith(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return concatArray(e0Var, this);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c subscribe(n7.g<? super T> gVar) {
        return subscribe(gVar, io.reactivex.internal.functions.a.f71132f, io.reactivex.internal.functions.a.f71129c, io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMap(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new m3(this, oVar, i4, false));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> switchMapDelayError(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new m3(this, oVar, i4, true));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> throttleFirst(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new u3(this, j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> throttleLast(long j4, TimeUnit timeUnit, h0 h0Var) {
        return sample(j4, timeUnit, h0Var);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> throttleLatest(long j4, TimeUnit timeUnit, boolean z9) {
        return throttleLatest(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> throttleWithTimeout(long j4, TimeUnit timeUnit, h0 h0Var) {
        return debounce(j4, timeUnit, h0Var);
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timeInterval(h0 h0Var) {
        return timeInterval(TimeUnit.MILLISECONDS, h0Var);
    }

    @m7.c
    @m7.g("none")
    public final <V> z<T> timeout(n7.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return timeout0(null, oVar, e0Var);
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timestamp(h0 h0Var) {
        return timestamp(TimeUnit.MILLISECONDS, h0Var);
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toList(int i4) {
        io.reactivex.internal.functions.b.h(i4, "capacityHint");
        return io.reactivex.plugins.a.S(new b4(this, i4));
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toSortedList(Comparator<? super T> comparator) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        return (i0<List<T>>) toList().s0(io.reactivex.internal.functions.a.o(comparator));
    }

    @m7.c
    @m7.g("none")
    public final z<z<T>> window(long j4, long j10) {
        return window(j4, j10, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatest(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.u(null, iterable, oVar, i4 << 1, false));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatestDelayError(e0<? extends T>[] e0VarArr, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        if (e0VarArr.length == 0) {
            return empty();
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.u(e0VarArr, null, oVar, i4 << 1, true));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(e0<? extends e0<? extends T>> e0Var) {
        return concat(e0Var, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatDelayError(e0<? extends e0<? extends T>> e0Var) {
        return concatDelayError(e0Var, bufferSize(), true);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatEager(Iterable<? extends e0<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> error(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "exception is null");
        return error(io.reactivex.internal.functions.a.m(th));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> fromFuture(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.R(new e1(future, j4, timeUnit));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        return fromArray(t9, t10);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(Iterable<? extends e0<? extends T>> iterable, int i4) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k(), i4);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(Iterable<? extends e0<? extends T>> iterable, int i4) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.a.k(), true, i4);
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> sequenceEqual(e0<? extends T> e0Var, e0<? extends T> e0Var2, n7.d<? super T, ? super T> dVar, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(dVar, "isEqual is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.S(new b3(e0Var, e0Var2, dVar, i4));
    }

    @m7.c
    @m7.g("none")
    public final T blockingSingle(T t9) {
        return single(t9).i();
    }

    @m7.g("none")
    public final void blockingSubscribe(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        io.reactivex.internal.operators.observable.l.c(this, gVar, gVar2, io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final <U extends Collection<? super T>> z<U> buffer(int i4, int i10, Callable<U> callable) {
        io.reactivex.internal.functions.b.h(i4, "count");
        io.reactivex.internal.functions.b.h(i10, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.m(this, i4, i10, callable));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.a concatMapCompletableDelayError(n7.o<? super T, ? extends g> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.mixed.l(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.c
    @m7.g("none")
    public final <U> z<U> concatMapIterable(n7.o<? super T, ? extends Iterable<? extends U>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return (z<U>) concatMap(n1.a(oVar), i4);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapMaybeDelayError(n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.m(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> concatMapSingleDelayError(n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.n(this, oVar, z9 ? ErrorMode.END : ErrorMode.BOUNDARY, i4));
    }

    @m7.c
    @m7.g("none")
    public final z<T> concatWith(@m7.e o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.z(this, o0Var));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> debounce(long j4, TimeUnit timeUnit) {
        return debounce(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> delay(long j4, TimeUnit timeUnit) {
        return delay(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> delaySubscription(long j4, TimeUnit timeUnit) {
        return delaySubscription(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final <K> z<T> distinct(n7.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.k0(this, oVar, callable));
    }

    @m7.c
    @m7.g("none")
    public final i0<T> elementAt(long j4, T t9) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.b.g(t9, "defaultItem is null");
            return io.reactivex.plugins.a.S(new s0(this, j4, t9));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, boolean z9, int i4) {
        return flatMap(oVar, z9, i4, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <U, V> z<V> flatMapIterable(n7.o<? super T, ? extends Iterable<? extends U>> oVar, n7.c<? super T, ? super U, ? extends V> cVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "resultSelector is null");
        return (z<V>) flatMap(n1.a(oVar), cVar, false, bufferSize(), bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c forEachWhile(n7.r<? super T> rVar, n7.g<? super Throwable> gVar, n7.a aVar) {
        io.reactivex.internal.functions.b.g(rVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(rVar, gVar, aVar);
        subscribe(forEachWhileObserver);
        return forEachWhileObserver;
    }

    @m7.c
    @m7.g("none")
    public final <K, V> z<io.reactivex.observables.b<K, V>> groupBy(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        return groupBy(oVar, oVar2, false, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final z<T> mergeWith(@m7.e o0<? extends T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "other is null");
        return io.reactivex.plugins.a.R(new a2(this, o0Var));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> observeOn(h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new c2(this, h0Var, z9, i4));
    }

    @m7.c
    @m7.g("none")
    public final z<T> onErrorResumeNext(e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "next is null");
        return onErrorResumeNext(io.reactivex.internal.functions.a.n(e0Var));
    }

    @m7.c
    @m7.g("none")
    public final <R> i0<R> reduce(R r9, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(r9, "seed is null");
        io.reactivex.internal.functions.b.g(cVar, "reducer is null");
        return io.reactivex.plugins.a.S(new m2(this, r9, cVar));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> sample(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new w2(this, j4, timeUnit, h0Var, false));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> scan(R r9, n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(r9, "initialValue is null");
        return scanWith(io.reactivex.internal.functions.a.m(r9), cVar);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> skip(long j4, TimeUnit timeUnit) {
        return skipUntil(timer(j4, timeUnit));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c subscribe(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2) {
        return subscribe(gVar, gVar2, io.reactivex.internal.functions.a.f71129c, io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("none")
    public final z<T> take(long j4, TimeUnit timeUnit) {
        return takeUntil(timer(j4, timeUnit));
    }

    @m7.c
    @m7.g("none")
    public final z<T> takeUntil(n7.r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "stopPredicate is null");
        return io.reactivex.plugins.a.R(new s3(this, rVar));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<T> test(boolean z9) {
        io.reactivex.observers.m<T> mVar = new io.reactivex.observers.m<>();
        if (z9) {
            mVar.dispose();
        }
        subscribe(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("custom")
    public final z<T> throttleLatest(long j4, TimeUnit timeUnit, h0 h0Var) {
        return throttleLatest(j4, timeUnit, h0Var, false);
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, V>> toMap(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        return (i0<Map<K, V>>) collect(HashMapSupplier.asCallable(), io.reactivex.internal.functions.a.G(oVar, oVar2));
    }

    @m7.c
    @m7.g("none")
    public final z<z<T>> window(long j4, long j10, int i4) {
        io.reactivex.internal.functions.b.i(j4, "count");
        io.reactivex.internal.functions.b.i(j10, com.coremedia.iso.boxes.u.f10406o);
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new e4(this, j4, j10, i4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(e0<? extends e0<? extends T>> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(e0Var, io.reactivex.internal.functions.a.k(), i4, ErrorMode.IMMEDIATE));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concatDelayError(e0<? extends e0<? extends T>> e0Var, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.v(e0Var, io.reactivex.internal.functions.a.k(), i4, z9 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> concatEager(Iterable<? extends e0<? extends T>> iterable, int i4, int i10) {
        return fromIterable(iterable).concatMapEagerDelayError(io.reactivex.internal.functions.a.k(), i4, i10, false);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(e0<? extends e0<? extends T>> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new w0(e0Var, io.reactivex.internal.functions.a.k(), false, Integer.MAX_VALUE, bufferSize()));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(e0<? extends e0<? extends T>> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new w0(e0Var, io.reactivex.internal.functions.a.k(), true, Integer.MAX_VALUE, bufferSize()));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> switchOnNext(e0<? extends e0<? extends T>> e0Var) {
        return switchOnNext(e0Var, bufferSize());
    }

    private <U, V> z<T> timeout0(e0<U> e0Var, n7.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.b.g(oVar, "itemTimeoutIndicator is null");
        return io.reactivex.plugins.a.R(new x3(this, e0Var, oVar, e0Var2));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> zip(e0<? extends e0<? extends T>> e0Var, n7.o<? super Object[], ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "zipper is null");
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        return io.reactivex.plugins.a.R(new a4(e0Var, 16).flatMap(n1.n(oVar)));
    }

    @m7.g("none")
    public final void blockingSubscribe(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        io.reactivex.internal.operators.observable.l.c(this, gVar, gVar2, aVar);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> debounce(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.e0(this, j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> delay(long j4, TimeUnit timeUnit, boolean z9) {
        return delay(j4, timeUnit, io.reactivex.schedulers.b.a(), z9);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> delaySubscription(long j4, TimeUnit timeUnit, h0 h0Var) {
        return delaySubscription(timer(j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final z<T> distinctUntilChanged(n7.d<? super T, ? super T> dVar) {
        io.reactivex.internal.functions.b.g(dVar, "comparer is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.l0(this, io.reactivex.internal.functions.a.k(), dVar));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, boolean z9, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "bufferSize");
        if (this instanceof o7.m) {
            Object call = ((o7.m) this).call();
            if (call == null) {
                return empty();
            }
            return ObservableScalarXMap.a(call, oVar);
        }
        return io.reactivex.plugins.a.R(new w0(this, oVar, z9, i4, i10));
    }

    @m7.c
    @m7.g("none")
    public final <K, V> z<io.reactivex.observables.b<K, V>> groupBy(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, boolean z9) {
        return groupBy(oVar, oVar2, z9, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return s2.t(n1.h(this, i4), oVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> retry(long j4) {
        return retry(j4, io.reactivex.internal.functions.a.c());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> skip(long j4, TimeUnit timeUnit, h0 h0Var) {
        return skipUntil(timer(j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("io.reactivex:trampoline")
    public final z<T> skipLast(long j4, TimeUnit timeUnit) {
        return skipLast(j4, timeUnit, io.reactivex.schedulers.b.i(), false, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final z<T> startWith(T t9) {
        io.reactivex.internal.functions.b.g(t9, "item is null");
        return concatArray(just(t9), this);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c subscribe(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar) {
        return subscribe(gVar, gVar2, aVar, io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> take(long j4, TimeUnit timeUnit, h0 h0Var) {
        return takeUntil(timer(j4, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> throttleLatest(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new v3(this, j4, timeUnit, h0Var, z9));
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timeInterval(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new w3(this, timeUnit, h0Var));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> timeout(long j4, TimeUnit timeUnit) {
        return timeout0(j4, timeUnit, null, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final z<io.reactivex.schedulers.d<T>> timestamp(TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return (z<io.reactivex.schedulers.d<T>>) map(io.reactivex.internal.functions.a.w(timeUnit, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final <U extends Collection<? super T>> i0<U> toList(Callable<U> callable) {
        io.reactivex.internal.functions.b.g(callable, "collectionSupplier is null");
        return io.reactivex.plugins.a.S(new b4(this, callable));
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toSortedList(Comparator<? super T> comparator, int i4) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        return (i0<List<T>>) toList(i4).s0(io.reactivex.internal.functions.a.o(comparator));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <T1, T2, R> z<R> withLatestFrom(e0<T1> e0Var, e0<T2> e0Var2, n7.h<? super T, ? super T1, ? super T2, R> hVar) {
        io.reactivex.internal.functions.b.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.b.g(hVar, "combiner is null");
        return withLatestFrom(new e0[]{e0Var, e0Var2}, io.reactivex.internal.functions.a.y(hVar));
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> zipWith(e0<? extends U> e0Var, n7.c<? super T, ? super U, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return zip(this, e0Var, cVar);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, S> z<T> generate(Callable<S> callable, n7.b<S, i<T>> bVar) {
        io.reactivex.internal.functions.b.g(bVar, "generator is null");
        return generate(callable, n1.l(bVar), io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static z<Long> interval(long j4, TimeUnit timeUnit) {
        return interval(j4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final T blockingFirst(T t9) {
        io.reactivex.internal.observers.d dVar = new io.reactivex.internal.observers.d();
        subscribe(dVar);
        T a10 = dVar.a();
        return a10 != null ? a10 : t9;
    }

    @m7.c
    @m7.g("none")
    public final T blockingLast(T t9) {
        io.reactivex.internal.observers.e eVar = new io.reactivex.internal.observers.e();
        subscribe(eVar);
        T a10 = eVar.a();
        return a10 != null ? a10 : t9;
    }

    @m7.g("none")
    public final void blockingSubscribe(g0<? super T> g0Var) {
        io.reactivex.internal.operators.observable.l.b(this, g0Var);
    }

    @m7.c
    @m7.g("none")
    public final z<T> concatWith(@m7.e w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.y(this, wVar));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> delay(long j4, TimeUnit timeUnit, h0 h0Var) {
        return delay(j4, timeUnit, h0Var, false);
    }

    @m7.c
    @m7.g("none")
    public final <K, V> z<io.reactivex.observables.b<K, V>> groupBy(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new ObservableGroupBy(this, oVar, oVar2, i4, z9));
    }

    @m7.c
    @m7.g("none")
    public final z<T> mergeWith(@m7.e w<? extends T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "other is null");
        return io.reactivex.plugins.a.R(new z1(this, wVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> retry(long j4, n7.r<? super Throwable> rVar) {
        if (j4 >= 0) {
            io.reactivex.internal.functions.b.g(rVar, "predicate is null");
            return io.reactivex.plugins.a.R(new u2(this, j4, rVar));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("io.reactivex:trampoline")
    public final z<T> skipLast(long j4, TimeUnit timeUnit, boolean z9) {
        return skipLast(j4, timeUnit, io.reactivex.schedulers.b.i(), z9, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c subscribe(n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.g<? super io.reactivex.disposables.c> gVar3) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.g(gVar3, "onSubscribe is null");
        LambdaObserver lambdaObserver = new LambdaObserver(gVar, gVar2, aVar, gVar3);
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    @m7.c
    @m7.g("io.reactivex:trampoline")
    public final z<T> takeLast(long j4, long j10, TimeUnit timeUnit) {
        return takeLast(j4, j10, timeUnit, io.reactivex.schedulers.b.i(), false, bufferSize());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<T> timeout(long j4, TimeUnit timeUnit, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return timeout0(j4, timeUnit, e0Var, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> toMultimap(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        return toMultimap(oVar, oVar2, HashMapSupplier.asCallable(), ArrayListSupplier.asFunction());
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static <T> z<T> fromFuture(Future<? extends T> future, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return fromFuture(future, j4, timeUnit).subscribeOn(h0Var);
    }

    @m7.c
    @m7.g("custom")
    public static z<Long> interval(long j4, TimeUnit timeUnit, h0 h0Var) {
        return interval(j4, j4, timeUnit, h0Var);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        return fromArray(t9, t10, t11);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(e0<? extends e0<? extends T>> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.R(new w0(e0Var, io.reactivex.internal.functions.a.k(), false, i4, bufferSize()));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(e0<? extends e0<? extends T>> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.R(new w0(e0Var, io.reactivex.internal.functions.a.k(), true, i4, bufferSize()));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> delay(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.g0(this, j4, timeUnit, h0Var, z9));
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnEach(n7.g<? super y<T>> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNotification is null");
        return doOnEach(io.reactivex.internal.functions.a.t(gVar), io.reactivex.internal.functions.a.s(gVar), io.reactivex.internal.functions.a.r(gVar), io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> sample(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.R(new w2(this, j4, timeUnit, h0Var, z9));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> skipLast(long j4, TimeUnit timeUnit, h0 h0Var) {
        return skipLast(j4, timeUnit, h0Var, false, bufferSize());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> takeLast(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return takeLast(j4, j10, timeUnit, h0Var, false, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, V>> toMap(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, V>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.g(callable, "mapSupplier is null");
        return (i0<Map<K, V>>) collect(callable, io.reactivex.internal.functions.a.G(oVar, oVar2));
    }

    @m7.c
    @m7.g("none")
    public final i0<List<T>> toSortedList(int i4) {
        return toSortedList(io.reactivex.internal.functions.a.q(), i4);
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> zipWith(e0<? extends U> e0Var, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9) {
        return zip(this, e0Var, cVar, z9);
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatest(e0<? extends T>[] e0VarArr, n7.o<? super Object[], ? extends R> oVar) {
        return combineLatest(e0VarArr, oVar, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return concatArray(e0Var, e0Var2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, S> z<T> generate(Callable<S> callable, n7.b<S, i<T>> bVar, n7.g<? super S> gVar) {
        io.reactivex.internal.functions.b.g(bVar, "generator is null");
        return generate(callable, n1.l(bVar), gVar);
    }

    @m7.c
    @m7.g("none")
    public final <U extends Collection<? super T>> z<U> buffer(int i4, Callable<U> callable) {
        return buffer(i4, i4, callable);
    }

    @m7.c
    @m7.g("none")
    public final z<T> concatWith(@m7.e g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.x(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final z<T> mergeWith(@m7.e g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.R(new y1(this, gVar));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, int i4, long j4, TimeUnit timeUnit) {
        return replay(oVar, i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> skipLast(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        return skipLast(j4, timeUnit, h0Var, z9, bufferSize());
    }

    @m7.c
    @m7.g("custom")
    public final z<T> takeLast(long j4, long j10, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        if (j4 >= 0) {
            return io.reactivex.plugins.a.R(new q3(this, j4, j10, timeUnit, h0Var, i4, z9));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j4);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> timeout(long j4, TimeUnit timeUnit, h0 h0Var, e0<? extends T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "other is null");
        return timeout0(j4, timeUnit, e0Var, h0Var);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<z<T>> window(long j4, long j10, TimeUnit timeUnit) {
        return window(j4, j10, timeUnit, io.reactivex.schedulers.b.a(), bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> zipWith(e0<? extends U> e0Var, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9, int i4) {
        return zip(this, e0Var, cVar, z9, i4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatest(e0<? extends T>[] e0VarArr, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(e0VarArr, "sources is null");
        if (e0VarArr.length == 0) {
            return empty();
        }
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.u(e0VarArr, null, oVar, i4 << 1, false));
    }

    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatestDelayError(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar) {
        return combineLatestDelayError(iterable, oVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T> i0<Boolean> sequenceEqual(e0<? extends T> e0Var, e0<? extends T> e0Var2, int i4) {
        return sequenceEqual(e0Var, e0Var2, io.reactivex.internal.functions.b.d(), i4);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<List<T>> buffer(long j4, long j10, TimeUnit timeUnit) {
        return (z<List<T>>) buffer(j4, j10, timeUnit, io.reactivex.schedulers.b.a(), ArrayListSupplier.asCallable());
    }

    @m7.c
    @m7.g("custom")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.t(n1.i(this, i4, j4, timeUnit, h0Var), oVar);
    }

    @m7.c
    @m7.g("none")
    public final z<T> retry(n7.r<? super Throwable> rVar) {
        return retry(Long.MAX_VALUE, rVar);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> skipLast(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new h3(this, j4, timeUnit, h0Var, i4 << 1, z9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> toMultimap(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<? extends Map<K, Collection<V>>> callable, n7.o<? super K, ? extends Collection<? super V>> oVar3) {
        io.reactivex.internal.functions.b.g(oVar, "keySelector is null");
        io.reactivex.internal.functions.b.g(oVar2, "valueSelector is null");
        io.reactivex.internal.functions.b.g(callable, "mapSupplier is null");
        io.reactivex.internal.functions.b.g(oVar3, "collectionFactory is null");
        return (i0<Map<K, Collection<V>>>) collect(callable, io.reactivex.internal.functions.a.H(oVar, oVar2, oVar3));
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return window(j4, j10, timeUnit, h0Var, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, R> z<R> combineLatestDelayError(Iterable<? extends e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.u(null, iterable, oVar, i4 << 1, true));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static <T> z<T> fromFuture(Future<? extends T> future, h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return fromFuture(future).subscribeOn(h0Var);
    }

    @m7.c
    @m7.g("none")
    public static <T, S> z<T> generate(Callable<S> callable, n7.c<S, i<T>, S> cVar) {
        return generate(callable, cVar, io.reactivex.internal.functions.a.h());
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return fromArray(e0Var, e0Var2).flatMap(io.reactivex.internal.functions.a.k(), false, 2);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(e0<? extends T> e0Var, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return fromArray(e0Var, e0Var2).flatMap(io.reactivex.internal.functions.a.k(), true, 2);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, n7.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.a.x(cVar), false, bufferSize(), e0Var, e0Var2);
    }

    @m7.c
    @m7.g("custom")
    public final z<List<T>> buffer(long j4, long j10, TimeUnit timeUnit, h0 h0Var) {
        return (z<List<T>>) buffer(j4, j10, timeUnit, h0Var, ArrayListSupplier.asCallable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <U, V> z<T> delay(e0<U> e0Var, n7.o<? super T, ? extends e0<V>> oVar) {
        return delaySubscription(e0Var).delay(oVar);
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> sample(e0<U> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "sampler is null");
        return io.reactivex.plugins.a.R(new x2(this, e0Var, false));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> timeout(long j4, TimeUnit timeUnit, h0 h0Var) {
        return timeout0(j4, timeUnit, null, h0Var);
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, long j10, TimeUnit timeUnit, h0 h0Var, int i4) {
        io.reactivex.internal.functions.b.i(j4, "timespan");
        io.reactivex.internal.functions.b.i(j10, "timeskip");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        return io.reactivex.plugins.a.R(new i4(this, j4, j10, timeUnit, h0Var, Long.MAX_VALUE, i4, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <T1, T2, T3, R> z<R> withLatestFrom(e0<T1> e0Var, e0<T2> e0Var2, e0<T3> e0Var3, n7.i<? super T, ? super T1, ? super T2, ? super T3, R> iVar) {
        io.reactivex.internal.functions.b.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "o3 is null");
        io.reactivex.internal.functions.b.g(iVar, "combiner is null");
        return withLatestFrom(new e0[]{e0Var, e0Var2, e0Var3}, io.reactivex.internal.functions.a.z(iVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        return concatArray(e0Var, e0Var2, e0Var3);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T, S> z<T> generate(Callable<S> callable, n7.c<S, i<T>, S> cVar, n7.g<? super S> gVar) {
        io.reactivex.internal.functions.b.g(callable, "initialState is null");
        io.reactivex.internal.functions.b.g(cVar, "generator is null");
        io.reactivex.internal.functions.b.g(gVar, "disposeState is null");
        return io.reactivex.plugins.a.R(new i1(callable, cVar, gVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        return fromArray(t9, t10, t11, t12);
    }

    @m7.c
    @m7.g("custom")
    public final <U extends Collection<? super T>> z<U> buffer(long j4, long j10, TimeUnit timeUnit, h0 h0Var, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.q(this, j4, j10, timeUnit, h0Var, callable, Integer.MAX_VALUE, false));
    }

    @m7.c
    @m7.g("none")
    public final <U, V> z<T> timeout(e0<U> e0Var, n7.o<? super T, ? extends e0<V>> oVar) {
        io.reactivex.internal.functions.b.g(e0Var, "firstTimeoutIndicator is null");
        return timeout0(e0Var, oVar, null);
    }

    @m7.c
    @m7.g("none")
    public final z<T> doOnEach(g0<? super T> g0Var) {
        io.reactivex.internal.functions.b.g(g0Var, "observer is null");
        return doOnEach(n1.f(g0Var), n1.e(g0Var), n1.d(g0Var), io.reactivex.internal.functions.a.f71129c);
    }

    @m7.c
    @m7.g("none")
    public final <U> z<T> sample(e0<U> e0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(e0Var, "sampler is null");
        return io.reactivex.plugins.a.R(new x2(this, e0Var, z9));
    }

    @Override // io.reactivex.e0
    @m7.g("none")
    public final void subscribe(g0<? super T> g0Var) {
        io.reactivex.internal.functions.b.g(g0Var, "observer is null");
        try {
            g0<? super T> f02 = io.reactivex.plugins.a.f0(this, g0Var);
            io.reactivex.internal.functions.b.g(f02, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            subscribeActual(f02);
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

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        return fromArray(e0Var, e0Var2, e0Var3).flatMap(io.reactivex.internal.functions.a.k(), false, 3);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        return fromArray(e0Var, e0Var2, e0Var3).flatMap(io.reactivex.internal.functions.a.k(), true, 3);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, n7.c<? super T1, ? super T2, ? extends R> cVar, boolean z9) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.a.x(cVar), z9, bufferSize(), e0Var, e0Var2);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, n7.o<? super Throwable, ? extends e0<? extends R>> oVar2, Callable<? extends e0<? extends R>> callable) {
        io.reactivex.internal.functions.b.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.b.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.b.g(callable, "onCompleteSupplier is null");
        return merge(new w1(this, oVar, oVar2, callable));
    }

    @m7.c
    @m7.g("io.reactivex:trampoline")
    public final z<T> takeLast(long j4, TimeUnit timeUnit) {
        return takeLast(j4, timeUnit, io.reactivex.schedulers.b.i(), false, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <U, V> z<T> timeout(e0<U> e0Var, n7.o<? super T, ? extends e0<V>> oVar, e0<? extends T> e0Var2) {
        io.reactivex.internal.functions.b.g(e0Var, "firstTimeoutIndicator is null");
        io.reactivex.internal.functions.b.g(e0Var2, "other is null");
        return timeout0(e0Var, oVar, e0Var2);
    }

    @m7.c
    @m7.g("io.reactivex:trampoline")
    public final z<T> takeLast(long j4, TimeUnit timeUnit, boolean z9) {
        return takeLast(j4, timeUnit, io.reactivex.schedulers.b.i(), z9, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <K, V> i0<Map<K, Collection<V>>> toMultimap(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, Callable<Map<K, Collection<V>>> callable) {
        return toMultimap(oVar, oVar2, callable, ArrayListSupplier.asFunction());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, n7.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return combineLatest(io.reactivex.internal.functions.a.x(cVar), bufferSize(), e0Var, e0Var2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> concat(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        return concatArray(e0Var, e0Var2, e0Var3, e0Var4);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<List<T>> buffer(long j4, TimeUnit timeUnit) {
        return buffer(j4, timeUnit, io.reactivex.schedulers.b.a(), Integer.MAX_VALUE);
    }

    @m7.c
    @m7.g("custom")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, int i4, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return s2.t(n1.h(this, i4), n1.k(oVar, h0Var));
    }

    @m7.c
    @m7.g("custom")
    public final z<T> takeLast(long j4, TimeUnit timeUnit, h0 h0Var) {
        return takeLast(j4, timeUnit, h0Var, false, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        return fromArray(t9, t10, t11, t12, t13);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, n7.c<? super T1, ? super T2, ? extends R> cVar, boolean z9, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.a.x(cVar), z9, i4, e0Var, e0Var2);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<List<T>> buffer(long j4, TimeUnit timeUnit, int i4) {
        return buffer(j4, timeUnit, io.reactivex.schedulers.b.a(), i4);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> takeLast(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        return takeLast(j4, timeUnit, h0Var, z9, bufferSize());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<z<T>> window(long j4, TimeUnit timeUnit) {
        return window(j4, timeUnit, io.reactivex.schedulers.b.a(), Long.MAX_VALUE, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.c
    @m7.g("none")
    public final <T1, T2, T3, T4, R> z<R> withLatestFrom(e0<T1> e0Var, e0<T2> e0Var2, e0<T3> e0Var3, e0<T4> e0Var4, n7.j<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> jVar) {
        io.reactivex.internal.functions.b.g(e0Var, "o1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "o2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "o3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "o4 is null");
        io.reactivex.internal.functions.b.g(jVar, "combiner is null");
        return withLatestFrom(new e0[]{e0Var, e0Var2, e0Var3, e0Var4}, io.reactivex.internal.functions.a.A(jVar));
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> merge(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        return fromArray(e0Var, e0Var2, e0Var3, e0Var4).flatMap(io.reactivex.internal.functions.a.k(), false, 4);
    }

    @m7.c
    @m7.g("none")
    public static <T> z<T> mergeDelayError(e0<? extends T> e0Var, e0<? extends T> e0Var2, e0<? extends T> e0Var3, e0<? extends T> e0Var4) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        return fromArray(e0Var, e0Var2, e0Var3, e0Var4).flatMap(io.reactivex.internal.functions.a.k(), true, 4);
    }

    @m7.c
    @m7.g("custom")
    public final z<List<T>> buffer(long j4, TimeUnit timeUnit, h0 h0Var, int i4) {
        return (z<List<T>>) buffer(j4, timeUnit, h0Var, i4, ArrayListSupplier.asCallable(), false);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, n7.o<Throwable, ? extends e0<? extends R>> oVar2, Callable<? extends e0<? extends R>> callable, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "onNextMapper is null");
        io.reactivex.internal.functions.b.g(oVar2, "onErrorMapper is null");
        io.reactivex.internal.functions.b.g(callable, "onCompleteSupplier is null");
        return merge(new w1(this, oVar, oVar2, callable), i4);
    }

    @m7.c
    @m7.g("custom")
    public final z<T> takeLast(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9, int i4) {
        return takeLast(Long.MAX_VALUE, j4, timeUnit, h0Var, z9, i4);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, long j10) {
        return window(j4, timeUnit, io.reactivex.schedulers.b.a(), j10, false);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        return combineLatest(io.reactivex.internal.functions.a.y(hVar), bufferSize(), e0Var, e0Var2, e0Var3);
    }

    @m7.c
    @m7.g("custom")
    public final <U extends Collection<? super T>> z<U> buffer(long j4, TimeUnit timeUnit, h0 h0Var, int i4, Callable<U> callable, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        io.reactivex.internal.functions.b.h(i4, "count");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.q(this, j4, j4, timeUnit, h0Var, callable, i4, z9));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, long j10, boolean z9) {
        return window(j4, timeUnit, io.reactivex.schedulers.b.a(), j10, z9);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, n7.h<? super T1, ? super T2, ? super T3, ? extends R> hVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        return zipArray(io.reactivex.internal.functions.a.y(hVar), false, bufferSize(), e0Var, e0Var2, e0Var3);
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, h0 h0Var) {
        return window(j4, timeUnit, h0Var, Long.MAX_VALUE, false);
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, h0 h0Var, long j10) {
        return window(j4, timeUnit, h0Var, j10, false);
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends R>> oVar, int i4) {
        return flatMap((n7.o) oVar, false, i4, bufferSize());
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, long j4, TimeUnit timeUnit) {
        return replay(oVar, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, h0 h0Var, long j10, boolean z9) {
        return window(j4, timeUnit, h0Var, j10, z9, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        return combineLatest(io.reactivex.internal.functions.a.z(iVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13, T t14) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        return fromArray(t9, t10, t11, t12, t13, t14);
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        return flatMap(oVar, cVar, false, bufferSize(), bufferSize());
    }

    @m7.c
    @m7.g("custom")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.t(n1.j(this, j4, timeUnit, h0Var), oVar);
    }

    @m7.c
    @m7.g("custom")
    public final z<z<T>> window(long j4, TimeUnit timeUnit, h0 h0Var, long j10, boolean z9, int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.i(j10, "count");
        return io.reactivex.plugins.a.R(new i4(this, j4, j4, timeUnit, h0Var, j10, i4, z9));
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, n7.i<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> iVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        return zipArray(io.reactivex.internal.functions.a.z(iVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4);
    }

    @m7.c
    @m7.g("custom")
    public final z<List<T>> buffer(long j4, TimeUnit timeUnit, h0 h0Var) {
        return (z<List<T>>) buffer(j4, timeUnit, h0Var, Integer.MAX_VALUE, ArrayListSupplier.asCallable(), false);
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9) {
        return flatMap(oVar, cVar, z9, bufferSize(), bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> withLatestFrom(e0<?>[] e0VarArr, n7.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.b.g(e0VarArr, "others is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.R(new k4(this, e0VarArr, oVar));
    }

    @m7.c
    @m7.g("none")
    public final <TOpening, TClosing> z<List<T>> buffer(e0<? extends TOpening> e0Var, n7.o<? super TOpening, ? extends e0<? extends TClosing>> oVar) {
        return (z<List<T>>) buffer(e0Var, oVar, ArrayListSupplier.asCallable());
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9, int i4) {
        return flatMap(oVar, cVar, z9, i4, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <TOpening, TClosing, U extends Collection<? super T>> z<U> buffer(e0<? extends TOpening> e0Var, n7.o<? super TOpening, ? extends e0<? extends TClosing>> oVar, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(e0Var, "openingIndicator is null");
        io.reactivex.internal.functions.b.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.n(this, e0Var, oVar, callable));
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, boolean z9, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.g(cVar, "combiner is null");
        return flatMap(n1.b(oVar, cVar), z9, i4, i10);
    }

    @m7.c
    @m7.g("custom")
    public final <R> z<R> replay(n7.o<? super z<T>, ? extends e0<R>> oVar, h0 h0Var) {
        io.reactivex.internal.functions.b.g(oVar, "selector is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.t(n1.g(this), n1.k(oVar, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final <R> z<R> withLatestFrom(Iterable<? extends e0<?>> iterable, n7.o<? super Object[], R> oVar) {
        io.reactivex.internal.functions.b.g(iterable, "others is null");
        io.reactivex.internal.functions.b.g(oVar, "combiner is null");
        return io.reactivex.plugins.a.R(new k4(this, iterable, oVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        return combineLatest(io.reactivex.internal.functions.a.A(jVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5);
    }

    @m7.c
    @m7.g("none")
    public final <B> z<z<T>> window(e0<B> e0Var) {
        return window(e0Var, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, n7.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> jVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        return zipArray(io.reactivex.internal.functions.a.A(jVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5);
    }

    @m7.c
    @m7.g("none")
    public final <U, R> z<R> flatMap(n7.o<? super T, ? extends e0<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar, int i4) {
        return flatMap(oVar, cVar, false, i4, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <B> z<z<T>> window(e0<B> e0Var, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "boundary is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new f4(this, e0Var, i4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13, T t14, T t15) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        return fromArray(t9, t10, t11, t12, t13, t14, t15);
    }

    @m7.c
    @m7.g("none")
    public final <B> z<List<T>> buffer(e0<B> e0Var) {
        return (z<List<T>>) buffer(e0Var, ArrayListSupplier.asCallable());
    }

    @m7.c
    @m7.g("none")
    public final <B> z<List<T>> buffer(e0<B> e0Var, int i4) {
        io.reactivex.internal.functions.b.h(i4, "initialCapacity");
        return (z<List<T>>) buffer(e0Var, io.reactivex.internal.functions.a.f(i4));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observables.a<T> replay(int i4) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return s2.o(this, i4);
    }

    @m7.c
    @m7.g("none")
    public final <U, V> z<z<T>> window(e0<U> e0Var, n7.o<? super U, ? extends e0<V>> oVar) {
        return window(e0Var, oVar, bufferSize());
    }

    @m7.c
    @m7.g("none")
    public final <B, U extends Collection<? super T>> z<U> buffer(e0<B> e0Var, Callable<U> callable) {
        io.reactivex.internal.functions.b.g(e0Var, "boundary is null");
        io.reactivex.internal.functions.b.g(callable, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.p(this, e0Var, callable));
    }

    @m7.c
    @m7.g("none")
    public final <U, V> z<z<T>> window(e0<U> e0Var, n7.o<? super U, ? extends e0<V>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(e0Var, "openingIndicator is null");
        io.reactivex.internal.functions.b.g(oVar, "closingIndicator is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new g4(this, e0Var, oVar, i4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        return combineLatest(io.reactivex.internal.functions.a.B(kVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final io.reactivex.observables.a<T> replay(int i4, long j4, TimeUnit timeUnit) {
        return replay(i4, j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, n7.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> kVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        return zipArray(io.reactivex.internal.functions.a.B(kVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6);
    }

    @m7.c
    @m7.g("custom")
    public final io.reactivex.observables.a<T> replay(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.q(this, j4, timeUnit, h0Var, i4);
    }

    @m7.c
    @m7.g("none")
    public final <B> z<List<T>> buffer(Callable<? extends e0<B>> callable) {
        return (z<List<T>>) buffer(callable, ArrayListSupplier.asCallable());
    }

    @m7.c
    @m7.g("none")
    public final <B, U extends Collection<? super T>> z<U> buffer(Callable<? extends e0<B>> callable, Callable<U> callable2) {
        io.reactivex.internal.functions.b.g(callable, "boundarySupplier is null");
        io.reactivex.internal.functions.b.g(callable2, "bufferSupplier is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.observable.o(this, callable, callable2));
    }

    @m7.c
    @m7.g("none")
    public final <B> z<z<T>> window(Callable<? extends e0<B>> callable) {
        return window(callable, bufferSize());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        io.reactivex.internal.functions.b.g(t16, "item8 is null");
        return fromArray(t9, t10, t11, t12, t13, t14, t15, t16);
    }

    @m7.c
    @m7.g("none")
    public final <B> z<z<T>> window(Callable<? extends e0<B>> callable, int i4) {
        io.reactivex.internal.functions.b.g(callable, "boundary is null");
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return io.reactivex.plugins.a.R(new h4(this, callable, i4));
    }

    @m7.c
    @m7.g("custom")
    public final io.reactivex.observables.a<T> replay(int i4, h0 h0Var) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        return s2.u(replay(i4), h0Var);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        return combineLatest(io.reactivex.internal.functions.a.C(lVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final io.reactivex.observables.a<T> replay(long j4, TimeUnit timeUnit) {
        return replay(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, n7.l<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> lVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        return zipArray(io.reactivex.internal.functions.a.C(lVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7);
    }

    @m7.c
    @m7.g("custom")
    public final io.reactivex.observables.a<T> replay(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.p(this, j4, timeUnit, h0Var);
    }

    @m7.c
    @m7.g("custom")
    public final io.reactivex.observables.a<T> replay(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return s2.u(replay(), h0Var);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17) {
        io.reactivex.internal.functions.b.g(t9, "item1 is null");
        io.reactivex.internal.functions.b.g(t10, "item2 is null");
        io.reactivex.internal.functions.b.g(t11, "item3 is null");
        io.reactivex.internal.functions.b.g(t12, "item4 is null");
        io.reactivex.internal.functions.b.g(t13, "item5 is null");
        io.reactivex.internal.functions.b.g(t14, "item6 is null");
        io.reactivex.internal.functions.b.g(t15, "item7 is null");
        io.reactivex.internal.functions.b.g(t16, "item8 is null");
        io.reactivex.internal.functions.b.g(t17, "item9 is null");
        return fromArray(t9, t10, t11, t12, t13, t14, t15, t16, t17);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(e0Var8, "source8 is null");
        return combineLatest(io.reactivex.internal.functions.a.D(mVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, n7.m<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> mVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(e0Var8, "source8 is null");
        return zipArray(io.reactivex.internal.functions.a.D(mVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> z<T> just(T t9, T t10, T t11, T t12, T t13, T t14, T t15, T t16, T t17, T t18) {
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
        return fromArray(t9, t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> z<R> combineLatest(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, e0<? extends T9> e0Var9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(e0Var8, "source8 is null");
        io.reactivex.internal.functions.b.g(e0Var9, "source9 is null");
        return combineLatest(io.reactivex.internal.functions.a.E(nVar), bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8, e0Var9);
    }

    @m7.c
    @m7.g("none")
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> z<R> zip(e0<? extends T1> e0Var, e0<? extends T2> e0Var2, e0<? extends T3> e0Var3, e0<? extends T4> e0Var4, e0<? extends T5> e0Var5, e0<? extends T6> e0Var6, e0<? extends T7> e0Var7, e0<? extends T8> e0Var8, e0<? extends T9> e0Var9, n7.n<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> nVar) {
        io.reactivex.internal.functions.b.g(e0Var, "source1 is null");
        io.reactivex.internal.functions.b.g(e0Var2, "source2 is null");
        io.reactivex.internal.functions.b.g(e0Var3, "source3 is null");
        io.reactivex.internal.functions.b.g(e0Var4, "source4 is null");
        io.reactivex.internal.functions.b.g(e0Var5, "source5 is null");
        io.reactivex.internal.functions.b.g(e0Var6, "source6 is null");
        io.reactivex.internal.functions.b.g(e0Var7, "source7 is null");
        io.reactivex.internal.functions.b.g(e0Var8, "source8 is null");
        io.reactivex.internal.functions.b.g(e0Var9, "source9 is null");
        return zipArray(io.reactivex.internal.functions.a.E(nVar), false, bufferSize(), e0Var, e0Var2, e0Var3, e0Var4, e0Var5, e0Var6, e0Var7, e0Var8, e0Var9);
    }
}
