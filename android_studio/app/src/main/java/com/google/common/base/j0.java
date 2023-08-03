package com.google.common.base;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Suppliers.java */
@h3.b
/* loaded from: classes2.dex */
public final class j0 {

    /* compiled from: Suppliers.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class a<T> implements i0<T>, Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f32249e = 0;

        /* renamed from: a  reason: collision with root package name */
        final i0<T> f32250a;

        /* renamed from: b  reason: collision with root package name */
        final long f32251b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        volatile transient T f32252c;

        /* renamed from: d  reason: collision with root package name */
        volatile transient long f32253d;

        a(i0<T> i0Var, long j4, TimeUnit timeUnit) {
            this.f32250a = (i0) a0.E(i0Var);
            this.f32251b = timeUnit.toNanos(j4);
            a0.t(j4 > 0, "duration (%s %s) must be > 0", j4, timeUnit);
        }

        @Override // com.google.common.base.i0
        public T get() {
            long j4 = this.f32253d;
            long k10 = z.k();
            if (j4 == 0 || k10 - j4 >= 0) {
                synchronized (this) {
                    if (j4 == this.f32253d) {
                        T t9 = this.f32250a.get();
                        this.f32252c = t9;
                        long j10 = k10 + this.f32251b;
                        if (j10 == 0) {
                            j10 = 1;
                        }
                        this.f32253d = j10;
                        return t9;
                    }
                }
            }
            return this.f32252c;
        }

        public String toString() {
            return "Suppliers.memoizeWithExpiration(" + this.f32250a + ", " + this.f32251b + ", NANOS)";
        }
    }

    /* compiled from: Suppliers.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class b<T> implements i0<T>, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32254d = 0;

        /* renamed from: a  reason: collision with root package name */
        final i0<T> f32255a;

        /* renamed from: b  reason: collision with root package name */
        volatile transient boolean f32256b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        transient T f32257c;

        b(i0<T> i0Var) {
            this.f32255a = (i0) a0.E(i0Var);
        }

        @Override // com.google.common.base.i0
        public T get() {
            if (!this.f32256b) {
                synchronized (this) {
                    if (!this.f32256b) {
                        T t9 = this.f32255a.get();
                        this.f32257c = t9;
                        this.f32256b = true;
                        return t9;
                    }
                }
            }
            return this.f32257c;
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (this.f32256b) {
                obj = "<supplier that returned " + this.f32257c + ">";
            } else {
                obj = this.f32255a;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* compiled from: Suppliers.java */
    @h3.d
    /* loaded from: classes2.dex */
    static class c<T> implements i0<T> {

        /* renamed from: a  reason: collision with root package name */
        volatile i0<T> f32258a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f32259b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        T f32260c;

        c(i0<T> i0Var) {
            this.f32258a = (i0) a0.E(i0Var);
        }

        @Override // com.google.common.base.i0
        public T get() {
            if (!this.f32259b) {
                synchronized (this) {
                    if (!this.f32259b) {
                        T t9 = this.f32258a.get();
                        this.f32260c = t9;
                        this.f32259b = true;
                        this.f32258a = null;
                        return t9;
                    }
                }
            }
            return this.f32260c;
        }

        public String toString() {
            Object obj = this.f32258a;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (obj == null) {
                obj = "<supplier that returned " + this.f32260c + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    private static class d<F, T> implements i0<T>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32261c = 0;

        /* renamed from: a  reason: collision with root package name */
        final q<? super F, T> f32262a;

        /* renamed from: b  reason: collision with root package name */
        final i0<F> f32263b;

        d(q<? super F, T> qVar, i0<F> i0Var) {
            this.f32262a = (q) a0.E(qVar);
            this.f32263b = (i0) a0.E(i0Var);
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f32262a.equals(dVar.f32262a) && this.f32263b.equals(dVar.f32263b);
            }
            return false;
        }

        @Override // com.google.common.base.i0
        public T get() {
            return this.f32262a.apply((F) this.f32263b.get());
        }

        public int hashCode() {
            return w.b(this.f32262a, this.f32263b);
        }

        public String toString() {
            return "Suppliers.compose(" + this.f32262a + ", " + this.f32263b + ")";
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    private interface e<T> extends q<i0<T>, T> {
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    private enum f implements e<Object> {
        INSTANCE;

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Object apply(i0<Object> i0Var) {
            return i0Var.get();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    private static class g<T> implements i0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32266b = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final T f32267a;

        g(@NullableDecl T t9) {
            this.f32267a = t9;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof g) {
                return w.a(this.f32267a, ((g) obj).f32267a);
            }
            return false;
        }

        @Override // com.google.common.base.i0
        public T get() {
            return this.f32267a;
        }

        public int hashCode() {
            return w.b(this.f32267a);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.f32267a + ")";
        }
    }

    /* compiled from: Suppliers.java */
    /* loaded from: classes2.dex */
    private static class h<T> implements i0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32268b = 0;

        /* renamed from: a  reason: collision with root package name */
        final i0<T> f32269a;

        h(i0<T> i0Var) {
            this.f32269a = (i0) a0.E(i0Var);
        }

        @Override // com.google.common.base.i0
        public T get() {
            T t9;
            synchronized (this.f32269a) {
                t9 = this.f32269a.get();
            }
            return t9;
        }

        public String toString() {
            return "Suppliers.synchronizedSupplier(" + this.f32269a + ")";
        }
    }

    private j0() {
    }

    public static <F, T> i0<T> a(q<? super F, T> qVar, i0<F> i0Var) {
        return new d(qVar, i0Var);
    }

    public static <T> i0<T> b(i0<T> i0Var) {
        return ((i0Var instanceof c) || (i0Var instanceof b)) ? i0Var : i0Var instanceof Serializable ? new b(i0Var) : new c(i0Var);
    }

    public static <T> i0<T> c(i0<T> i0Var, long j4, TimeUnit timeUnit) {
        return new a(i0Var, j4, timeUnit);
    }

    public static <T> i0<T> d(@NullableDecl T t9) {
        return new g(t9);
    }

    public static <T> q<i0<T>, T> e() {
        return f.INSTANCE;
    }

    public static <T> i0<T> f(i0<T> i0Var) {
        return new h(i0Var);
    }
}
