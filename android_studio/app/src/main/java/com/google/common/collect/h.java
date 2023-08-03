package com.google.common.collect;

import com.google.common.collect.j3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class h<K, V> implements h3<K, V> {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Collection<Map.Entry<K, V>> f33535a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Set<K> f33536b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient k3<K> f33537c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient Collection<V> f33538d;
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    private transient Map<K, Collection<V>> f33539e;

    /* compiled from: AbstractMultimap.java */
    /* loaded from: classes2.dex */
    class a extends j3.f<K, V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.google.common.collect.j3.f
        h3<K, V> a() {
            return h.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return h.this.i();
        }
    }

    /* compiled from: AbstractMultimap.java */
    /* loaded from: classes2.dex */
    class b extends h<K, V>.a implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return o4.g(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return o4.k(this);
        }
    }

    /* compiled from: AbstractMultimap.java */
    /* loaded from: classes2.dex */
    class c extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return h.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return h.this.j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return h.this.size();
        }
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.f33539e;
        if (map == null) {
            Map<K, Collection<V>> b10 = b();
            this.f33539e = b10;
            return b10;
        }
        return map;
    }

    abstract Map<K, Collection<V>> b();

    abstract Collection<Map.Entry<K, V>> c();

    @Override // com.google.common.collect.h3
    public boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.h3
    public boolean containsValue(@NullableDecl Object obj) {
        for (Collection<V> collection : asMap().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Set<K> d();

    abstract k3<K> e();

    @Override // com.google.common.collect.h3
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.f33535a;
        if (collection == null) {
            Collection<Map.Entry<K, V>> c10 = c();
            this.f33535a = c10;
            return c10;
        }
        return collection;
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public boolean equals(@NullableDecl Object obj) {
        return j3.g(this, obj);
    }

    abstract Collection<V> h();

    @Override // com.google.common.collect.h3
    public int hashCode() {
        return asMap().hashCode();
    }

    abstract Iterator<Map.Entry<K, V>> i();

    @Override // com.google.common.collect.h3
    public boolean isEmpty() {
        return size() == 0;
    }

    Iterator<V> j() {
        return f3.O0(entries().iterator());
    }

    @Override // com.google.common.collect.h3
    public Set<K> keySet() {
        Set<K> set = this.f33536b;
        if (set == null) {
            Set<K> d4 = d();
            this.f33536b = d4;
            return d4;
        }
        return set;
    }

    @Override // com.google.common.collect.h3
    public k3<K> keys() {
        k3<K> k3Var = this.f33537c;
        if (k3Var == null) {
            k3<K> e4 = e();
            this.f33537c = e4;
            return e4;
        }
        return k3Var;
    }

    @Override // com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k10, @NullableDecl V v9) {
        return get(k10).add(v9);
    }

    @Override // com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean putAll(@NullableDecl K k10, Iterable<? extends V> iterable) {
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k10).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && x2.a(get(k10), it);
    }

    @Override // com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public Collection<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        com.google.common.base.a0.E(iterable);
        Collection<V> removeAll = removeAll(k10);
        putAll(k10, iterable);
        return removeAll;
    }

    public String toString() {
        return asMap().toString();
    }

    @Override // com.google.common.collect.h3
    public Collection<V> values() {
        Collection<V> collection = this.f33538d;
        if (collection == null) {
            Collection<V> h4 = h();
            this.f33538d = h4;
            return h4;
        }
        return collection;
    }

    @Override // com.google.common.collect.h3
    @CanIgnoreReturnValue
    public boolean putAll(h3<? extends K, ? extends V> h3Var) {
        boolean z9 = false;
        for (Map.Entry<? extends K, ? extends V> entry : h3Var.entries()) {
            z9 |= put(entry.getKey(), entry.getValue());
        }
        return z9;
    }
}
