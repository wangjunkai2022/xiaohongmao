package com.google.android.gms.tasks;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class n {
    private n() {
    }

    public static <TResult> TResult a(@NonNull k<TResult> kVar) throws ExecutionException, InterruptedException {
        com.google.android.gms.common.internal.u.i();
        com.google.android.gms.common.internal.u.l(kVar, "Task must not be null");
        if (kVar.u()) {
            return (TResult) o(kVar);
        }
        s sVar = new s(null);
        p(kVar, sVar);
        sVar.c();
        return (TResult) o(kVar);
    }

    public static <TResult> TResult b(@NonNull k<TResult> kVar, long j4, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        com.google.android.gms.common.internal.u.i();
        com.google.android.gms.common.internal.u.l(kVar, "Task must not be null");
        com.google.android.gms.common.internal.u.l(timeUnit, "TimeUnit must not be null");
        if (kVar.u()) {
            return (TResult) o(kVar);
        }
        s sVar = new s(null);
        p(kVar, sVar);
        if (sVar.d(j4, timeUnit)) {
            return (TResult) o(kVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    @NonNull
    @Deprecated
    public static <TResult> k<TResult> c(@NonNull Callable<TResult> callable) {
        return d(m.f31129a, callable);
    }

    @NonNull
    @Deprecated
    public static <TResult> k<TResult> d(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        com.google.android.gms.common.internal.u.l(executor, "Executor must not be null");
        com.google.android.gms.common.internal.u.l(callable, "Callback must not be null");
        q0 q0Var = new q0();
        executor.execute(new t0(q0Var, callable));
        return q0Var;
    }

    @NonNull
    public static <TResult> k<TResult> e() {
        q0 q0Var = new q0();
        q0Var.A();
        return q0Var;
    }

    @NonNull
    public static <TResult> k<TResult> f(@NonNull Exception exc) {
        q0 q0Var = new q0();
        q0Var.y(exc);
        return q0Var;
    }

    @NonNull
    public static <TResult> k<TResult> g(TResult tresult) {
        q0 q0Var = new q0();
        q0Var.z(tresult);
        return q0Var;
    }

    @NonNull
    public static k<Void> h(@Nullable Collection<? extends k<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            for (k<?> kVar : collection) {
                Objects.requireNonNull(kVar, "null tasks are not accepted");
            }
            q0 q0Var = new q0();
            u uVar = new u(collection.size(), q0Var);
            for (k<?> kVar2 : collection) {
                p(kVar2, uVar);
            }
            return q0Var;
        }
        return g(null);
    }

    @NonNull
    public static k<Void> i(@Nullable k<?>... kVarArr) {
        if (kVarArr != null && kVarArr.length != 0) {
            return h(Arrays.asList(kVarArr));
        }
        return g(null);
    }

    @NonNull
    public static k<List<k<?>>> j(@Nullable Collection<? extends k<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            return h(collection).p(m.f31129a, new q(collection));
        }
        return g(Collections.emptyList());
    }

    @NonNull
    public static k<List<k<?>>> k(@Nullable k<?>... kVarArr) {
        if (kVarArr != null && kVarArr.length != 0) {
            return j(Arrays.asList(kVarArr));
        }
        return g(Collections.emptyList());
    }

    @NonNull
    public static <TResult> k<List<TResult>> l(@Nullable Collection<? extends k> collection) {
        if (collection != null && !collection.isEmpty()) {
            return (k<List<TResult>>) h(collection).n(m.f31129a, new p(collection));
        }
        return g(Collections.emptyList());
    }

    @NonNull
    public static <TResult> k<List<TResult>> m(@Nullable k... kVarArr) {
        if (kVarArr != null && kVarArr.length != 0) {
            return l(Arrays.asList(kVarArr));
        }
        return g(Collections.emptyList());
    }

    @NonNull
    public static <T> k<T> n(@NonNull k<T> kVar, long j4, @NonNull TimeUnit timeUnit) {
        com.google.android.gms.common.internal.u.l(kVar, "Task must not be null");
        com.google.android.gms.common.internal.u.b(j4 > 0, "Timeout must be positive");
        com.google.android.gms.common.internal.u.l(timeUnit, "TimeUnit must not be null");
        final v vVar = new v();
        final l lVar = new l(vVar);
        final z2.a aVar = new z2.a(Looper.getMainLooper());
        aVar.postDelayed(new Runnable() { // from class: com.google.android.gms.tasks.s0
            @Override // java.lang.Runnable
            public final void run() {
                l.this.d(new TimeoutException());
            }
        }, timeUnit.toMillis(j4));
        kVar.e(new e() { // from class: com.google.android.gms.tasks.r0
            @Override // com.google.android.gms.tasks.e
            public final void a(k kVar2) {
                z2.a aVar2 = z2.a.this;
                l lVar2 = lVar;
                v vVar2 = vVar;
                aVar2.removeCallbacksAndMessages(null);
                if (kVar2.v()) {
                    lVar2.e(kVar2.r());
                } else if (kVar2.t()) {
                    vVar2.c();
                } else {
                    Exception q9 = kVar2.q();
                    q9.getClass();
                    lVar2.d(q9);
                }
            }
        });
        return lVar.a();
    }

    private static <TResult> TResult o(@NonNull k<TResult> kVar) throws ExecutionException {
        if (kVar.v()) {
            return kVar.r();
        }
        if (kVar.t()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(kVar.q());
    }

    private static <T> void p(k<T> kVar, t<? super T> tVar) {
        Executor executor = m.f31130b;
        kVar.l(executor, tVar);
        kVar.i(executor, tVar);
        kVar.c(executor, tVar);
    }
}
