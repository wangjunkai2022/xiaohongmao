package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: ForwardingFluentFuture.java */
@h3.b
/* loaded from: classes2.dex */
final class d0<V> extends x<V> {

    /* renamed from: i  reason: collision with root package name */
    private final q0<V> f35094i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(q0<V> q0Var) {
        this.f35094i = (q0) com.google.common.base.a0.E(q0Var);
    }

    @Override // com.google.common.util.concurrent.d, com.google.common.util.concurrent.q0
    public void addListener(Runnable runnable, Executor executor) {
        this.f35094i.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        return this.f35094i.cancel(z9);
    }

    @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return this.f35094i.get();
    }

    @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f35094i.isCancelled();
    }

    @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
    public boolean isDone() {
        return this.f35094i.isDone();
    }

    @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
    public V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f35094i.get(j4, timeUnit);
    }
}
