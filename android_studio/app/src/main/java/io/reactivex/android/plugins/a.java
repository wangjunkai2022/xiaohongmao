package io.reactivex.android.plugins;

import io.reactivex.h0;
import java.util.Objects;
import java.util.concurrent.Callable;
import n7.o;

/* compiled from: RxAndroidPlugins.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile o<Callable<h0>, h0> f71070a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile o<h0, h0> f71071b;

    private a() {
        throw new AssertionError("No instances.");
    }

    static <T, R> R a(o<T, R> oVar, T t9) {
        try {
            return oVar.apply(t9);
        } catch (Throwable th) {
            throw io.reactivex.exceptions.a.a(th);
        }
    }

    static h0 b(o<Callable<h0>, h0> oVar, Callable<h0> callable) {
        h0 h0Var = (h0) a(oVar, callable);
        Objects.requireNonNull(h0Var, "Scheduler Callable returned null");
        return h0Var;
    }

    static h0 c(Callable<h0> callable) {
        try {
            h0 call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw io.reactivex.exceptions.a.a(th);
        }
    }

    public static o<Callable<h0>, h0> d() {
        return f71070a;
    }

    public static o<h0, h0> e() {
        return f71071b;
    }

    public static h0 f(Callable<h0> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        o<Callable<h0>, h0> oVar = f71070a;
        if (oVar == null) {
            return c(callable);
        }
        return b(oVar, callable);
    }

    public static h0 g(h0 h0Var) {
        Objects.requireNonNull(h0Var, "scheduler == null");
        o<h0, h0> oVar = f71071b;
        return oVar == null ? h0Var : (h0) a(oVar, h0Var);
    }

    public static void h() {
        i(null);
        j(null);
    }

    public static void i(o<Callable<h0>, h0> oVar) {
        f71070a = oVar;
    }

    public static void j(o<h0, h0> oVar) {
        f71071b = oVar;
    }
}
