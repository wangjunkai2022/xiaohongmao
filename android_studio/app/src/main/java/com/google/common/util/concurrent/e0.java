package com.google.common.util.concurrent;

import com.google.common.collect.v1;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: ForwardingFuture.java */
@CanIgnoreReturnValue
@h3.b
/* loaded from: classes2.dex */
public abstract class e0<V> extends v1 implements Future<V> {

    /* compiled from: ForwardingFuture.java */
    /* loaded from: classes2.dex */
    public static abstract class a<V> extends e0<V> {

        /* renamed from: a  reason: collision with root package name */
        private final Future<V> f35117a;

        protected a(Future<V> future) {
            this.f35117a = (Future) com.google.common.base.a0.E(future);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.e0, com.google.common.collect.v1
        /* renamed from: M */
        public final Future<V> L() {
            return this.f35117a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract Future<? extends V> L();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        return L().cancel(z9);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return L().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return L().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return L().isDone();
    }

    @Override // java.util.concurrent.Future
    public V get(long j4, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return L().get(j4, timeUnit);
    }
}
