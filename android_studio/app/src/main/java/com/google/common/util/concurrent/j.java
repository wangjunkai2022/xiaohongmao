package com.google.common.util.concurrent;

import com.google.common.util.concurrent.x;
import com.google.errorprone.annotations.ForOverride;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractTransformFuture.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class j<I, O, F, T> extends x.a<O> implements Runnable {
    @NullableDecl

    /* renamed from: i  reason: collision with root package name */
    q0<? extends I> f35238i;
    @NullableDecl

    /* renamed from: j  reason: collision with root package name */
    F f35239j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractTransformFuture.java */
    /* loaded from: classes2.dex */
    public static final class a<I, O> extends j<I, O, n<? super I, ? extends O>, q0<? extends O>> {
        a(q0<? extends I> q0Var, n<? super I, ? extends O> nVar) {
            super(q0Var, nVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.j
        /* renamed from: c0 */
        public q0<? extends O> a0(n<? super I, ? extends O> nVar, @NullableDecl I i4) throws Exception {
            q0<? extends O> apply = nVar.apply(i4);
            com.google.common.base.a0.V(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", nVar);
            return apply;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.j
        /* renamed from: d0 */
        public void b0(q0<? extends O> q0Var) {
            O(q0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractTransformFuture.java */
    /* loaded from: classes2.dex */
    public static final class b<I, O> extends j<I, O, com.google.common.base.q<? super I, ? extends O>, O> {
        b(q0<? extends I> q0Var, com.google.common.base.q<? super I, ? extends O> qVar) {
            super(q0Var, qVar);
        }

        @Override // com.google.common.util.concurrent.j
        void b0(@NullableDecl O o9) {
            M(o9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.j
        @NullableDecl
        /* renamed from: c0 */
        public O a0(com.google.common.base.q<? super I, ? extends O> qVar, @NullableDecl I i4) {
            return qVar.apply(i4);
        }
    }

    j(q0<? extends I> q0Var, F f10) {
        this.f35238i = (q0) com.google.common.base.a0.E(q0Var);
        this.f35239j = (F) com.google.common.base.a0.E(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> q0<O> Y(q0<I> q0Var, com.google.common.base.q<? super I, ? extends O> qVar, Executor executor) {
        com.google.common.base.a0.E(qVar);
        b bVar = new b(q0Var, qVar);
        q0Var.addListener(bVar, x0.p(executor, bVar));
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> q0<O> Z(q0<I> q0Var, n<? super I, ? extends O> nVar, Executor executor) {
        com.google.common.base.a0.E(executor);
        a aVar = new a(q0Var, nVar);
        q0Var.addListener(aVar, x0.p(executor, aVar));
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public String J() {
        String str;
        q0<? extends I> q0Var = this.f35238i;
        F f10 = this.f35239j;
        String J = super.J();
        if (q0Var != null) {
            str = "inputFuture=[" + q0Var + "], ";
        } else {
            str = "";
        }
        if (f10 != null) {
            return str + "function=[" + f10 + "]";
        } else if (J != null) {
            return str + J;
        } else {
            return null;
        }
    }

    @NullableDecl
    @ForOverride
    abstract T a0(F f10, @NullableDecl I i4) throws Exception;

    @ForOverride
    abstract void b0(@NullableDecl T t9);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        q0<? extends I> q0Var = this.f35238i;
        F f10 = this.f35239j;
        if ((isCancelled() | (q0Var == null)) || (f10 == null)) {
            return;
        }
        this.f35238i = null;
        if (q0Var.isCancelled()) {
            O(q0Var);
            return;
        }
        try {
            try {
                Object a02 = a0(f10, j0.h(q0Var));
                this.f35239j = null;
                b0(a02);
            } catch (Throwable th) {
                try {
                    N(th);
                } finally {
                    this.f35239j = null;
                }
            }
        } catch (Error e4) {
            N(e4);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e10) {
            N(e10);
        } catch (ExecutionException e11) {
            N(e11.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public final void s() {
        H(this.f35238i);
        this.f35238i = null;
        this.f35239j = null;
    }
}
