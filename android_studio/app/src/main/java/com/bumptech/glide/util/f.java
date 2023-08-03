package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: Executors.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f9709a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Executor f9710b = new b();

    /* compiled from: Executors.java */
    /* loaded from: classes.dex */
    class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            o.x(runnable);
        }
    }

    /* compiled from: Executors.java */
    /* loaded from: classes.dex */
    class b implements Executor {
        b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    private f() {
    }

    public static Executor a() {
        return f9710b;
    }

    public static Executor b() {
        return f9709a;
    }

    @VisibleForTesting
    public static void c(ExecutorService executorService) {
        executorService.shutdownNow();
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (executorService.awaitTermination(5L, timeUnit)) {
                return;
            }
            executorService.shutdownNow();
            if (executorService.awaitTermination(5L, timeUnit)) {
                return;
            }
            throw new RuntimeException("Failed to shutdown");
        } catch (InterruptedException e4) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
            throw new RuntimeException(e4);
        }
    }
}
