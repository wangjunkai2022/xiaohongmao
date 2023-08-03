package com.google.common.collect;

import com.google.common.collect.d5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractTable.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class q<R, C, V> implements d5<R, C, V> {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Set<d5.a<R, C, V>> f33828a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Collection<V> f33829b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTable.java */
    /* loaded from: classes2.dex */
    public class a extends g5<d5.a<R, C, V>, V> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g5
        /* renamed from: b */
        public V a(d5.a<R, C, V> aVar) {
            return aVar.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTable.java */
    /* loaded from: classes2.dex */
    public class b extends AbstractSet<d5.a<R, C, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            q.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof d5.a) {
                d5.a aVar = (d5.a) obj;
                Map map = (Map) f3.p0(q.this.rowMap(), aVar.a());
                return map != null && z.k(map.entrySet(), f3.O(aVar.b(), aVar.getValue()));
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<d5.a<R, C, V>> iterator() {
            return q.this.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof d5.a) {
                d5.a aVar = (d5.a) obj;
                Map map = (Map) f3.p0(q.this.rowMap(), aVar.a());
                return map != null && z.l(map.entrySet(), f3.O(aVar.b(), aVar.getValue()));
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return q.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractTable.java */
    /* loaded from: classes2.dex */
    public class c extends AbstractCollection<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            q.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return q.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return q.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return q.this.size();
        }
    }

    abstract Iterator<d5.a<R, C, V>> a();

    Set<d5.a<R, C, V>> b() {
        return new b();
    }

    Collection<V> c() {
        return new c();
    }

    @Override // com.google.common.collect.d5
    public Set<d5.a<R, C, V>> cellSet() {
        Set<d5.a<R, C, V>> set = this.f33828a;
        if (set == null) {
            Set<d5.a<R, C, V>> b10 = b();
            this.f33828a = b10;
            return b10;
        }
        return set;
    }

    @Override // com.google.common.collect.d5
    public void clear() {
        x2.h(cellSet().iterator());
    }

    @Override // com.google.common.collect.d5
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.d5
    public boolean contains(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) f3.p0(rowMap(), obj);
        return map != null && f3.o0(map, obj2);
    }

    @Override // com.google.common.collect.d5
    public boolean containsColumn(@NullableDecl Object obj) {
        return f3.o0(columnMap(), obj);
    }

    @Override // com.google.common.collect.d5
    public boolean containsRow(@NullableDecl Object obj) {
        return f3.o0(rowMap(), obj);
    }

    @Override // com.google.common.collect.d5
    public boolean containsValue(@NullableDecl Object obj) {
        for (Map<C, V> map : rowMap().values()) {
            if (map.containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    Iterator<V> d() {
        return new a(cellSet().iterator());
    }

    @Override // com.google.common.collect.d5
    public boolean equals(@NullableDecl Object obj) {
        return e5.b(this, obj);
    }

    @Override // com.google.common.collect.d5
    public V get(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) f3.p0(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) f3.p0(map, obj2);
    }

    @Override // com.google.common.collect.d5
    public int hashCode() {
        return cellSet().hashCode();
    }

    @Override // com.google.common.collect.d5
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V put(R r9, C c10, V v9) {
        return row(r9).put(c10, v9);
    }

    @Override // com.google.common.collect.d5
    public void putAll(d5<? extends R, ? extends C, ? extends V> d5Var) {
        for (d5.a<? extends R, ? extends C, ? extends V> aVar : d5Var.cellSet()) {
            put(aVar.a(), aVar.b(), aVar.getValue());
        }
    }

    @Override // com.google.common.collect.d5
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Map map = (Map) f3.p0(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) f3.q0(map, obj2);
    }

    @Override // com.google.common.collect.d5
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    public String toString() {
        return rowMap().toString();
    }

    @Override // com.google.common.collect.d5
    public Collection<V> values() {
        Collection<V> collection = this.f33829b;
        if (collection == null) {
            Collection<V> c10 = c();
            this.f33829b = c10;
            return c10;
        }
        return collection;
    }
}
