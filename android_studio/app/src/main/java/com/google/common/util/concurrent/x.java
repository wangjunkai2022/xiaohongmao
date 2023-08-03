package com.google.common.util.concurrent;

import com.google.common.util.concurrent.d;
import com.google.common.util.concurrent.y0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: FluentFuture.java */
@h3.b(emulated = true)
@h3.a
/* loaded from: classes2.dex */
public abstract class x<V> extends l0<V> {

    /* compiled from: FluentFuture.java */
    /* loaded from: classes2.dex */
    static abstract class a<V> extends x<V> implements d.i<V> {
        @Override // com.google.common.util.concurrent.d, com.google.common.util.concurrent.q0
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z9) {
            return super.cancel(z9);
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j4, timeUnit);
        }
    }

    public static <V> x<V> U(q0<V> q0Var) {
        return q0Var instanceof x ? (x) q0Var : new d0(q0Var);
    }

    public final void R(i0<? super V> i0Var, Executor executor) {
        j0.a(this, i0Var, executor);
    }

    @y0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    public final <X extends Throwable> x<V> S(Class<X> cls, com.google.common.base.q<? super X, ? extends V> qVar, Executor executor) {
        return (x) j0.d(this, cls, qVar, executor);
    }

    @y0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    public final <X extends Throwable> x<V> T(Class<X> cls, n<? super X, ? extends V> nVar, Executor executor) {
        return (x) j0.e(this, cls, nVar, executor);
    }

    public final <T> x<T> V(com.google.common.base.q<? super V, T> qVar, Executor executor) {
        return (x) j0.w(this, qVar, executor);
    }

    public final <T> x<T> W(n<? super V, T> nVar, Executor executor) {
        return (x) j0.x(this, nVar, executor);
    }

    @h3.c
    public final x<V> X(long j4, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (x) j0.C(this, j4, timeUnit, scheduledExecutorService);
    }
}
