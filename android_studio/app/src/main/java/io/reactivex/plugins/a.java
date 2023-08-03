package io.reactivex.plugins;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.g0;
import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.internal.functions.b;
import io.reactivex.internal.schedulers.h;
import io.reactivex.internal.schedulers.n;
import io.reactivex.j;
import io.reactivex.l0;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.z;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import m7.f;
import n7.c;
import n7.e;
import n7.g;
import n7.o;
import org.reactivestreams.d;

/* compiled from: RxJavaPlugins.java */
/* loaded from: classes4.dex */
public final class a {
    @f

    /* renamed from: a  reason: collision with root package name */
    static volatile g<? super Throwable> f75975a;
    @f

    /* renamed from: b  reason: collision with root package name */
    static volatile o<? super Runnable, ? extends Runnable> f75976b;
    @f

    /* renamed from: c  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f75977c;
    @f

    /* renamed from: d  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f75978d;
    @f

    /* renamed from: e  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f75979e;
    @f

    /* renamed from: f  reason: collision with root package name */
    static volatile o<? super Callable<h0>, ? extends h0> f75980f;
    @f

    /* renamed from: g  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f75981g;
    @f

    /* renamed from: h  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f75982h;
    @f

    /* renamed from: i  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f75983i;
    @f

    /* renamed from: j  reason: collision with root package name */
    static volatile o<? super h0, ? extends h0> f75984j;
    @f

    /* renamed from: k  reason: collision with root package name */
    static volatile o<? super j, ? extends j> f75985k;
    @f

    /* renamed from: l  reason: collision with root package name */
    static volatile o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> f75986l;
    @f

    /* renamed from: m  reason: collision with root package name */
    static volatile o<? super z, ? extends z> f75987m;
    @f

    /* renamed from: n  reason: collision with root package name */
    static volatile o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> f75988n;
    @f

    /* renamed from: o  reason: collision with root package name */
    static volatile o<? super q, ? extends q> f75989o;
    @f

    /* renamed from: p  reason: collision with root package name */
    static volatile o<? super i0, ? extends i0> f75990p;
    @f

    /* renamed from: q  reason: collision with root package name */
    static volatile o<? super io.reactivex.a, ? extends io.reactivex.a> f75991q;
    @f

    /* renamed from: r  reason: collision with root package name */
    static volatile o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> f75992r;
    @f

    /* renamed from: s  reason: collision with root package name */
    static volatile c<? super j, ? super d, ? extends d> f75993s;
    @f

    /* renamed from: t  reason: collision with root package name */
    static volatile c<? super q, ? super t, ? extends t> f75994t;
    @f

    /* renamed from: u  reason: collision with root package name */
    static volatile c<? super z, ? super g0, ? extends g0> f75995u;
    @f

    /* renamed from: v  reason: collision with root package name */
    static volatile c<? super i0, ? super l0, ? extends l0> f75996v;
    @f

    /* renamed from: w  reason: collision with root package name */
    static volatile c<? super io.reactivex.a, ? super io.reactivex.d, ? extends io.reactivex.d> f75997w;
    @f

    /* renamed from: x  reason: collision with root package name */
    static volatile e f75998x;

    /* renamed from: y  reason: collision with root package name */
    static volatile boolean f75999y;

    /* renamed from: z  reason: collision with root package name */
    static volatile boolean f76000z;

    private a() {
        throw new IllegalStateException("No instances!");
    }

    @f
    public static c<? super z, ? super g0, ? extends g0> A() {
        return f75995u;
    }

