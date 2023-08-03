package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ListenableFutureTask.java */
@h3.c
/* loaded from: classes2.dex */
public class r0<V> extends FutureTask<V> implements q0<V> {

    /* renamed from: a  reason: collision with root package name */
    private final u f35324a;

    r0(Callable<V> callable) {
        super(callable);
        this.f35324a = new u();
    }

    public static <V> r0<V> a(Runnable runnable, @NullableDecl V v9) {
        return new r0<>(runnable, v9);
    }

    public static <V> r0<V> b(Callable<V> callable) {
        return new r0<>(callable);
    }

    @Override // com.google.common.util.concurrent.q0
    public void addListener(Runnable runnable, Executor executor) {
        this.f35324a.a(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        this.f35324a.b();
    }

    r0(Runnable runnable, @NullableDecl V v9) {
        super(runnable, v9);
        this.f35324a = new u();
    }
}
