package com.google.common.util.concurrent;

import com.google.common.util.concurrent.x;
import com.google.errorprone.annotations.ForOverride;
import java.lang.Throwable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractCatchingFuture.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class a<V, X extends Throwable, F, T> extends x.a<V> implements Runnable {
    @NullableDecl

    /* renamed from: i  reason: collision with root package name */
    q0<? extends V> f35032i;
    @NullableDecl

    /* renamed from: j  reason: collision with root package name */
    Class<X> f35033j;
    @NullableDecl

    /* renamed from: k  reason: collision with root package name */
    F f35034k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractCatchingFuture.java */
    /* renamed from: com.google.common.util.concurrent.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0266a<V, X extends Throwable> extends a<V, X, n<? super X, ? extends V>, q0<? extends V>> {
        C0266a(q0<? extends V> q0Var, Class<X> cls, n<? super X, ? extends V> nVar) {
            super(q0Var, cls, nVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.a
        /* renamed from: c0 */
        public q0<? extends V> a0(n<? super X, ? extends V> nVar, X x9) throws Exception {
            q0<? extends V> apply = nVar.apply(x9);
            com.google.common.base.a0.V(apply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", nVar);
            return apply;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.a
        /* renamed from: d0 */
        public void b0(q0<? extends V> q0Var) {
            O(q0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractCatchingFuture.java */
    /* loaded from: classes2.dex */
    public static final class b<V, X extends Throwable> extends a<V, X, com.google.common.base.q<? super X, ? extends V>, V> {
        b(q0<? extends V> q0Var, Class<X> cls, com.google.common.base.q<? super X, ? extends V> qVar) {
            super(q0Var, cls, qVar);
        }

        @Override // com.google.common.util.concurrent.a
        void b0(@NullableDecl V v9) {
            M(v9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.a
        @NullableDecl
        /* renamed from: c0 */
        public V a0(com.google.common.base.q<? super X, ? extends V> qVar, X x9) throws Exception {
            return qVar.apply(x9);
        }
    }

    a(q0<? extends V> q0Var, Class<X> cls, F f10) {
        this.f35032i = (q0) com.google.common.base.a0.E(q0Var);
        this.f35033j = (Class) com.google.common.base.a0.E(cls);
        this.f35034k = (F) com.google.common.base.a0.E(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V, X extends Throwable> q0<V> Y(q0<? extends V> q0Var, Class<X> cls, com.google.common.base.q<? super X, ? extends V> qVar, Executor executor) {
        b bVar = new b(q0Var, cls, qVar);
        q0Var.addListener(bVar, x0.p(executor, bVar));
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends Throwable, V> q0<V> Z(q0<? extends V> q0Var, Class<X> cls, n<? super X, ? extends V> nVar, Executor executor) {
        C0266a c0266a = new C0266a(q0Var, cls, nVar);
        q0Var.addListener(c0266a, x0.p(executor, c0266a));
        return c0266a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public String J() {
        String str;
        q0<? extends V> q0Var = this.f35032i;
        Class<X> cls = this.f35033j;
        F f10 = this.f35034k;
        String J = super.J();
        if (q0Var != null) {
            str = "inputFuture=[" + q0Var + "], ";
        } else {
            str = "";
        }
        if (cls == null || f10 == null) {
            if (J != null) {
                return str + J;
            }
            return null;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f10 + "]";
    }

    @NullableDecl
    @ForOverride
    abstract T a0(F f10, X x9) throws Exception;

    @ForOverride
    abstract void b0(@NullableDecl T t9);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r7 = this;
            com.google.common.util.concurrent.q0<? extends V> r0 = r7.f35032i
            java.lang.Class<X extends java.lang.Throwable> r1 = r7.f35033j
            F r2 = r7.f35034k
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = 1
            goto Ld
        Lc:
            r5 = 0
        Ld:
            if (r1 != 0) goto L11
            r6 = 1
            goto L12
        L11:
            r6 = 0
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = 0
        L17:
            r3 = r3 | r5
            boolean r4 = r7.isCancelled()
            r3 = r3 | r4
            if (r3 == 0) goto L20
            return
        L20:
            r3 = 0
            r7.f35032i = r3
            java.lang.Object r4 = com.google.common.util.concurrent.j0.h(r0)     // Catch: java.lang.Throwable -> L2a java.util.concurrent.ExecutionException -> L2c
            r5 = r4
            r4 = r3
            goto L38
        L2a:
            r4 = move-exception
            goto L37
        L2c:
            r4 = move-exception
            java.lang.Throwable r4 = r4.getCause()
            java.lang.Object r4 = com.google.common.base.a0.E(r4)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
        L37:
            r5 = r3
        L38:
            if (r4 != 0) goto L3e
            r7.M(r5)
            return
        L3e:
            boolean r1 = com.google.common.util.concurrent.z0.a(r4, r1)
            if (r1 != 0) goto L48
            r7.O(r0)
            return
        L48:
            java.lang.Object r0 = r7.a0(r2, r4)     // Catch: java.lang.Throwable -> L54
            r7.f35033j = r3
            r7.f35034k = r3
            r7.b0(r0)
            return
        L54:
            r0 = move-exception
            r7.N(r0)     // Catch: java.lang.Throwable -> L5d
            r7.f35033j = r3
            r7.f35034k = r3
            return
        L5d:
            r0 = move-exception
            r7.f35033j = r3
            r7.f35034k = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.a.run():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.d
    public final void s() {
        H(this.f35032i);
        this.f35032i = null;
        this.f35033j = null;
        this.f35034k = null;
    }
}
