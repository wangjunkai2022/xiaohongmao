package io.reactivex;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.internal.observers.CallbackCompletableObserver;
import io.reactivex.internal.observers.EmptyCompletableObserver;
import io.reactivex.internal.operators.completable.q0;
import io.reactivex.internal.operators.completable.r0;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Completable.java */
/* loaded from: classes3.dex */
public abstract class a implements g {
    @m7.e
    @m7.c
    @m7.g("none")
    public static a A(Callable<? extends g> callable) {
        io.reactivex.internal.functions.b.g(callable, "completableSupplier");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.h(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    private a M(n7.g<? super io.reactivex.disposables.c> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2, n7.a aVar3, n7.a aVar4) {
        io.reactivex.internal.functions.b.g(gVar, "onSubscribe is null");
        io.reactivex.internal.functions.b.g(gVar2, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        io.reactivex.internal.functions.b.g(aVar2, "onTerminate is null");
        io.reactivex.internal.functions.b.g(aVar3, "onAfterTerminate is null");
        io.reactivex.internal.functions.b.g(aVar4, "onDispose is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.i0(this, gVar, gVar2, aVar, aVar2, aVar3, aVar4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a P(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "error is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.o(th));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a Q(Callable<? extends Throwable> callable) {
        io.reactivex.internal.functions.b.g(callable, "errorSupplier is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.p(callable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a R(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "run is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.q(aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a S(Callable<?> callable) {
        io.reactivex.internal.functions.b.g(callable, "callable is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.r(callable));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    private a S0(long j4, TimeUnit timeUnit, h0 h0Var, g gVar) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.m0(this, j4, timeUnit, h0Var, gVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a T(Future<?> future) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return R(io.reactivex.internal.functions.a.j(future));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public static a T0(long j4, TimeUnit timeUnit) {
        return U0(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> a U(w<T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "maybe is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.maybe.p0(wVar));
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public static a U0(long j4, TimeUnit timeUnit, h0 h0Var) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.n0(j4, timeUnit, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> a V(e0<T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "observable is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.s(e0Var));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.e
    @m7.g("none")
    public static <T> a W(org.reactivestreams.c<T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "publisher is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.t(cVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a X(Runnable runnable) {
        io.reactivex.internal.functions.b.g(runnable, "run is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.u(runnable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <T> a Y(o0<T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "single is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.v(o0Var));
    }

    private static NullPointerException Y0(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a c0(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.e0(iterable));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a c1(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "source is null");
        if (!(gVar instanceof a)) {
            return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.w(gVar));
        }
        throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public static a d0(org.reactivestreams.c<? extends g> cVar) {
        return f0(cVar, Integer.MAX_VALUE, false);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a e(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.a(null, iterable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static a e0(org.reactivestreams.c<? extends g> cVar, int i4) {
        return f0(cVar, i4, false);
    }

    @m7.c
    @m7.g("none")
    public static <R> a e1(Callable<R> callable, n7.o<? super R, ? extends g> oVar, n7.g<? super R> gVar) {
        return f1(callable, oVar, gVar, true);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a f(g... gVarArr) {
        io.reactivex.internal.functions.b.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return g1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.a(gVarArr, null));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    private static a f0(org.reactivestreams.c<? extends g> cVar, int i4, boolean z9) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "maxConcurrency");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.a0(cVar, i4, z9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static <R> a f1(Callable<R> callable, n7.o<? super R, ? extends g> oVar, n7.g<? super R> gVar, boolean z9) {
        io.reactivex.internal.functions.b.g(callable, "resourceSupplier is null");
        io.reactivex.internal.functions.b.g(oVar, "completableFunction is null");
        io.reactivex.internal.functions.b.g(gVar, "disposer is null");
        return io.reactivex.plugins.a.O(new r0(callable, oVar, gVar, z9));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a g0(g... gVarArr) {
        io.reactivex.internal.functions.b.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return g1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.b0(gVarArr));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a g1(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "source is null");
        if (gVar instanceof a) {
            return io.reactivex.plugins.a.O((a) gVar);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.w(gVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a h0(g... gVarArr) {
        io.reactivex.internal.functions.b.g(gVarArr, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.c0(gVarArr));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a i0(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.d0(iterable));
    }

    @m7.a(BackpressureKind.UNBOUNDED_IN)
    @m7.c
    @m7.g("none")
    public static a j0(org.reactivestreams.c<? extends g> cVar) {
        return f0(cVar, Integer.MAX_VALUE, true);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static a k0(org.reactivestreams.c<? extends g> cVar, int i4) {
        return f0(cVar, i4, true);
    }

    @m7.c
    @m7.g("none")
    public static a m0() {
        return io.reactivex.plugins.a.O(io.reactivex.internal.operators.completable.f0.f71341a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a s() {
        return io.reactivex.plugins.a.O(io.reactivex.internal.operators.completable.n.f71430a);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a u(Iterable<? extends g> iterable) {
        io.reactivex.internal.functions.b.g(iterable, "sources is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.f(iterable));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public static a v(org.reactivestreams.c<? extends g> cVar) {
        return w(cVar, 2);
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public static a w(org.reactivestreams.c<? extends g> cVar, int i4) {
        io.reactivex.internal.functions.b.g(cVar, "sources is null");
        io.reactivex.internal.functions.b.h(i4, "prefetch");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.d(cVar, i4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a x(g... gVarArr) {
        io.reactivex.internal.functions.b.g(gVarArr, "sources is null");
        if (gVarArr.length == 0) {
            return s();
        }
        if (gVarArr.length == 1) {
            return g1(gVarArr[0]);
        }
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.e(gVarArr));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public static a z(e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "source is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.g(eVar));
    }

    @m7.c
    @m7.g("none")
    public final a A0(n7.r<? super Throwable> rVar) {
        return W(W0().r5(rVar));
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final a B(long j4, TimeUnit timeUnit) {
        return D(j4, timeUnit, io.reactivex.schedulers.b.a(), false);
    }

    @m7.c
    @m7.g("none")
    public final a B0(n7.o<? super j<Throwable>, ? extends org.reactivestreams.c<?>> oVar) {
        return W(W0().t5(oVar));
    }

    @m7.c
    @m7.g("custom")
    public final a C(long j4, TimeUnit timeUnit, h0 h0Var) {
        return D(j4, timeUnit, h0Var, false);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a C0(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return x(gVar, this);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final a D(long j4, TimeUnit timeUnit, h0 h0Var, boolean z9) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.i(this, j4, timeUnit, h0Var, z9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <T> j<T> D0(org.reactivestreams.c<T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "other is null");
        return W0().c6(cVar);
    }

    @m7.d
    @m7.c
    @m7.g("io.reactivex:computation")
    public final a E(long j4, TimeUnit timeUnit) {
        return F(j4, timeUnit, io.reactivex.schedulers.b.a());
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> z<T> E0(z<T> zVar) {
        io.reactivex.internal.functions.b.g(zVar, "other is null");
        return zVar.concatWith(Z0());
    }

    @m7.d
    @m7.c
    @m7.g("custom")
    public final a F(long j4, TimeUnit timeUnit, h0 h0Var) {
        return U0(j4, timeUnit, h0Var).h(this);
    }

    @m7.g("none")
    public final io.reactivex.disposables.c F0() {
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        d(emptyCompletableObserver);
        return emptyCompletableObserver;
    }

    @m7.c
    @m7.g("none")
    public final a G(n7.a aVar) {
        n7.g<? super io.reactivex.disposables.c> h4 = io.reactivex.internal.functions.a.h();
        n7.g<? super Throwable> h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return M(h4, h10, aVar2, aVar2, aVar, aVar2);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c G0(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(aVar);
        d(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a H(n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "onFinally is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.l(this, aVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final io.reactivex.disposables.c H0(n7.a aVar, n7.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onError is null");
        io.reactivex.internal.functions.b.g(aVar, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(gVar, aVar);
        d(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    @m7.c
    @m7.g("none")
    public final a I(n7.a aVar) {
        n7.g<? super io.reactivex.disposables.c> h4 = io.reactivex.internal.functions.a.h();
        n7.g<? super Throwable> h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return M(h4, h10, aVar, aVar2, aVar2, aVar2);
    }

    protected abstract void I0(d dVar);

    @m7.c
    @m7.g("none")
    public final a J(n7.a aVar) {
        n7.g<? super io.reactivex.disposables.c> h4 = io.reactivex.internal.functions.a.h();
        n7.g<? super Throwable> h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return M(h4, h10, aVar2, aVar2, aVar2, aVar);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final a J0(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.k0(this, h0Var));
    }

    @m7.c
    @m7.g("none")
    public final a K(n7.g<? super Throwable> gVar) {
        n7.g<? super io.reactivex.disposables.c> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return M(h4, gVar, aVar, aVar, aVar, aVar);
    }

    @m7.c
    @m7.g("none")
    public final <E extends d> E K0(E e4) {
        d(e4);
        return e4;
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a L(n7.g<? super Throwable> gVar) {
        io.reactivex.internal.functions.b.g(gVar, "onEvent is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.m(this, gVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a L0(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.l0(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<Void> M0() {
        io.reactivex.observers.m<Void> mVar = new io.reactivex.observers.m<>();
        d(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("none")
    public final a N(n7.g<? super io.reactivex.disposables.c> gVar) {
        n7.g<? super Throwable> h4 = io.reactivex.internal.functions.a.h();
        n7.a aVar = io.reactivex.internal.functions.a.f71129c;
        return M(gVar, h4, aVar, aVar, aVar, aVar);
    }

    @m7.c
    @m7.g("none")
    public final io.reactivex.observers.m<Void> N0(boolean z9) {
        io.reactivex.observers.m<Void> mVar = new io.reactivex.observers.m<>();
        if (z9) {
            mVar.cancel();
        }
        d(mVar);
        return mVar;
    }

    @m7.c
    @m7.g("none")
    public final a O(n7.a aVar) {
        n7.g<? super io.reactivex.disposables.c> h4 = io.reactivex.internal.functions.a.h();
        n7.g<? super Throwable> h10 = io.reactivex.internal.functions.a.h();
        n7.a aVar2 = io.reactivex.internal.functions.a.f71129c;
        return M(h4, h10, aVar2, aVar, aVar2, aVar2);
    }

    @m7.c
    @m7.g("io.reactivex:computation")
    public final a O0(long j4, TimeUnit timeUnit) {
        return S0(j4, timeUnit, io.reactivex.schedulers.b.a(), null);
    }

    @m7.e
    @m7.c
    @m7.g("io.reactivex:computation")
    public final a P0(long j4, TimeUnit timeUnit, g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return S0(j4, timeUnit, io.reactivex.schedulers.b.a(), gVar);
    }

    @m7.c
    @m7.g("custom")
    public final a Q0(long j4, TimeUnit timeUnit, h0 h0Var) {
        return S0(j4, timeUnit, h0Var, null);
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final a R0(long j4, TimeUnit timeUnit, h0 h0Var, g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return S0(j4, timeUnit, h0Var, gVar);
    }

    @m7.c
    @m7.g("none")
    public final <U> U V0(n7.o<? super a, U> oVar) {
        try {
            return (U) ((n7.o) io.reactivex.internal.functions.b.g(oVar, "converter is null")).apply(this);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.g("none")
    public final <T> j<T> W0() {
        if (this instanceof o7.b) {
            return ((o7.b) this).c();
        }
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.completable.o0(this));
    }

    @m7.c
    @m7.g("none")
    public final <T> q<T> X0() {
        if (this instanceof o7.c) {
            return ((o7.c) this).b();
        }
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.j0(this));
    }

    @m7.c
    @m7.g("none")
    public final a Z() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.x(this));
    }

    @m7.c
    @m7.g("none")
    public final <T> z<T> Z0() {
        if (this instanceof o7.d) {
            return ((o7.d) this).a();
        }
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.completable.p0(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a a0(f fVar) {
        io.reactivex.internal.functions.b.g(fVar, "onLift is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.y(this, fVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> i0<T> a1(Callable<? extends T> callable) {
        io.reactivex.internal.functions.b.g(callable, "completionValueSupplier is null");
        return io.reactivex.plugins.a.S(new q0(this, callable, null));
    }

    @m7.d
    @m7.c
    @m7.g("none")
    public final <T> i0<y<T>> b0() {
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.completable.z(this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> i0<T> b1(T t9) {
        io.reactivex.internal.functions.b.g(t9, "completionValue is null");
        return io.reactivex.plugins.a.S(new q0(this, null, t9));
    }

    @Override // io.reactivex.g
    @m7.g("none")
    public final void d(d dVar) {
        io.reactivex.internal.functions.b.g(dVar, "observer is null");
        try {
            d d02 = io.reactivex.plugins.a.d0(this, dVar);
            io.reactivex.internal.functions.b.g(d02, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            I0(d02);
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            throw Y0(th);
        }
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final a d1(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.k(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a g(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return f(this, gVar);
    }

    @m7.c
    @m7.g("none")
    public final a h(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "next is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.b(this, gVar));
    }

    @m7.a(BackpressureKind.FULL)
    @m7.c
    @m7.e
    @m7.g("none")
    public final <T> j<T> i(org.reactivestreams.c<T> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "next is null");
        return io.reactivex.plugins.a.P(new io.reactivex.internal.operators.mixed.b(this, cVar));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> q<T> j(w<T> wVar) {
        io.reactivex.internal.functions.b.g(wVar, "next is null");
        return io.reactivex.plugins.a.Q(new io.reactivex.internal.operators.maybe.n(wVar, this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> z<T> k(e0<T> e0Var) {
        io.reactivex.internal.functions.b.g(e0Var, "next is null");
        return io.reactivex.plugins.a.R(new io.reactivex.internal.operators.mixed.a(this, e0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final <T> i0<T> l(o0<T> o0Var) {
        io.reactivex.internal.functions.b.g(o0Var, "next is null");
        return io.reactivex.plugins.a.S(new io.reactivex.internal.operators.single.g(o0Var, this));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a l0(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return g0(this, gVar);
    }

    @m7.c
    @m7.g("none")
    public final <R> R m(@m7.e b<? extends R> bVar) {
        return (R) ((b) io.reactivex.internal.functions.b.g(bVar, "converter is null")).a(this);
    }

    @m7.g("none")
    public final void n() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        d(fVar);
        fVar.b();
    }

    @m7.e
    @m7.c
    @m7.g("custom")
    public final a n0(h0 h0Var) {
        io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.g0(this, h0Var));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final boolean o(long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        d(fVar);
        return fVar.a(j4, timeUnit);
    }

    @m7.c
    @m7.g("none")
    public final a o0() {
        return p0(io.reactivex.internal.functions.a.c());
    }

    @m7.f
    @m7.c
    @m7.g("none")
    public final Throwable p() {
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        d(fVar);
        return fVar.d();
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a p0(n7.r<? super Throwable> rVar) {
        io.reactivex.internal.functions.b.g(rVar, "predicate is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.h0(this, rVar));
    }

    @m7.f
    @m7.c
    @m7.g("none")
    public final Throwable q(long j4, TimeUnit timeUnit) {
        io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
        io.reactivex.internal.observers.f fVar = new io.reactivex.internal.observers.f();
        d(fVar);
        return fVar.e(j4, timeUnit);
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a q0(n7.o<? super Throwable, ? extends g> oVar) {
        io.reactivex.internal.functions.b.g(oVar, "errorMapper is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.j0(this, oVar));
    }

    @m7.c
    @m7.g("none")
    public final a r() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.c(this));
    }

    @m7.c
    @m7.g("none")
    public final a r0() {
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.j(this));
    }

    @m7.c
    @m7.g("none")
    public final a s0() {
        return W(W0().T4());
    }

    @m7.c
    @m7.g("none")
    public final a t(h hVar) {
        return g1(((h) io.reactivex.internal.functions.b.g(hVar, "transformer is null")).a(this));
    }

    @m7.c
    @m7.g("none")
    public final a t0(long j4) {
        return W(W0().U4(j4));
    }

    @m7.c
    @m7.g("none")
    public final a u0(n7.e eVar) {
        return W(W0().V4(eVar));
    }

    @m7.c
    @m7.g("none")
    public final a v0(n7.o<? super j<Object>, ? extends org.reactivestreams.c<?>> oVar) {
        return W(W0().W4(oVar));
    }

    @m7.c
    @m7.g("none")
    public final a w0() {
        return W(W0().n5());
    }

    @m7.c
    @m7.g("none")
    public final a x0(long j4) {
        return W(W0().o5(j4));
    }

    @m7.e
    @m7.c
    @m7.g("none")
    public final a y(g gVar) {
        io.reactivex.internal.functions.b.g(gVar, "other is null");
        return io.reactivex.plugins.a.O(new io.reactivex.internal.operators.completable.b(this, gVar));
    }

    @m7.c
    @m7.g("none")
    public final a y0(long j4, n7.r<? super Throwable> rVar) {
        return W(W0().p5(j4, rVar));
    }

    @m7.c
    @m7.g("none")
    public final a z0(n7.d<? super Integer, ? super Throwable> dVar) {
        return W(W0().q5(dVar));
    }
}
