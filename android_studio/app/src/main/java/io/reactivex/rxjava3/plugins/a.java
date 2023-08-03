package io.reactivex.rxjava3.plugins;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.internal.schedulers.b;
import io.reactivex.rxjava3.internal.schedulers.h;
import io.reactivex.rxjava3.internal.schedulers.n;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import org.reactivestreams.d;
import p7.f;
import q7.c;
import q7.e;
import q7.g;
import q7.o;
import q7.s;

/* compiled from: RxJavaPlugins.java */
/* loaded from: classes4.dex */
public final class a {
    @f

    /* renamed from: a  reason: collision with root package name */
    static volatile g<? super Throwable> f81385a;
    @f

    /* renamed from: b  reason: collision with root package name */
    static volatile o<? super Runnable, ? extends Runnable> f81386b;
    @f

    /* renamed from: c  reason: collision with root package name */
    static volatile o<? super s<o0>, ? extends o0> f81387c;
    @f

    /* renamed from: d  reason: collision with root package name */
    static volatile o<? super s<o0>, ? extends o0> f81388d;
    @f

    /* renamed from: e  reason: collision with root package name */
    static volatile o<? super s<o0>, ? extends o0> f81389e;
    @f

    /* renamed from: f  reason: collision with root package name */
    static volatile o<? super s<o0>, ? extends o0> f81390f;
    @f

    /* renamed from: g  reason: collision with root package name */
    static volatile o<? super o0, ? extends o0> f81391g;
    @f

    /* renamed from: h  reason: collision with root package name */
    static volatile o<? super o0, ? extends o0> f81392h;
    @f

    /* renamed from: i  reason: collision with root package name */
    static volatile o<? super o0, ? extends o0> f81393i;
    @f

    /* renamed from: j  reason: collision with root package name */
    static volatile o<? super o0, ? extends o0> f81394j;
    @f

    /* renamed from: k  reason: collision with root package name */
    static volatile o<? super m, ? extends m> f81395k;
    @f

    /* renamed from: l  reason: collision with root package name */
    static volatile o<? super io.reactivex.rxjava3.flowables.a, ? extends io.reactivex.rxjava3.flowables.a> f81396l;
    @f

    /* renamed from: m  reason: collision with root package name */
    static volatile o<? super g0, ? extends g0> f81397m;
    @f

    /* renamed from: n  reason: collision with root package name */
    static volatile o<? super io.reactivex.rxjava3.observables.a, ? extends io.reactivex.rxjava3.observables.a> f81398n;
    @f

    /* renamed from: o  reason: collision with root package name */
    static volatile o<? super v, ? extends v> f81399o;
    @f

    /* renamed from: p  reason: collision with root package name */
    static volatile o<? super p0, ? extends p0> f81400p;
    @f

    /* renamed from: q  reason: collision with root package name */
    static volatile o<? super io.reactivex.rxjava3.core.a, ? extends io.reactivex.rxjava3.core.a> f81401q;
    @f

    /* renamed from: r  reason: collision with root package name */
    static volatile o<? super io.reactivex.rxjava3.parallel.a, ? extends io.reactivex.rxjava3.parallel.a> f81402r;
    @f

    /* renamed from: s  reason: collision with root package name */
    static volatile c<? super m, ? super d, ? extends d> f81403s;
    @f

    /* renamed from: t  reason: collision with root package name */
    static volatile c<? super v, ? super y, ? extends y> f81404t;
    @f

    /* renamed from: u  reason: collision with root package name */
    static volatile c<? super g0, ? super n0, ? extends n0> f81405u;
    @f

    /* renamed from: v  reason: collision with root package name */
    static volatile c<? super p0, ? super s0, ? extends s0> f81406v;
    @f

    /* renamed from: w  reason: collision with root package name */
    static volatile c<? super io.reactivex.rxjava3.core.a, ? super io.reactivex.rxjava3.core.d, ? extends io.reactivex.rxjava3.core.d> f81407w;
    @f

    /* renamed from: x  reason: collision with root package name */
    static volatile e f81408x;

    /* renamed from: y  reason: collision with root package name */
    static volatile boolean f81409y;

    /* renamed from: z  reason: collision with root package name */
    static volatile boolean f81410z;

    private a() {
        throw new IllegalStateException("No instances!");
    }

    @f
    public static c<? super g0, ? super n0, ? extends n0> A() {
        return f81405u;
    }

