package com.google.common.collect;

import com.google.common.collect.d5;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Tables.java */
@h3.b
/* loaded from: classes2.dex */
public final class e5 {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.common.base.q<? extends Map<?, ?>, ? extends Map<?, ?>> f33396a = new a();

    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    static class a implements com.google.common.base.q<Map<Object, Object>, Map<Object, Object>> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    static abstract class b<R, C, V> implements d5.a<R, C, V> {
        @Override // com.google.common.collect.d5.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof d5.a) {
                d5.a aVar = (d5.a) obj;
                return com.google.common.base.w.a(a(), aVar.a()) && com.google.common.base.w.a(b(), aVar.b()) && com.google.common.base.w.a(getValue(), aVar.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.d5.a
        public int hashCode() {
            return com.google.common.base.w.b(a(), b(), getValue());
        }

        public String toString() {
            return "(" + a() + "," + b() + ")=" + getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    public static final class c<R, C, V> extends b<R, C, V> implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33397d = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final R f33398a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final C f33399b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        private final V f33400c;

        c(@NullableDecl R r9, @NullableDecl C c10, @NullableDecl V v9) {
            this.f33398a = r9;
            this.f33399b = c10;
            this.f33400c = v9;
        }

        @Override // com.google.common.collect.d5.a
        public R a() {
            return this.f33398a;
        }

        @Override // com.google.common.collect.d5.a
        public C b() {
            return this.f33399b;
        }

        @Override // com.google.common.collect.d5.a
        public V getValue() {
            return this.f33400c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    public static class d<R, C, V1, V2> extends q<R, C, V2> {

        /* renamed from: c  reason: collision with root package name */
        final d5<R, C, V1> f33401c;

        /* renamed from: d  reason: collision with root package name */
        final com.google.common.base.q<? super V1, V2> f33402d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Tables.java */
        /* loaded from: classes2.dex */
        public class a implements com.google.common.base.q<d5.a<R, C, V1>, d5.a<R, C, V2>> {
            a() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public d5.a<R, C, V2> apply(d5.a<R, C, V1> aVar) {
                return e5.c(aVar.a(), aVar.b(), d.this.f33402d.apply(aVar.getValue()));
            }
        }

        /* compiled from: Tables.java */
        /* loaded from: classes2.dex */
        class b implements com.google.common.base.q<Map<C, V1>, Map<C, V2>> {
            b() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Map<C, V2> apply(Map<C, V1> map) {
                return f3.B0(map, d.this.f33402d);
            }
        }

        /* compiled from: Tables.java */
        /* loaded from: classes2.dex */
        class c implements com.google.common.base.q<Map<R, V1>, Map<R, V2>> {
            c() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public Map<R, V2> apply(Map<R, V1> map) {
                return f3.B0(map, d.this.f33402d);
            }
        }

        d(d5<R, C, V1> d5Var, com.google.common.base.q<? super V1, V2> qVar) {
            this.f33401c = (d5) com.google.common.base.a0.E(d5Var);
            this.f33402d = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // com.google.common.collect.q
        Iterator<d5.a<R, C, V2>> a() {
            return x2.c0(this.f33401c.cellSet().iterator(), e());
        }

        @Override // com.google.common.collect.q
        Collection<V2> c() {
            return z.n(this.f33401c.values(), this.f33402d);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public void clear() {
            this.f33401c.clear();
        }

        @Override // com.google.common.collect.d5
        public Map<R, V2> column(C c10) {
            return f3.B0(this.f33401c.column(c10), this.f33402d);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public Set<C> columnKeySet() {
            return this.f33401c.columnKeySet();
        }

        @Override // com.google.common.collect.d5
        public Map<C, Map<R, V2>> columnMap() {
            return f3.B0(this.f33401c.columnMap(), new c());
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public boolean contains(Object obj, Object obj2) {
            return this.f33401c.contains(obj, obj2);
        }

        com.google.common.base.q<d5.a<R, C, V1>, d5.a<R, C, V2>> e() {
            return new a();
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V2 get(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.f33402d.apply((V1) this.f33401c.get(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V2 put(R r9, C c10, V2 v22) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public void putAll(d5<? extends R, ? extends C, ? extends V2> d5Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V2 remove(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.f33402d.apply((V1) this.f33401c.remove(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.d5
        public Map<C, V2> row(R r9) {
            return f3.B0(this.f33401c.row(r9), this.f33402d);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public Set<R> rowKeySet() {
            return this.f33401c.rowKeySet();
        }

        @Override // com.google.common.collect.d5
        public Map<R, Map<C, V2>> rowMap() {
            return f3.B0(this.f33401c.rowMap(), new b());
        }

        @Override // com.google.common.collect.d5
        public int size() {
            return this.f33401c.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    public static class e<C, R, V> extends q<C, R, V> {

        /* renamed from: d  reason: collision with root package name */
        private static final com.google.common.base.q<d5.a<?, ?, ?>, d5.a<?, ?, ?>> f33406d = new a();

        /* renamed from: c  reason: collision with root package name */
        final d5<R, C, V> f33407c;

        /* compiled from: Tables.java */
        /* loaded from: classes2.dex */
        static class a implements com.google.common.base.q<d5.a<?, ?, ?>, d5.a<?, ?, ?>> {
            a() {
            }

            @Override // com.google.common.base.q
            /* renamed from: a */
            public d5.a<?, ?, ?> apply(d5.a<?, ?, ?> aVar) {
                return e5.c(aVar.b(), aVar.a(), aVar.getValue());
            }
        }

        e(d5<R, C, V> d5Var) {
            this.f33407c = (d5) com.google.common.base.a0.E(d5Var);
        }

        @Override // com.google.common.collect.q
        Iterator<d5.a<C, R, V>> a() {
            return x2.c0(this.f33407c.cellSet().iterator(), f33406d);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public void clear() {
            this.f33407c.clear();
        }

        @Override // com.google.common.collect.d5
        public Map<C, V> column(R r9) {
            return this.f33407c.row(r9);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public Set<R> columnKeySet() {
            return this.f33407c.rowKeySet();
        }

        @Override // com.google.common.collect.d5
        public Map<R, Map<C, V>> columnMap() {
            return this.f33407c.rowMap();
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return this.f33407c.contains(obj2, obj);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public boolean containsColumn(@NullableDecl Object obj) {
            return this.f33407c.containsRow(obj);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public boolean containsRow(@NullableDecl Object obj) {
            return this.f33407c.containsColumn(obj);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public boolean containsValue(@NullableDecl Object obj) {
            return this.f33407c.containsValue(obj);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return this.f33407c.get(obj2, obj);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V put(C c10, R r9, V v9) {
            return this.f33407c.put(r9, c10, v9);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public void putAll(d5<? extends C, ? extends R, ? extends V> d5Var) {
            this.f33407c.putAll(e5.g(d5Var));
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            return this.f33407c.remove(obj2, obj);
        }

        @Override // com.google.common.collect.d5
        public Map<R, V> row(C c10) {
            return this.f33407c.column(c10);
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public Set<C> rowKeySet() {
            return this.f33407c.columnKeySet();
        }

        @Override // com.google.common.collect.d5
        public Map<C, Map<R, V>> rowMap() {
            return this.f33407c.columnMap();
        }

        @Override // com.google.common.collect.d5
        public int size() {
            return this.f33407c.size();
        }

        @Override // com.google.common.collect.q, com.google.common.collect.d5
        public Collection<V> values() {
            return this.f33407c.values();
        }
    }

    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    static final class f<R, C, V> extends g<R, C, V> implements l4<R, C, V> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f33408c = 0;

        public f(l4<R, ? extends C, ? extends V> l4Var) {
            super(l4Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e5.g, com.google.common.collect.d2
        /* renamed from: N */
        public l4<R, C, V> M() {
            return (l4) super.L();
        }

        @Override // com.google.common.collect.e5.g, com.google.common.collect.d2, com.google.common.collect.d5
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(M().rowKeySet());
        }

        @Override // com.google.common.collect.e5.g, com.google.common.collect.d2, com.google.common.collect.d5
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(f3.D0(M().rowMap(), e5.j()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Tables.java */
    /* loaded from: classes2.dex */
    public static class g<R, C, V> extends d2<R, C, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33409b = 0;

        /* renamed from: a  reason: collision with root package name */
        final d5<? extends R, ? extends C, ? extends V> f33410a;

        g(d5<? extends R, ? extends C, ? extends V> d5Var) {
            this.f33410a = (d5) com.google.common.base.a0.E(d5Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d2, com.google.common.collect.v1
        /* renamed from: M */
        public d5<R, C, V> L() {
            return (d5<? extends R, ? extends C, ? extends V>) this.f33410a;
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Set<d5.a<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Map<R, V> column(@NullableDecl C c10) {
            return Collections.unmodifiableMap(super.column(c10));
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(f3.B0(super.columnMap(), e5.j()));
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public V put(@NullableDecl R r9, @NullableDecl C c10, @NullableDecl V v9) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Map<C, V> row(@NullableDecl R r9) {
            return Collections.unmodifiableMap(super.row(r9));
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(f3.B0(super.rowMap(), e5.j()));
        }

        @Override // com.google.common.collect.d2, com.google.common.collect.d5
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }
    }

    private e5() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(d5<?, ?, ?> d5Var, @NullableDecl Object obj) {
        if (obj == d5Var) {
            return true;
        }
        if (obj instanceof d5) {
            return d5Var.cellSet().equals(((d5) obj).cellSet());
        }
        return false;
    }

    public static <R, C, V> d5.a<R, C, V> c(@NullableDecl R r9, @NullableDecl C c10, @NullableDecl V v9) {
        return new c(r9, c10, v9);
    }

    @h3.a
    public static <R, C, V> d5<R, C, V> d(Map<R, Map<C, V>> map, com.google.common.base.i0<? extends Map<C, V>> i0Var) {
        com.google.common.base.a0.d(map.isEmpty());
        com.google.common.base.a0.E(i0Var);
        return new b5(map, i0Var);
    }

    public static <R, C, V> d5<R, C, V> e(d5<R, C, V> d5Var) {
        return c5.z(d5Var, null);
    }

    @h3.a
    public static <R, C, V1, V2> d5<R, C, V2> f(d5<R, C, V1> d5Var, com.google.common.base.q<? super V1, V2> qVar) {
        return new d(d5Var, qVar);
    }

    public static <R, C, V> d5<C, R, V> g(d5<R, C, V> d5Var) {
        return d5Var instanceof e ? (d5<R, C, V>) ((e) d5Var).f33407c : new e(d5Var);
    }

    @h3.a
    public static <R, C, V> l4<R, C, V> h(l4<R, ? extends C, ? extends V> l4Var) {
        return new f(l4Var);
    }

    public static <R, C, V> d5<R, C, V> i(d5<? extends R, ? extends C, ? extends V> d5Var) {
        return new g(d5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> com.google.common.base.q<Map<K, V>, Map<K, V>> j() {
        return (com.google.common.base.q<Map<K, V>, Map<K, V>>) f33396a;
    }
}
