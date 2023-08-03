package com.google.android.play.core.tasks;

import androidx.annotation.NonNull;
import com.google.android.play.core.internal.i1;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f {
    private f() {
    }

    public static <ResultT> ResultT a(@NonNull d<ResultT> dVar) throws ExecutionException, InterruptedException {
        i1.a(dVar, "Task must not be null");
        if (dVar.j()) {
            return (ResultT) f(dVar);
        }
        t tVar = new t(null);
        g(dVar, tVar);
        tVar.b();
        return (ResultT) f(dVar);
    }

    public static <ResultT> ResultT b(@NonNull d<ResultT> dVar, long j4, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        i1.a(dVar, "Task must not be null");
        i1.a(timeUnit, "TimeUnit must not be null");
        if (dVar.j()) {
            return (ResultT) f(dVar);
        }
        t tVar = new t(null);
        g(dVar, tVar);
        if (tVar.c(j4, timeUnit)) {
            return (ResultT) f(dVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static d<Void> c(Collection<? extends d<?>> collection) {
        if (collection.isEmpty()) {
            return e(null);
        }
        for (d<?> dVar : collection) {
            Objects.requireNonNull(dVar, "null tasks are not accepted");
        }
        r rVar = new r();
        v vVar = new v(collection.size(), rVar);
        for (d<?> dVar2 : collection) {
            g(dVar2, vVar);
        }
        return rVar;
    }

    public static d d(Exception exc) {
        r rVar = new r();
        rVar.l(exc);
        return rVar;
    }

    public static d e(Object obj) {
        r rVar = new r();
        rVar.m(obj);
        return rVar;
    }

    private static Object f(d dVar) throws ExecutionException {
        if (dVar.k()) {
            return dVar.h();
        }
        throw new ExecutionException(dVar.g());
    }

    private static void g(d dVar, u uVar) {
        Executor executor = e.f32029b;
        dVar.f(executor, uVar);
        dVar.d(executor, uVar);
    }
}
