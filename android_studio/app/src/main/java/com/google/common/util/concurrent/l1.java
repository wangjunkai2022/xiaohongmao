package com.google.common.util.concurrent;

import com.google.common.util.concurrent.x;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TrustedListenableFutureTask.java */
@h3.b
/* loaded from: classes2.dex */
public class l1<V> extends x.a<V> implements RunnableFuture<V> {

    /* renamed from: i  reason: collision with root package name */
    private volatile o0<?> f35287i;

    /* compiled from: TrustedListenableFutureTask.java */
    /* loaded from: classes2.dex */
    private final class a extends o0<q0<V>> {

        /* renamed from: e  reason: collision with root package name */
        private final m<V> f35288e;

        a(m<V> mVar) {
            this.f35288e = (m) com.google.common.base.a0.E(mVar);
        }

        @Override // com.google.common.util.concurrent.o0
        final boolean c() {
            return l1.this.isDone();
        }

        @Override // com.google.common.util.concurrent.o0
        String e() {
            return this.f35288e.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.o0
        /* renamed from: h */
        public void a(q0<V> q0Var, Throwable th) {
            if (th == null) {
                l1.this.O(q0Var);
            } else {
                l1.this.N(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.o0
        /* renamed from: i */
        public q0<V> d() throws Exception {
            return (q0) com.google.common.base.a0.V(this.f35288e.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f35288e);
        }
    }

    /* compiled from: TrustedListenableFutureTask.java */
    /* loaded from: classes2.dex */
    private final class b extends o0<V> {

        /* renamed from: e  reason: collision with root package name */
        private final Callable<V> f35290e;

        b(Callable<V> callable) {
            this.f35290e = (Callable) com.google.common.base.a0.E(callable);
        }

        @Override // com.google.common.util.concurrent.o0
        void a(V v9, Throwable th) {
            if (th == null) {
                l1.this.M(v9);
            } else {
                l1.this.N(th);
            }
        }

        @Override // com.google.common.util.concurrent.o0
        final boolean c() {
            return l1.this.isDone();
        }

        @Override // com.google.common.util.concurrent.o0
        V d() throws Exception {
            return this.f35290e.call();
        }

        @Override // com.google.common.util.concurrent.o0
        String e() {
            return this.f35290e.toString();
        }
    }

    l1(Callable<V> callable) {
        this.f35287i = new b(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> l1<V> Y(m<V> mVar) {
        return new l1<>(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> l1<V> Z(Runnable runnable, @NullableDecl V v9) {
        return new l1<>(Executors.callable(runnable, v9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> l1<V> a0(Callable<V> callable) {
        return new l1<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public String J() {
        o0<?> o0Var = this.f35287i;
        if (o0Var != null) {
            return "task=[" + o0Var + "]";
        }
        return super.J();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        o0<?> o0Var = this.f35287i;
        if (o0Var != null) {
            o0Var.run();
        }
        this.f35287i = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public void s() {
        o0<?> o0Var;
        super.s();
        if (Q() && (o0Var = this.f35287i) != null) {
            o0Var.b();
        }
        this.f35287i = null;
    }

    l1(m<V> mVar) {
        this.f35287i = new a(mVar);
    }
}