    public static void A0(@f c<? super v, y, ? extends y> onMaybeSubscribe) {
        if (!f81409y) {
            f81404t = onMaybeSubscribe;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.rxjava3.parallel.a, ? extends io.reactivex.rxjava3.parallel.a> B() {
        return f81402r;
    }

    public static void B0(@f o<? super g0, ? extends g0> onObservableAssembly) {
        if (!f81409y) {
            f81397m = onObservableAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super p0, ? extends p0> C() {
        return f81400p;
    }

    public static void C0(@f c<? super g0, ? super n0, ? extends n0> onObservableSubscribe) {
        if (!f81409y) {
            f81405u = onObservableSubscribe;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super p0, ? super s0, ? extends s0> D() {
        return f81406v;
    }

    public static void D0(@f o<? super io.reactivex.rxjava3.parallel.a, ? extends io.reactivex.rxjava3.parallel.a> handler) {
        if (!f81409y) {
            f81402r = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super Runnable, ? extends Runnable> E() {
        return f81386b;
    }

    public static void E0(@f o<? super p0, ? extends p0> onSingleAssembly) {
        if (!f81409y) {
            f81400p = onSingleAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super o0, ? extends o0> F() {
        return f81392h;
    }

    public static void F0(@f c<? super p0, ? super s0, ? extends s0> onSingleSubscribe) {
        if (!f81409y) {
            f81406v = onSingleSubscribe;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @p7.e
    public static o0 G(@p7.e s<o0> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        o<? super s<o0>, ? extends o0> oVar = f81387c;
        if (oVar == null) {
            return d(defaultScheduler);
        }
        return c(oVar, defaultScheduler);
    }

    public static void G0(@f o<? super Runnable, ? extends Runnable> handler) {
        if (!f81409y) {
            f81386b = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @p7.e
    public static o0 H(@p7.e s<o0> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        o<? super s<o0>, ? extends o0> oVar = f81389e;
        if (oVar == null) {
            return d(defaultScheduler);
        }
        return c(oVar, defaultScheduler);
    }

    public static void H0(@f o<? super o0, ? extends o0> handler) {
        if (!f81409y) {
            f81392h = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @p7.e
    public static o0 I(@p7.e s<o0> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        o<? super s<o0>, ? extends o0> oVar = f81390f;
        if (oVar == null) {
            return d(defaultScheduler);
        }
        return c(oVar, defaultScheduler);
    }

    static void I0(@p7.e Throwable error) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, error);
    }

    @p7.e
    public static o0 J(@p7.e s<o0> defaultScheduler) {
        Objects.requireNonNull(defaultScheduler, "Scheduler Supplier can't be null");
        o<? super s<o0>, ? extends o0> oVar = f81388d;
        if (oVar == null) {
            return d(defaultScheduler);
        }
        return c(oVar, defaultScheduler);
    }

    static void J0() {
        f81409y = false;
    }

    static boolean K(Throwable error) {
        return (error instanceof OnErrorNotImplementedException) || (error instanceof MissingBackpressureException) || (error instanceof IllegalStateException) || (error instanceof NullPointerException) || (error instanceof IllegalArgumentException) || (error instanceof CompositeException);
    }

    public static boolean L() {
        return f81410z;
    }

    public static boolean M() {
        return f81409y;
    }

    public static void N() {
        f81409y = true;
    }

    @p7.e
    public static io.reactivex.rxjava3.core.a O(@p7.e io.reactivex.rxjava3.core.a source) {
        o<? super io.reactivex.rxjava3.core.a, ? extends io.reactivex.rxjava3.core.a> oVar = f81401q;
        return oVar != null ? (io.reactivex.rxjava3.core.a) b(oVar, source) : source;
    }

    @p7.e
    public static <T> m<T> P(@p7.e m<T> source) {
        o<? super m, ? extends m> oVar = f81395k;
        return oVar != null ? (m) b(oVar, source) : source;
    }

    @p7.e
    public static <T> v<T> Q(@p7.e v<T> source) {
        o<? super v, ? extends v> oVar = f81399o;
        return oVar != null ? (v) b(oVar, source) : source;
    }

    @p7.e
    public static <T> g0<T> R(@p7.e g0<T> source) {
        o<? super g0, ? extends g0> oVar = f81397m;
        return oVar != null ? (g0) b(oVar, source) : source;
    }

    @p7.e
    public static <T> p0<T> S(@p7.e p0<T> source) {
        o<? super p0, ? extends p0> oVar = f81400p;
        return oVar != null ? (p0) b(oVar, source) : source;
    }

    @p7.e
    public static <T> io.reactivex.rxjava3.flowables.a<T> T(@p7.e io.reactivex.rxjava3.flowables.a<T> source) {
        o<? super io.reactivex.rxjava3.flowables.a, ? extends io.reactivex.rxjava3.flowables.a> oVar = f81396l;
        return oVar != null ? (io.reactivex.rxjava3.flowables.a) b(oVar, source) : source;
    }

    @p7.e
    public static <T> io.reactivex.rxjava3.observables.a<T> U(@p7.e io.reactivex.rxjava3.observables.a<T> source) {
        o<? super io.reactivex.rxjava3.observables.a, ? extends io.reactivex.rxjava3.observables.a> oVar = f81398n;
        return oVar != null ? (io.reactivex.rxjava3.observables.a) b(oVar, source) : source;
    }

    @p7.e
    public static <T> io.reactivex.rxjava3.parallel.a<T> V(@p7.e io.reactivex.rxjava3.parallel.a<T> source) {
        o<? super io.reactivex.rxjava3.parallel.a, ? extends io.reactivex.rxjava3.parallel.a> oVar = f81402r;
        return oVar != null ? (io.reactivex.rxjava3.parallel.a) b(oVar, source) : source;
    }

    public static boolean W() {
        e eVar = f81408x;
        if (eVar != null) {
            try {
                return eVar.a();
            } catch (Throwable th) {
                throw io.reactivex.rxjava3.internal.util.g.i(th);
            }
        }
        return false;
    }

    @p7.e
    public static o0 X(@p7.e o0 defaultScheduler) {
        o<? super o0, ? extends o0> oVar = f81391g;
        return oVar == null ? defaultScheduler : (o0) b(oVar, defaultScheduler);
    }

    public static void Y(@p7.e Throwable error) {
        g<? super Throwable> gVar = f81385a;
        if (error == null) {
            error = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
        } else if (!K(error)) {
            error = new UndeliverableException(error);
        }
        if (gVar != null) {
            try {
                gVar.accept(error);
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                I0(th);
            }
        }
        error.printStackTrace();
        I0(error);
    }

    @p7.e
    public static o0 Z(@p7.e o0 defaultScheduler) {
        o<? super o0, ? extends o0> oVar = f81393i;
        return oVar == null ? defaultScheduler : (o0) b(oVar, defaultScheduler);
    }

    @p7.e
    static <T, U, R> R a(@p7.e c<T, U, R> f10, @p7.e T t9, @p7.e U u9) {
        try {
            return f10.apply(t9, u9);
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @p7.e
    public static o0 a0(@p7.e o0 defaultScheduler) {
        o<? super o0, ? extends o0> oVar = f81394j;
        return oVar == null ? defaultScheduler : (o0) b(oVar, defaultScheduler);
    }

    @p7.e
    static <T, R> R b(@p7.e o<T, R> f10, @p7.e T t9) {
        try {
            return f10.apply(t9);
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @p7.e
    public static Runnable b0(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        o<? super Runnable, ? extends Runnable> oVar = f81386b;
        return oVar == null ? run : (Runnable) b(oVar, run);
    }

    @p7.e
    static o0 c(@p7.e o<? super s<o0>, ? extends o0> f10, s<o0> s9) {
        Object b10 = b(f10, s9);
        Objects.requireNonNull(b10, "Scheduler Supplier result can't be null");
        return (o0) b10;
    }

    @p7.e
    public static o0 c0(@p7.e o0 defaultScheduler) {
        o<? super o0, ? extends o0> oVar = f81392h;
        return oVar == null ? defaultScheduler : (o0) b(oVar, defaultScheduler);
    }

    @p7.e
    static o0 d(@p7.e s<o0> s9) {
        try {
            o0 o0Var = s9.get();
            Objects.requireNonNull(o0Var, "Scheduler Supplier result can't be null");
            return o0Var;
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @p7.e
    public static io.reactivex.rxjava3.core.d d0(@p7.e io.reactivex.rxjava3.core.a source, @p7.e io.reactivex.rxjava3.core.d observer) {
        c<? super io.reactivex.rxjava3.core.a, ? super io.reactivex.rxjava3.core.d, ? extends io.reactivex.rxjava3.core.d> cVar = f81407w;
        return cVar != null ? (io.reactivex.rxjava3.core.d) a(cVar, source, observer) : observer;
    }

    @p7.e
    public static o0 e(@p7.e ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new b(threadFactory);
    }

    @p7.e
    public static <T> y<? super T> e0(@p7.e v<T> source, @p7.e y<? super T> observer) {
        c<? super v, ? super y, ? extends y> cVar = f81404t;
        return cVar != null ? (y) a(cVar, source, observer) : observer;
    }

    @p7.e
    public static o0 f(@p7.e ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new io.reactivex.rxjava3.internal.schedulers.g(threadFactory);
    }

    @p7.e
    public static <T> n0<? super T> f0(@p7.e g0<T> source, @p7.e n0<? super T> observer) {
        c<? super g0, ? super n0, ? extends n0> cVar = f81405u;
        return cVar != null ? (n0) a(cVar, source, observer) : observer;
    }

    @p7.e
    public static o0 g(@p7.e ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new h(threadFactory);
    }

    @p7.e
    public static <T> s0<? super T> g0(@p7.e p0<T> source, @p7.e s0<? super T> observer) {
        c<? super p0, ? super s0, ? extends s0> cVar = f81406v;
        return cVar != null ? (s0) a(cVar, source, observer) : observer;
    }

    @p7.e
    public static o0 h(@p7.e ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory is null");
        return new n(threadFactory);
    }

    @p7.e
    public static <T> d<? super T> h0(@p7.e m<T> source, @p7.e d<? super T> subscriber) {
        c<? super m, ? super d, ? extends d> cVar = f81403s;
        return cVar != null ? (d) a(cVar, source, subscriber) : subscriber;
    }

    @f
    public static o<? super o0, ? extends o0> i() {
        return f81391g;
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
        return f81385a;
    }

    public static void j0(@f o<? super o0, ? extends o0> handler) {
        if (!f81409y) {
            f81391g = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super s<o0>, ? extends o0> k() {
        return f81387c;
    }

    public static void k0(@f g<? super Throwable> handler) {
        if (!f81409y) {
            f81385a = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super s<o0>, ? extends o0> l() {
        return f81389e;
    }

    public static void l0(boolean enable) {
        if (!f81409y) {
            f81410z = enable;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super s<o0>, ? extends o0> m() {
        return f81390f;
    }

    public static void m0(@f o<? super s<o0>, ? extends o0> handler) {
        if (!f81409y) {
            f81387c = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super s<o0>, ? extends o0> n() {
        return f81388d;
    }

    public static void n0(@f o<? super s<o0>, ? extends o0> handler) {
        if (!f81409y) {
            f81389e = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super o0, ? extends o0> o() {
        return f81393i;
    }

    public static void o0(@f o<? super s<o0>, ? extends o0> handler) {
        if (!f81409y) {
            f81390f = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super o0, ? extends o0> p() {
        return f81394j;
    }

    public static void p0(@f o<? super s<o0>, ? extends o0> handler) {
        if (!f81409y) {
            f81388d = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static e q() {
        return f81408x;
    }

    public static void q0(@f o<? super o0, ? extends o0> handler) {
        if (!f81409y) {
            f81393i = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.rxjava3.core.a, ? extends io.reactivex.rxjava3.core.a> r() {
        return f81401q;
    }

    public static void r0(@f o<? super o0, ? extends o0> handler) {
        if (!f81409y) {
            f81394j = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super io.reactivex.rxjava3.core.a, ? super io.reactivex.rxjava3.core.d, ? extends io.reactivex.rxjava3.core.d> s() {
        return f81407w;
    }

    public static void s0(@f e handler) {
        if (!f81409y) {
            f81408x = handler;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.rxjava3.flowables.a, ? extends io.reactivex.rxjava3.flowables.a> t() {
        return f81396l;
    }

    public static void t0(@f o<? super io.reactivex.rxjava3.core.a, ? extends io.reactivex.rxjava3.core.a> onCompletableAssembly) {
        if (!f81409y) {
            f81401q = onCompletableAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super io.reactivex.rxjava3.observables.a, ? extends io.reactivex.rxjava3.observables.a> u() {
        return f81398n;
    }

    public static void u0(@f c<? super io.reactivex.rxjava3.core.a, ? super io.reactivex.rxjava3.core.d, ? extends io.reactivex.rxjava3.core.d> onCompletableSubscribe) {
        if (!f81409y) {
            f81407w = onCompletableSubscribe;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super m, ? extends m> v() {
        return f81395k;
    }

    public static void v0(@f o<? super io.reactivex.rxjava3.flowables.a, ? extends io.reactivex.rxjava3.flowables.a> onConnectableFlowableAssembly) {
        if (!f81409y) {
            f81396l = onConnectableFlowableAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super m, ? super d, ? extends d> w() {
        return f81403s;
    }

    public static void w0(@f o<? super io.reactivex.rxjava3.observables.a, ? extends io.reactivex.rxjava3.observables.a> onConnectableObservableAssembly) {
        if (!f81409y) {
            f81398n = onConnectableObservableAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super v, ? extends v> x() {
        return f81399o;
    }

    public static void x0(@f o<? super m, ? extends m> onFlowableAssembly) {
        if (!f81409y) {
            f81395k = onFlowableAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static c<? super v, ? super y, ? extends y> y() {
        return f81404t;
    }

    public static void y0(@f c<? super m, ? super d, ? extends d> onFlowableSubscribe) {
        if (!f81409y) {
            f81403s = onFlowableSubscribe;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }

    @f
    public static o<? super g0, ? extends g0> z() {
        return f81397m;
    }

    public static void z0(@f o<? super v, ? extends v> onMaybeAssembly) {
        if (!f81409y) {
            f81399o = onMaybeAssembly;
            return;
        }
        throw new IllegalStateException("Plugins can't be changed anymore");
    }
}
