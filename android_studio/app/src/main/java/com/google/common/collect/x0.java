package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredKeyMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public class x0<K, V> extends h<K, V> implements z0<K, V> {

    /* renamed from: f  reason: collision with root package name */
    final h3<K, V> f33937f;

    /* renamed from: g  reason: collision with root package name */
    final com.google.common.base.b0<? super K> f33938g;

    /* compiled from: FilteredKeyMultimap.java */
    /* loaded from: classes2.dex */
    static class a<K, V> extends m1<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f33939a;

        a(K k10) {
            this.f33939a = k10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.m1, com.google.common.collect.e1
        /* renamed from: Y */
        public List<V> M() {
            return Collections.emptyList();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(V v9) {
            add(0, v9);
            return true;
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // com.google.common.collect.m1, java.util.List
        public void add(int i4, V v9) {
            com.google.common.base.a0.d0(i4, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f33939a);
        }

        @Override // com.google.common.collect.m1, java.util.List
        @CanIgnoreReturnValue
        public boolean addAll(int i4, Collection<? extends V> collection) {
            com.google.common.base.a0.E(collection);
            com.google.common.base.a0.d0(i4, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f33939a);
        }
    }

    /* compiled from: FilteredKeyMultimap.java */
    /* loaded from: classes2.dex */
    static class b<K, V> extends x1<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f33940a;

        b(K k10) {
            this.f33940a = k10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<V> M() {
            return Collections.emptySet();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(V v9) {
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f33940a);
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            com.google.common.base.a0.E(collection);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f33940a);
        }
    }

    /* compiled from: FilteredKeyMultimap.java */
    /* loaded from: classes2.dex */
    class c extends e1<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e1, com.google.common.collect.v1
        /* renamed from: M */
        public Collection<Map.Entry<K, V>> L() {
            return z.e(x0.this.f33937f.entries(), x0.this.v());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (x0.this.f33937f.containsKey(entry.getKey()) && x0.this.f33938g.apply((Object) entry.getKey())) {
                    return x0.this.f33937f.remove(entry.getKey(), entry.getValue());
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(h3<K, V> h3Var, com.google.common.base.b0<? super K> b0Var) {
        this.f33937f = (h3) com.google.common.base.a0.E(h3Var);
        this.f33938g = (com.google.common.base.b0) com.google.common.base.a0.E(b0Var);
    }

    public h3<K, V> a() {
        return this.f33937f;
    }

    @Override // com.google.common.collect.h
    Map<K, Collection<V>> b() {
        return f3.G(this.f33937f.asMap(), this.f33938g);
    }

    @Override // com.google.common.collect.h
    Collection<Map.Entry<K, V>> c() {
        return new c();
    }

    @Override // com.google.common.collect.h3
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        if (this.f33937f.containsKey(obj)) {
            return this.f33938g.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.h
    Set<K> d() {
        return o4.i(this.f33937f.keySet(), this.f33938g);
    }

    @Override // com.google.common.collect.h
    k3<K> e() {
        return l3.j(this.f33937f.keys(), this.f33938g);
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> get(K k10) {
        if (this.f33938g.apply(k10)) {
            return this.f33937f.get(k10);
        }
        if (this.f33937f instanceof n4) {
            return new b(k10);
        }
        return new a(k10);
    }

    @Override // com.google.common.collect.h
    Collection<V> h() {
        return new a1(this);
    }

    @Override // com.google.common.collect.h
    Iterator<Map.Entry<K, V>> i() {
        throw new AssertionError("should never be called");
    }

    Collection<V> k() {
        if (this.f33937f instanceof n4) {
            return ImmutableSet.of();
        }
        return ImmutableList.of();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> removeAll(Object obj) {
        return containsKey(obj) ? this.f33937f.removeAll(obj) : k();
    }

    @Override // com.google.common.collect.h3
    public int size() {
        int i4 = 0;
        for (Collection<V> collection : asMap().values()) {
            i4 += collection.size();
        }
        return i4;
    }

    @Override // com.google.common.collect.z0
    public com.google.common.base.b0<? super Map.Entry<K, V>> v() {
        return f3.U(this.f33938g);
    }
}
