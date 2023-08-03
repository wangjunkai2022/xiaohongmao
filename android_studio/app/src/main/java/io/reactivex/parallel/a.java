package io.reactivex.parallel;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.h0;
import io.reactivex.internal.operators.parallel.f;
import io.reactivex.internal.operators.parallel.g;
import io.reactivex.internal.operators.parallel.h;
import io.reactivex.internal.operators.parallel.i;
import io.reactivex.internal.operators.parallel.k;
import io.reactivex.internal.operators.parallel.l;
import io.reactivex.internal.operators.parallel.m;
import io.reactivex.internal.operators.parallel.n;
import io.reactivex.internal.operators.parallel.p;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ListAddBiConsumer;
import io.reactivex.j;
import io.sentry.protocol.v;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import m7.e;
import n7.o;
import n7.q;
import n7.r;
import org.reactivestreams.d;

/* compiled from: ParallelFlowable.java */
/* loaded from: classes4.dex */
public abstract class a<T> {
    @e
    @m7.c
    public static <T> a<T> A(@e org.reactivestreams.c<? extends T> cVar, int i4, int i10) {
        io.reactivex.internal.functions.b.g(cVar, v.b.f83881a);
        io.reactivex.internal.functions.b.h(i4, "parallelism");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.V(new h(cVar, i4, i10));
    }

    @e
    @m7.c
    public static <T> a<T> B(@e org.reactivestreams.c<T>... cVarArr) {
        if (cVarArr.length != 0) {
            return io.reactivex.plugins.a.V(new g(cVarArr));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    @m7.c
    public static <T> a<T> y(@e org.reactivestreams.c<? extends T> cVar) {
        return A(cVar, Runtime.getRuntime().availableProcessors(), j.Y());
    }

    @m7.c
    public static <T> a<T> z(@e org.reactivestreams.c<? extends T> cVar, int i4) {
        return A(cVar, i4, j.Y());
    }

    @e
    @m7.c
    public final <R> a<R> C(@e o<? super T, ? extends R> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.j(this, oVar));
    }

    @e
    @m7.c
    public final <R> a<R> D(@e o<? super T, ? extends R> oVar, @e ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.b.g(oVar, "mapper");
        io.reactivex.internal.functions.b.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new k(this, oVar, parallelFailureHandling));
    }

