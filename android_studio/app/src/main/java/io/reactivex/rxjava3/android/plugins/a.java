package io.reactivex.rxjava3.android.plugins;

import io.reactivex.rxjava3.core.o0;
import java.util.Objects;
import java.util.concurrent.Callable;
import q7.o;

/* compiled from: RxAndroidPlugins.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile o<Callable<o0>, o0> f76108a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile o<o0, o0> f76109b;

    private a() {
        throw new AssertionError("No instances.");
    }

    static <T, R> R a(o<T, R> oVar, T t9) {
        try {
            return oVar.apply(t9);
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.exceptions.a.a(th);
        }
    }

    static o0 b(o<Callable<o0>, o0> oVar, Callable<o0> callable) {
        o0 o0Var = (o0) a(oVar, callable);
        Objects.requireNonNull(o0Var, "Scheduler Callable returned null");
        return o0Var;
    }

    static o0 c(Callable<o0> callable) {
        try {
            o0 call = callable.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw io.reactivex.rxjava3.exceptions.a.a(th);
        }
    }

    public static o<Callable<o0>, o0> d() {
        return f76108a;
    }

    public static o<o0, o0> e() {
        return f76109b;
    }

    public static o0 f(Callable<o0> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        o<Callable<o0>, o0> oVar = f76108a;
        if (oVar == null) {
            return c(callable);
        }
        return b(oVar, callable);
    }

    public static o0 g(o0 o0Var) {
        Objects.requireNonNull(o0Var, "scheduler == null");
        o<o0, o0> oVar = f76109b;
        return oVar == null ? o0Var : (o0) a(oVar, o0Var);
    }

    public static void h() {
        i(null);
        j(null);
    }

    public static void i(o<Callable<o0>, o0> oVar) {
        f76108a = oVar;
    }

    public static void j(o<o0, o0> oVar) {
        f76109b = oVar;
    }
}
