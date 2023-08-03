package com.google.common.base;

import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Functions.java */
@h3.b
/* loaded from: classes2.dex */
public final class s {

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class b<E> implements q<Object, E>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32288b = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final E f32289a;

        public b(@NullableDecl E e4) {
            this.f32289a = e4;
        }

        @Override // com.google.common.base.q
        public E apply(@NullableDecl Object obj) {
            return this.f32289a;
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return w.a(this.f32289a, ((b) obj).f32289a);
            }
            return false;
        }

        public int hashCode() {
            E e4 = this.f32289a;
            if (e4 == null) {
                return 0;
            }
            return e4.hashCode();
        }

        public String toString() {
            return "Functions.constant(" + this.f32289a + ")";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class c<K, V> implements q<K, V>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32290c = 0;

        /* renamed from: a  reason: collision with root package name */
        final Map<K, ? extends V> f32291a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final V f32292b;

        c(Map<K, ? extends V> map, @NullableDecl V v9) {
            this.f32291a = (Map) a0.E(map);
            this.f32292b = v9;
        }

        @Override // com.google.common.base.q
        public V apply(@NullableDecl K k10) {
            V v9 = this.f32291a.get(k10);
            return (v9 != null || this.f32291a.containsKey(k10)) ? v9 : this.f32292b;
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f32291a.equals(cVar.f32291a) && w.a(this.f32292b, cVar.f32292b);
            }
            return false;
        }

        public int hashCode() {
            return w.b(this.f32291a, this.f32292b);
        }

        public String toString() {
            return "Functions.forMap(" + this.f32291a + ", defaultValue=" + this.f32292b + ")";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class d<A, B, C> implements q<A, C>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32293c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final q<B, C> f32294a;

        /* renamed from: b  reason: collision with root package name */
        private final q<A, ? extends B> f32295b;

        public d(q<B, C> qVar, q<A, ? extends B> qVar2) {
            this.f32294a = (q) a0.E(qVar);
            this.f32295b = (q) a0.E(qVar2);
        }

        @Override // com.google.common.base.q
        public C apply(@NullableDecl A a10) {
            return this.f32294a.apply(this.f32295b.apply(a10));
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f32295b.equals(dVar.f32295b) && this.f32294a.equals(dVar.f32294a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32295b.hashCode() ^ this.f32294a.hashCode();
        }

        public String toString() {
            return this.f32294a + "(" + this.f32295b + ")";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class e<K, V> implements q<K, V>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32296b = 0;

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f32297a;

        e(Map<K, V> map) {
            this.f32297a = (Map) a0.E(map);
        }

        @Override // com.google.common.base.q
        public V apply(@NullableDecl K k10) {
            V v9 = this.f32297a.get(k10);
            a0.u(v9 != null || this.f32297a.containsKey(k10), "Key '%s' not present in map", k10);
            return v9;
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                return this.f32297a.equals(((e) obj).f32297a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32297a.hashCode();
        }

        public String toString() {
            return "Functions.forMap(" + this.f32297a + ")";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private enum f implements q<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.q
        @NullableDecl
        public Object apply(@NullableDecl Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.identity()";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class g<T> implements q<T, Boolean>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32300b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final b0<T> f32301a;

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Boolean apply(@NullableDecl T t9) {
            return Boolean.valueOf(this.f32301a.apply(t9));
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof g) {
                return this.f32301a.equals(((g) obj).f32301a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32301a.hashCode();
        }

        public String toString() {
            return "Functions.forPredicate(" + this.f32301a + ")";
        }

        private g(b0<T> b0Var) {
            this.f32301a = (b0) a0.E(b0Var);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private static class h<T> implements q<Object, T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32302b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final i0<T> f32303a;

        @Override // com.google.common.base.q
        public T apply(@NullableDecl Object obj) {
            return this.f32303a.get();
        }

        @Override // com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof h) {
                return this.f32303a.equals(((h) obj).f32303a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32303a.hashCode();
        }

        public String toString() {
            return "Functions.forSupplier(" + this.f32303a + ")";
        }

        private h(i0<T> i0Var) {
            this.f32303a = (i0) a0.E(i0Var);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes2.dex */
    private enum i implements q<Object, String> {
        INSTANCE;

        @Override // com.google.common.base.q
        /* renamed from: a */
        public String apply(Object obj) {
            a0.E(obj);
            return obj.toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.toStringFunction()";
        }
    }

    private s() {
    }

    public static <A, B, C> q<A, C> a(q<B, C> qVar, q<A, ? extends B> qVar2) {
        return new d(qVar, qVar2);
    }

    public static <E> q<Object, E> b(@NullableDecl E e4) {
        return new b(e4);
    }

    public static <K, V> q<K, V> c(Map<K, V> map) {
        return new e(map);
    }

    public static <K, V> q<K, V> d(Map<K, ? extends V> map, @NullableDecl V v9) {
        return new c(map, v9);
    }

    public static <T> q<T, Boolean> e(b0<T> b0Var) {
        return new g(b0Var);
    }

    public static <T> q<Object, T> f(i0<T> i0Var) {
        return new h(i0Var);
    }

    public static <E> q<E, E> g() {
        return f.INSTANCE;
    }

    public static q<Object, String> h() {
        return i.INSTANCE;
    }
}
