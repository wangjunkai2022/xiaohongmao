package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CombinedFuture.java */
@h3.b
/* loaded from: classes2.dex */
public final class s<V> extends k<Object, V> {

    /* compiled from: CombinedFuture.java */
    /* loaded from: classes2.dex */
    private final class a extends s<V>.c<q0<V>> {

        /* renamed from: h  reason: collision with root package name */
        private final m<V> f35325h;

        public a(m<V> mVar, Executor executor) {
            super(executor);
            this.f35325h = (m) com.google.common.base.a0.E(mVar);
        }

        @Override // com.google.common.util.concurrent.o0
        String e() {
            return this.f35325h.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.o0
        /* renamed from: j */
        public q0<V> d() throws Exception {
            this.f35330f = false;
            return (q0) com.google.common.base.a0.V(this.f35325h.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f35325h);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.s.c
        /* renamed from: k */
        public void i(q0<V> q0Var) {
            s.this.O(q0Var);
        }
    }

    /* compiled from: CombinedFuture.java */
    /* loaded from: classes2.dex */
    private final class b extends s<V>.c<V> {

        /* renamed from: h  reason: collision with root package name */
        private final Callable<V> f35327h;

        public b(Callable<V> callable, Executor executor) {
            super(executor);
            this.f35327h = (Callable) com.google.common.base.a0.E(callable);
        }

        @Override // com.google.common.util.concurrent.o0
        V d() throws Exception {
            this.f35330f = false;
            return this.f35327h.call();
        }

        @Override // com.google.common.util.concurrent.o0
        String e() {
            return this.f35327h.toString();
        }

        @Override // com.google.common.util.concurrent.s.c
        void i(V v9) {
            s.this.M(v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CombinedFuture.java */
    /* loaded from: classes2.dex */
    public abstract class c<T> extends o0<T> {

        /* renamed from: e  reason: collision with root package name */
        private final Executor f35329e;

        /* renamed from: f  reason: collision with root package name */
        boolean f35330f = true;

        public c(Executor executor) {
            this.f35329e = (Executor) com.google.common.base.a0.E(executor);
        }

        @Override // com.google.common.util.concurrent.o0
        final void a(T t9, Throwable th) {
            if (th != null) {
                if (th instanceof ExecutionException) {
                    s.this.N(th.getCause());
                    return;
                } else if (th instanceof CancellationException) {
                    s.this.cancel(false);
                    return;
                } else {
                    s.this.N(th);
                    return;
                }
            }
            i(t9);
        }

        @Override // com.google.common.util.concurrent.o0
        final boolean c() {
            return s.this.isDone();
        }

        final void h() {
            try {
                this.f35329e.execute(this);
            } catch (RejectedExecutionException e4) {
                if (this.f35330f) {
                    s.this.N(e4);
                }
            }
        }

        abstract void i(T t9);
    }

    /* compiled from: CombinedFuture.java */
    /* loaded from: classes2.dex */
    private final class d extends k<Object, V>.a {

        /* renamed from: i  reason: collision with root package name */
        private c f35332i;

        d(ImmutableCollection<? extends q0<?>> immutableCollection, boolean z9, c cVar) {
            super(immutableCollection, z9, false);
            this.f35332i = cVar;
        }

        @Override // com.google.common.util.concurrent.k.a
        void l(boolean z9, int i4, @NullableDecl Object obj) {
        }

        @Override // com.google.common.util.concurrent.k.a
        void n() {
            c cVar = this.f35332i;
            if (cVar != null) {
                cVar.h();
            } else {
                com.google.common.base.a0.g0(s.this.isDone());
            }
        }

        @Override // com.google.common.util.concurrent.k.a
        void r() {
            c cVar = this.f35332i;
            if (cVar != null) {
                cVar.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.k.a
        public void t() {
            super.t();
            this.f35332i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(ImmutableCollection<? extends q0<?>> immutableCollection, boolean z9, Executor executor, m<V> mVar) {
        V(new d(immutableCollection, z9, new a(mVar, executor)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(ImmutableCollection<? extends q0<?>> immutableCollection, boolean z9, Executor executor, Callable<V> callable) {
        V(new d(immutableCollection, z9, new b(callable, executor)));
    }
}