    @e
    @m7.c
    public final <R> a<R> E(@e o<? super T, ? extends R> oVar, @e n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.b.g(oVar, "mapper");
        io.reactivex.internal.functions.b.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new k(this, oVar, cVar));
    }

    public abstract int F();

    @e
    @m7.c
    public final j<T> G(@e n7.c<T, T, T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "reducer");
        return io.reactivex.plugins.a.P(new n(this, cVar));
    }

    @e
    @m7.c
    public final <R> a<R> H(@e Callable<R> callable, @e n7.c<R, ? super T, R> cVar) {
        io.reactivex.internal.functions.b.g(callable, "initialSupplier");
        io.reactivex.internal.functions.b.g(cVar, "reducer");
        return io.reactivex.plugins.a.V(new m(this, callable, cVar));
    }

    @e
    @m7.c
    public final a<T> I(@e h0 h0Var) {
        return J(h0Var, j.Y());
    }

    @e
    @m7.c
    public final a<T> J(@e h0 h0Var, int i4) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.o(this, h0Var, i4));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final j<T> K() {
        return L(j.Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @e
    @m7.g("none")
    public final j<T> L(int i4) {
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new i(this, i4, false));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @e
    @m7.g("none")
    public final j<T> M() {
        return N(j.Y());
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @e
    @m7.g("none")
    public final j<T> N(int i4) {
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.P(new i(this, i4, true));
    }

    @e
    @m7.c
    public final j<T> O(@e Comparator<? super T> comparator) {
        return P(comparator, 16);
    }

    @e
    @m7.c
    public final j<T> P(@e Comparator<? super T> comparator, int i4) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        io.reactivex.internal.functions.b.h(i4, "capacityHint");
        return io.reactivex.plugins.a.P(new p(H(io.reactivex.internal.functions.a.f((i4 / F()) + 1), ListAddBiConsumer.instance()).C(new io.reactivex.internal.util.p(comparator)), comparator));
    }

    public abstract void Q(@e d<? super T>[] dVarArr);

    @e
    @m7.c
    public final <U> U R(@e o<? super a<T>, U> oVar) {
        try {
            return (U) ((o) io.reactivex.internal.functions.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @e
    @m7.c
    public final j<List<T>> S(@e Comparator<? super T> comparator) {
        return T(comparator, 16);
    }

    @e
    @m7.c
    public final j<List<T>> T(@e Comparator<? super T> comparator, int i4) {
        io.reactivex.internal.functions.b.g(comparator, "comparator is null");
        io.reactivex.internal.functions.b.h(i4, "capacityHint");
        return io.reactivex.plugins.a.P(H(io.reactivex.internal.functions.a.f((i4 / F()) + 1), ListAddBiConsumer.instance()).C(new io.reactivex.internal.util.p(comparator)).G(new io.reactivex.internal.util.j(comparator)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean U(@e d<?>[] dVarArr) {
        int F = F();
        if (dVarArr.length != F) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + F + ", subscribers = " + dVarArr.length);
            for (d<?> dVar : dVarArr) {
                EmptySubscription.error(illegalArgumentException, dVar);
            }
            return false;
        }
        return true;
    }

    @e
    @m7.c
    public final <R> R a(@e b<T, R> bVar) {
        return (R) ((b) io.reactivex.internal.functions.b.g(bVar, "converter is null")).a(this);
    }

    @e
    @m7.c
    public final <C> a<C> b(@e Callable<? extends C> callable, @e n7.b<? super C, ? super T> bVar) {
        io.reactivex.internal.functions.b.g(callable, "collectionSupplier is null");
        io.reactivex.internal.functions.b.g(bVar, "collector is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.a(this, callable, bVar));
    }

    @e
    @m7.c
    public final <U> a<U> c(@e c<T, U> cVar) {
        return io.reactivex.plugins.a.V(((c) io.reactivex.internal.functions.b.g(cVar, "composer is null")).a(this));
    }

    @e
    @m7.c
    public final <R> a<R> d(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return e(oVar, 2);
    }

    @e
    @m7.c
    public final <R> a<R> e(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.b(this, oVar, i4, ErrorMode.IMMEDIATE));
    }

    @e
    @m7.c
    public final <R> a<R> f(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.b(this, oVar, i4, z9 ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @e
    @m7.c
    public final <R> a<R> g(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9) {
        return f(oVar, 2, z9);
    }

    @e
    @m7.c
    public final a<T> h(@e n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onAfterNext is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, gVar, h10, aVar, aVar, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar));
    }

    @e
    @m7.c
    public final a<T> i(@e n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onAfterTerminate is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, h11, aVar2, aVar, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar2));
    }

    @e
    @m7.c
    public final a<T> j(@e n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onCancel is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, h11, aVar2, aVar2, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar));
    }

    @e
    @m7.c
    public final a<T> k(@e n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, h11, aVar, aVar2, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar2));
    }

    @e
    @m7.c
    public final a<T> l(@e n7.g<Throwable> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onError is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, gVar, aVar, aVar, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar));
    }

    @e
    @m7.c
    public final a<T> m(@e n7.g<? super T> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, gVar, h4, h10, aVar, aVar, io.reactivex.internal.functions.a.h(), io.reactivex.internal.functions.a.f71133g, aVar));
    }

    @e
    @m7.c
    public final a<T> n(@e n7.g<? super T> gVar, @e ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.c(this, gVar, parallelFailureHandling));
    }

    @e
    @m7.c
    public final a<T> o(@e n7.g<? super T> gVar, @e n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.b.g(gVar, "onNext is null");
        io.reactivex.internal.functions.b.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.c(this, gVar, cVar));
    }

    @e
    @m7.c
    public final a<T> p(@e q qVar) {
        io.reactivex.internal.functions.b.g(qVar, "onRequest is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, h11, aVar, aVar, io.reactivex.internal.functions.a.h(), qVar, aVar));
    }

    @e
    @m7.c
    public final a<T> q(@e n7.g<? super org.reactivestreams.e> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null");
        n7.g h4 = io.reactivex.internal.functions.a.h();
        n7.g h10 = io.reactivex.internal.functions.a.h();
        n7.g h11 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return io.reactivex.plugins.a.V(new l(this, h4, h10, h11, aVar, aVar, gVar, io.reactivex.internal.functions.a.f71133g, aVar));
    }

    @m7.c
    public final a<T> r(@e r<? super T> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.d(this, rVar));
    }

    @m7.c
    public final a<T> s(@e r<? super T> rVar, @e ParallelFailureHandling parallelFailureHandling) {
        io.reactivex.internal.functions.b.g(rVar, "predicate");
        io.reactivex.internal.functions.b.g(parallelFailureHandling, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.e(this, rVar, parallelFailureHandling));
    }

    @m7.c
    public final a<T> t(@e r<? super T> rVar, @e n7.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate");
        io.reactivex.internal.functions.b.g(cVar, "errorHandler is null");
        return io.reactivex.plugins.a.V(new io.reactivex.internal.operators.parallel.e(this, rVar, cVar));
    }

    @e
    @m7.c
    public final <R> a<R> u(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        return x(oVar, false, Integer.MAX_VALUE, j.Y());
    }

    @e
    @m7.c
    public final <R> a<R> v(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9) {
        return x(oVar, z9, Integer.MAX_VALUE, j.Y());
    }

    @e
    @m7.c
    public final <R> a<R> w(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9, int i4) {
        return x(oVar, z9, i4, j.Y());
    }

    @e
    @m7.c
    public final <R> a<R> x(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, boolean z9, int i4, int i10) {
        io.reactivex.internal.functions.b.g(oVar, "mapper is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        io.reactivex.internal.functions.b.h(i10, "prefetch");
        return io.reactivex.plugins.a.V(new f(this, oVar, z9, i4, i10));
    }
}
