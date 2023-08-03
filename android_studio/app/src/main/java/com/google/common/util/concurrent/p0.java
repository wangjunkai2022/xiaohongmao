package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: JdkFutureAdapters.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class p0 {

    /* compiled from: JdkFutureAdapters.java */
    /* loaded from: classes2.dex */
    private static class a<V> extends e0<V> implements q0<V> {

        /* renamed from: e  reason: collision with root package name */
        private static final ThreadFactory f35313e;

        /* renamed from: f  reason: collision with root package name */
        private static final Executor f35314f;

        /* renamed from: a  reason: collision with root package name */
        private final Executor f35315a;

        /* renamed from: b  reason: collision with root package name */
        private final u f35316b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicBoolean f35317c;

        /* renamed from: d  reason: collision with root package name */
        private final Future<V> f35318d;

        /* compiled from: JdkFutureAdapters.java */
        /* renamed from: com.google.common.util.concurrent.p0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0275a implements Runnable {
            RunnableC0275a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    n1.d(a.this.f35318d);
                } catch (Throwable unused) {
                }
                a.this.f35316b.b();
            }
        }

        static {
            ThreadFactory b10 = new i1().e(true).f("ListenableFutureAdapter-thread-%d").b();
            f35313e = b10;
            f35314f = Executors.newCachedThreadPool(b10);
        }

        a(Future<V> future) {
            this(future, f35314f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.e0, com.google.common.collect.v1
        /* renamed from: M */
        public Future<V> L() {
            return this.f35318d;
        }

        @Override // com.google.common.util.concurrent.q0
        public void addListener(Runnable runnable, Executor executor) {
            this.f35316b.a(runnable, executor);
            if (this.f35317c.compareAndSet(false, true)) {
                if (this.f35318d.isDone()) {
                    this.f35316b.b();
                } else {
                    this.f35315a.execute(new RunnableC0275a());
                }
            }
        }

        a(Future<V> future, Executor executor) {
            this.f35316b = new u();
            this.f35317c = new AtomicBoolean(false);
            this.f35318d = (Future) com.google.common.base.a0.E(future);
            this.f35315a = (Executor) com.google.common.base.a0.E(executor);
        }
    }

    private p0() {
    }

    public static <V> q0<V> a(Future<V> future) {
        if (future instanceof q0) {
            return (q0) future;
        }
        return new a(future);
    }

    public static <V> q0<V> b(Future<V> future, Executor executor) {
        com.google.common.base.a0.E(executor);
        if (future instanceof q0) {
            return (q0) future;
        }
        return new a(future, executor);
    }
}