    public static void A0(@f c<? super q, t, ? extends t> cVar) {
        if (!f75999y) {
            f75994t = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> B() {
        return f75992r;
    }

    public static void B0(@f o<? super z, ? extends z> oVar) {
        if (!f75999y) {
            f75987m = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super i0, ? extends i0> C() {
        return f75990p;
    }

    public static void C0(@f c<? super z, ? super g0, ? extends g0> cVar) {
        if (!f75999y) {
            f75995u = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super i0, ? super l0, ? extends l0> D() {
        return f75996v;
    }

    public static void D0(@f o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> oVar) {
        if (!f75999y) {
            f75992r = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Runnable, ? extends Runnable> E() {
        return f75976b;
    }

    public static void E0(@f o<? super i0, ? extends i0> oVar) {
        if (!f75999y) {
            f75990p = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super h0, ? extends h0> F() {
        return f75982h;
    }

    public static void F0(@f c<? super i0, ? super l0, ? extends l0> cVar) {
        if (!f75999y) {
            f75996v = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @m7.e
    public static h0 G(@m7.e Callable<h0> callable) {
        b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f75977c;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static void G0(@f o<? super Runnable, ? extends Runnable> oVar) {
        if (!f75999y) {
            f75976b = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @m7.e
    public static h0 H(@m7.e Callable<h0> callable) {
        b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f75979e;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    public static void H0(@f o<? super h0, ? extends h0> oVar) {
        if (!f75999y) {
            f75982h = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @m7.e
    public static h0 I(@m7.e Callable<h0> callable) {
        b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f75980f;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    static void I0(@m7.e Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }

    @m7.e
    public static h0 J(@m7.e Callable<h0> callable) {
        b.g(callable, "Scheduler Callable can't be null");
        o<? super Callable<h0>, ? extends h0> oVar = f75978d;
        if (oVar == null) {
            return d(callable);
        }
        return c(oVar, callable);
    }

    static void J0() {
        f75999y = false;
    }

    static boolean K(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    public static boolean L() {
        return f76000z;
    }

    public static boolean M() {
        return f75999y;
    }

    public static void N() {
        f75999y = true;
    }

    @m7.e
    public static io.reactivex.a O(@m7.e io.reactivex.a aVar) {
        o<? super io.reactivex.a, ? extends io.reactivex.a> oVar = f75991q;
        return oVar != null ? (io.reactivex.a) b(oVar, aVar) : aVar;
    }

    @m7.e
    public static <T> j<T> P(@m7.e j<T> jVar) {
        o<? super j, ? extends j> oVar = f75985k;
        return oVar != null ? (j) b(oVar, jVar) : jVar;
    }

    @m7.e
    public static <T> q<T> Q(@m7.e q<T> qVar) {
        o<? super q, ? extends q> oVar = f75989o;
        return oVar != null ? (q) b(oVar, qVar) : qVar;
    }

    @m7.e
    public static <T> z<T> R(@m7.e z<T> zVar) {
        o<? super z, ? extends z> oVar = f75987m;
        return oVar != null ? (z) b(oVar, zVar) : zVar;
    }

    @m7.e
    public static <T> i0<T> S(@m7.e i0<T> i0Var) {
        o<? super i0, ? extends i0> oVar = f75990p;
        return oVar != null ? (i0) b(oVar, i0Var) : i0Var;
    }

    @m7.e
    public static <T> io.reactivex.flowables.a<T> T(@m7.e io.reactivex.flowables.a<T> aVar) {
        o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> oVar = f75986l;
        return oVar != null ? (io.reactivex.flowables.a) b(oVar, aVar) : aVar;
    }

    @m7.e
    public static <T> io.reactivex.observables.a<T> U(@m7.e io.reactivex.observables.a<T> aVar) {
        o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> oVar = f75988n;
        return oVar != null ? (io.reactivex.observables.a) b(oVar, aVar) : aVar;
    }

    @m7.e
    public static <T> io.reactivex.parallel.a<T> V(@m7.e io.reactivex.parallel.a<T> aVar) {
        o<? super io.reactivex.parallel.a, ? extends io.reactivex.parallel.a> oVar = f75992r;
        return oVar != null ? (io.reactivex.parallel.a) b(oVar, aVar) : aVar;
    }

    public static boolean W() {
        e eVar = f75998x;
        if (eVar != null) {
            try {
                return eVar.a();
            } catch (Throwable th) {
                throw io.reactivex.internal.util.g.f(th);
            }
        }
        return false;
    }

    @m7.e
    public static h0 X(@m7.e h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f75981g;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    public static void Y(@m7.e Throwable th) {
        g<? super Throwable> gVar = f75975a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!K(th)) {
            th = new UndeliverableException(th);
        }
        if (gVar != null) {
            try {
                gVar.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                I0(th2);
            }
        }
        th.printStackTrace();
        I0(th);
    }

    @m7.e
    public static h0 Z(@m7.e h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f75983i;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @m7.e
    static <T, U, R> R a(@m7.e c<T, U, R> cVar, @m7.e T t9, @m7.e U u9) {
        try {
            return cVar.apply(t9, u9);
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.e
    public static h0 a0(@m7.e h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f75984j;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @m7.e
    static <T, R> R b(@m7.e o<T, R> oVar, @m7.e T t9) {
        try {
            return oVar.apply(t9);
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.e
    public static Runnable b0(@m7.e Runnable runnable) {
        b.g(runnable, "run is null");
        o<? super Runnable, ? extends Runnable> oVar = f75976b;
        return oVar == null ? runnable : (Runnable) b(oVar, runnable);
    }

    @m7.e
    static h0 c(@m7.e o<? super Callable<h0>, ? extends h0> oVar, Callable<h0> callable) {
        return (h0) b.g(b(oVar, callable), "Scheduler Callable result can't be null");
    }

    @m7.e
    public static h0 c0(@m7.e h0 h0Var) {
        o<? super h0, ? extends h0> oVar = f75982h;
        return oVar == null ? h0Var : (h0) b(oVar, h0Var);
    }

    @m7.e
    static h0 d(@m7.e Callable<h0> callable) {
        try {
            return (h0) b.g(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @m7.e
    public static io.reactivex.d d0(@m7.e io.reactivex.a aVar, @m7.e io.reactivex.d dVar) {
        c<? super io.reactivex.a, ? super io.reactivex.d, ? extends io.reactivex.d> cVar = f75997w;
        return cVar != null ? (io.reactivex.d) a(cVar, aVar, dVar) : dVar;
    }

    @m7.e
    public static h0 e(@m7.e ThreadFactory threadFactory) {
        return new io.reactivex.internal.schedulers.b((ThreadFactory) b.g(threadFactory, "threadFactory is null"));
    }

    @m7.e
    public static <T> t<? super T> e0(@m7.e q<T> qVar, @m7.e t<? super T> tVar) {
        c<? super q, ? super t, ? extends t> cVar = f75994t;
        return cVar != null ? (t) a(cVar, qVar, tVar) : tVar;
    }

    @m7.e
    public static h0 f(@m7.e ThreadFactory threadFactory) {
        return new io.reactivex.internal.schedulers.g((ThreadFactory) b.g(threadFactory, "threadFactory is null"));
    }

    @m7.e
    public static <T> g0<? super T> f0(@m7.e z<T> zVar, @m7.e g0<? super T> g0Var) {
        c<? super z, ? super g0, ? extends g0> cVar = f75995u;
        return cVar != null ? (g0) a(cVar, zVar, g0Var) : g0Var;
    }

    @m7.e
    public static h0 g(@m7.e ThreadFactory threadFactory) {
        return new h((ThreadFactory) b.g(threadFactory, "threadFactory is null"));
    }

    @m7.e
    public static <T> l0<? super T> g0(@m7.e i0<T> i0Var, @m7.e l0<? super T> l0Var) {
        c<? super i0, ? super l0, ? extends l0> cVar = f75996v;
        return cVar != null ? (l0) a(cVar, i0Var, l0Var) : l0Var;
    }

    @m7.e
    public static h0 h(@m7.e ThreadFactory threadFactory) {
        return new n((ThreadFactory) b.g(threadFactory, "threadFactory is null"));
    }

    @m7.e
    public static <T> d<? super T> h0(@m7.e j<T> jVar, @m7.e d<? super T> dVar) {
        c<? super j, ? super d, ? extends d> cVar = f75993s;
        return cVar != null ? (d) a(cVar, jVar, dVar) : dVar;
    }

    @f
    public static o<? super h0, ? extends h0> i() {
        return f75981g;
    }

    public static void i0() {
        k0(null);
        G0(null);
        j0(null);
        m0(null);
        q0(null);
        n0(null);
        H0(null);
        p0(null);
        r0(null);
        o0(null);
        x0(null);
        y0(null);
        B0(null);
        C0(null);
        E0(null);
        F0(null);
        t0(null);
        u0(null);
        v0(null);
        w0(null);
        z0(null);
        A0(null);
        D0(null);
        l0(false);
        s0(null);
    }

    @f
    public static g<? super Throwable> j() {
        return f75975a;
    }

    public static void j0(@f o<? super h0, ? extends h0> oVar) {
        if (!f75999y) {
            f75981g = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Callable<h0>, ? extends h0> k() {
        return f75977c;
    }

    public static void k0(@f g<? super Throwable> gVar) {
        if (!f75999y) {
            f75975a = gVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Callable<h0>, ? extends h0> l() {
        return f75979e;
    }

    public static void l0(boolean z9) {
        if (!f75999y) {
            f76000z = z9;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Callable<h0>, ? extends h0> m() {
        return f75980f;
    }

    public static void m0(@f o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f75999y) {
            f75977c = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Callable<h0>, ? extends h0> n() {
        return f75978d;
    }

    public static void n0(@f o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f75999y) {
            f75979e = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super h0, ? extends h0> o() {
        return f75983i;
    }

    public static void o0(@f o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f75999y) {
            f75980f = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super h0, ? extends h0> p() {
        return f75984j;
    }

    public static void p0(@f o<? super Callable<h0>, ? extends h0> oVar) {
        if (!f75999y) {
            f75978d = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static e q() {
        return f75998x;
    }

    public static void q0(@f o<? super h0, ? extends h0> oVar) {
        if (!f75999y) {
            f75983i = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.a, ? extends io.reactivex.a> r() {
        return f75991q;
    }

    public static void r0(@f o<? super h0, ? extends h0> oVar) {
        if (!f75999y) {
            f75984j = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super io.reactivex.a, ? super io.reactivex.d, ? extends io.reactivex.d> s() {
        return f75997w;
    }

    public static void s0(@f e eVar) {
        if (!f75999y) {
            f75998x = eVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> t() {
        return f75986l;
    }

    public static void t0(@f o<? super io.reactivex.a, ? extends io.reactivex.a> oVar) {
        if (!f75999y) {
            f75991q = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> u() {
        return f75988n;
    }

    public static void u0(@f c<? super io.reactivex.a, ? super io.reactivex.d, ? extends io.reactivex.d> cVar) {
        if (!f75999y) {
            f75997w = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super j, ? extends j> v() {
        return f75985k;
    }

    public static void v0(@f o<? super io.reactivex.flowables.a, ? extends io.reactivex.flowables.a> oVar) {
        if (!f75999y) {
            f75986l = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super j, ? super d, ? extends d> w() {
        return f75993s;
    }

    public static void w0(@f o<? super io.reactivex.observables.a, ? extends io.reactivex.observables.a> oVar) {
        if (!f75999y) {
            f75988n = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super q, ? extends q> x() {
        return f75989o;
    }

    public static void x0(@f o<? super j, ? extends j> oVar) {
        if (!f75999y) {
            f75985k = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super q, ? super t, ? extends t> y() {
        return f75994t;
    }

    public static void y0(@f c<? super j, ? super d, ? extends d> cVar) {
        if (!f75999y) {
            f75993s = cVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super z, ? extends z> z() {
        return f75987m;
    }

    public static void z0(@f o<? super q, ? extends q> oVar) {
        if (!f75999y) {
            f75989o = oVar;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }
}
