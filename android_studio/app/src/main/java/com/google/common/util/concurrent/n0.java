package com.google.common.util.concurrent;

import com.google.common.util.concurrent.d;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmediateFuture.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class n0<V> implements q0<V> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35294a = Logger.getLogger(n0.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmediateFuture.java */
    /* loaded from: classes2.dex */
    public static final class a<V> extends d.j<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
            cancel(false);
        }
    }

    /* compiled from: ImmediateFuture.java */
    @h3.c
    /* loaded from: classes2.dex */
    static class b<V, X extends Exception> extends n0<V> implements q<V, X> {

        /* renamed from: b  reason: collision with root package name */
        private final X f35295b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(X x9) {
            this.f35295b = x9;
        }

        @Override // com.google.common.util.concurrent.q
        public V d() throws Exception {
            throw this.f35295b;
        }

        @Override // com.google.common.util.concurrent.n0, java.util.concurrent.Future
        public V get() throws ExecutionException {
            throw new ExecutionException(this.f35295b);
        }

        @Override // com.google.common.util.concurrent.q
        public V m(long j4, TimeUnit timeUnit) throws Exception {
            com.google.common.base.a0.E(timeUnit);
            throw this.f35295b;
        }

        public String toString() {
            return super.toString() + "[status=FAILURE, cause=[" + this.f35295b + "]]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmediateFuture.java */
    /* loaded from: classes2.dex */
    public static final class c<V> extends d.j<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Throwable th) {
            N(th);
        }
    }

    /* compiled from: ImmediateFuture.java */
    @h3.c
    /* loaded from: classes2.dex */
    static class d<V, X extends Exception> extends n0<V> implements q<V, X> {
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final V f35296b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(@NullableDecl V v9) {
            this.f35296b = v9;
        }

        @Override // com.google.common.util.concurrent.q
        public V d() {
            return this.f35296b;
        }

        @Override // com.google.common.util.concurrent.n0, java.util.concurrent.Future
        public V get() {
            return this.f35296b;
        }

        @Override // com.google.common.util.concurrent.q
        public V m(long j4, TimeUnit timeUnit) {
            com.google.common.base.a0.E(timeUnit);
            return this.f35296b;
        }

        public String toString() {
            return super.toString() + "[status=SUCCESS, result=[" + this.f35296b + "]]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmediateFuture.java */
    /* loaded from: classes2.dex */
    public static class e<V> extends n0<V> {

        /* renamed from: c  reason: collision with root package name */
        static final e<Object> f35297c = new e<>(null);
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final V f35298b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(@NullableDecl V v9) {
            this.f35298b = v9;
        }

        @Override // com.google.common.util.concurrent.n0, java.util.concurrent.Future
        public V get() {
            return this.f35298b;
        }

        public String toString() {
            return super.toString() + "[status=SUCCESS, result=[" + this.f35298b + "]]";
        }
    }

    n0() {
    }

    @Override // com.google.common.util.concurrent.q0
    public void addListener(Runnable runnable, Executor executor) {
        com.google.common.base.a0.F(runnable, "Runnable was null.");
        com.google.common.base.a0.F(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f35294a;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z9) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public abstract V get() throws ExecutionException;

    @Override // java.util.concurrent.Future
    public V get(long j4, TimeUnit timeUnit) throws ExecutionException {
        com.google.common.base.a0.E(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
