package com.google.common.util.concurrent;

import com.google.common.util.concurrent.x;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TimeoutFuture.java */
@h3.c
/* loaded from: classes2.dex */
public final class k1<V> extends x.a<V> {
    @NullableDecl

    /* renamed from: i  reason: collision with root package name */
    private q0<V> f35278i;
    @NullableDecl

    /* renamed from: j  reason: collision with root package name */
    private ScheduledFuture<?> f35279j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TimeoutFuture.java */
    /* loaded from: classes2.dex */
    public static final class b<V> implements Runnable {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        k1<V> f35280a;

        b(k1<V> k1Var) {
            this.f35280a = k1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            q0<? extends V> q0Var;
            k1<V> k1Var = this.f35280a;
            if (k1Var == null || (q0Var = ((k1) k1Var).f35278i) == null) {
                return;
            }
            this.f35280a = null;
            if (q0Var.isDone()) {
                k1Var.O(q0Var);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = ((k1) k1Var).f35279j;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (abs > 10) {
                        str = "Timed out (timeout delayed by " + abs + " ms after scheduled time)";
                    }
                }
                ((k1) k1Var).f35279j = null;
                k1Var.N(new c(str + ": " + q0Var));
            } finally {
                q0Var.cancel(true);
            }
        }
    }

    /* compiled from: TimeoutFuture.java */
    /* loaded from: classes2.dex */
    private static final class c extends TimeoutException {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private c(String str) {
            super(str);
        }
    }

    private k1(q0<V> q0Var) {
        this.f35278i = (q0) com.google.common.base.a0.E(q0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> q0<V> b0(q0<V> q0Var, long j4, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        k1 k1Var = new k1(q0Var);
        b bVar = new b(k1Var);
        k1Var.f35279j = scheduledExecutorService.schedule(bVar, j4, timeUnit);
        q0Var.addListener(bVar, x0.c());
        return k1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public String J() {
        q0<V> q0Var = this.f35278i;
        ScheduledFuture<?> scheduledFuture = this.f35279j;
        if (q0Var != null) {
            String str = "inputFuture=[" + q0Var + "]";
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    return str + ", remaining delay=[" + delay + " ms]";
                }
                return str;
            }
            return str;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public void s() {
        H(this.f35278i);
        ScheduledFuture<?> scheduledFuture = this.f35279j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f35278i = null;
        this.f35279j = null;
    }
}
