package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: FakeTimeLimiter.java */
@CanIgnoreReturnValue
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class w implements j1 {
    @Override // com.google.common.util.concurrent.j1
    public void a(Runnable runnable, long j4, TimeUnit timeUnit) {
        com.google.common.base.a0.E(runnable);
        com.google.common.base.a0.E(timeUnit);
        try {
            runnable.run();
        } catch (Error e4) {
            throw new ExecutionError(e4);
        } catch (RuntimeException e10) {
            throw new UncheckedExecutionException(e10);
        } catch (Throwable th) {
            throw new UncheckedExecutionException(th);
        }
    }

    @Override // com.google.common.util.concurrent.j1
    public <T> T b(T t9, Class<T> cls, long j4, TimeUnit timeUnit) {
        com.google.common.base.a0.E(t9);
        com.google.common.base.a0.E(cls);
        com.google.common.base.a0.E(timeUnit);
        return t9;
    }

    @Override // com.google.common.util.concurrent.j1
    public void c(Runnable runnable, long j4, TimeUnit timeUnit) {
        a(runnable, j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.j1
    public <T> T d(Callable<T> callable, long j4, TimeUnit timeUnit) throws ExecutionException {
        return (T) e(callable, j4, timeUnit);
    }

    @Override // com.google.common.util.concurrent.j1
    public <T> T e(Callable<T> callable, long j4, TimeUnit timeUnit) throws ExecutionException {
        com.google.common.base.a0.E(callable);
        com.google.common.base.a0.E(timeUnit);
        try {
            return callable.call();
        } catch (Error e4) {
            throw new ExecutionError(e4);
        } catch (RuntimeException e10) {
            throw new UncheckedExecutionException(e10);
        } catch (Exception e11) {
            throw new ExecutionException(e11);
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }
}
