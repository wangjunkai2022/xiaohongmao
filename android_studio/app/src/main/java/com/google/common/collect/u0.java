package com.google.common.collect;

import com.google.common.collect.f3;
import com.google.common.collect.j3;
import com.google.common.collect.k3;
import com.google.common.collect.l3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredEntryMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public class u0<K, V> extends h<K, V> implements z0<K, V> {

    /* renamed from: f  reason: collision with root package name */
    final h3<K, V> f33891f;

    /* renamed from: g  reason: collision with root package name */
    final com.google.common.base.b0<? super Map.Entry<K, V>> f33892g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredEntryMultimap.java */
    /* loaded from: classes2.dex */
    public class a extends f3.r0<K, Collection<V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FilteredEntryMultimap.java */
        /* renamed from: com.google.common.collect.u0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0239a extends f3.s<K, Collection<V>> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: FilteredEntryMultimap.java */
            /* renamed from: com.google.common.collect.u0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0240a extends com.google.common.collect.c<Map.Entry<K, Collection<V>>> {

                /* renamed from: c  reason: collision with root package name */
                final Iterator<Map.Entry<K, Collection<V>>> f33895c;

                C0240a() {
                    this.f33895c = u0.this.f33891f.asMap().entrySet().iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.c
                /* renamed from: d */
                public Map.Entry<K, Collection<V>> a() {
                    while (this.f33895c.hasNext()) {
                        Map.Entry<K, Collection<V>> next = this.f33895c.next();
                        K key = next.getKey();
                        Collection l10 = u0.l(next.getValue(), new c(key));
                        if (!l10.isEmpty()) {
                            return f3.O(key, l10);
                        }
                    }
                    return b();
                }
            }

            C0239a() {
            }

            @Override // com.google.common.collect.f3.s
            Map<K, Collection<V>> e() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C0240a();
            }

            @Override // com.google.common.collect.f3.s, com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return u0.this.m(com.google.common.base.c0.n(collection));
            }

            @Override // com.google.common.collect.f3.s, com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return u0.this.m(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)));
            }

            @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return x2.Z(iterator());
            }
        }

        /* compiled from: FilteredEntryMultimap.java */
        /* loaded from: classes2.dex */
        class b extends f3.b0<K, Collection<V>> {
            b() {
                super(a.this);
            }

            @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@NullableDecl Object obj) {
                return a.this.remove(obj) != null;
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return u0.this.m(f3.U(com.google.common.base.c0.n(collection)));
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return u0.this.m(f3.U(com.google.common.base.c0.q(com.google.common.base.c0.n(collection))));
            }
        }

        /* compiled from: FilteredEntryMultimap.java */
        /* loaded from: classes2.dex */
        class c extends f3.q0<K, Collection<V>> {
            c() {
                super(a.this);
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@NullableDecl Object obj) {
                if (obj instanceof Collection) {
                    Collection collection = (Collection) obj;
                    Iterator<Map.Entry<K, Collection<V>>> it = u0.this.f33891f.asMap().entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<K, Collection<V>> next = it.next();
                        Collection l10 = u0.l(next.getValue(), new c(next.getKey()));
                        if (!l10.isEmpty() && collection.equals(l10)) {
                            if (l10.size() == next.getValue().size()) {
                                it.remove();
                                return true;
                            }
                            l10.clear();
                            return true;
                        }
                    }
                    return false;
                }
                return false;
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return u0.this.m(f3.Q0(com.google.common.base.c0.n(collection)));
            }

            @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return u0.this.m(f3.Q0(com.google.common.base.c0.q(com.google.common.base.c0.n(collection))));
            }
        }

        a() {
        }

        @Override // com.google.common.collect.f3.r0
        Set<Map.Entry<K, Collection<V>>> a() {
            return new C0239a();
        }

        @Override // com.google.common.collect.f3.r0
        Set<K> b() {
            return new b();
        }

        @Override // com.google.common.collect.f3.r0
        Collection<Collection<V>> c() {
            return new c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            u0.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Collection<V> get(@NullableDecl Object obj) {
            Collection<V> collection = u0.this.f33891f.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> l10 = u0.l(collection, new c(obj));
            if (l10.isEmpty()) {
                return null;
            }
            return l10;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection<V> remove(@NullableDecl Object obj) {
            Collection<V> collection = u0.this.f33891f.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList q9 = b3.q();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (u0.this.n(obj, next)) {
                    it.remove();
                    q9.add(next);
                }
            }
            if (q9.isEmpty()) {
                return null;
            }
            if (u0.this.f33891f instanceof n4) {
                return Collections.unmodifiableSet(o4.B(q9));
            }
            return Collections.unmodifiableList(q9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredEntryMultimap.java */
    /* loaded from: classes2.dex */
    public class b extends j3.g<K, V> {

        /* compiled from: FilteredEntryMultimap.java */
        /* loaded from: classes2.dex */
        class a extends l3.i<K> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: FilteredEntryMultimap.java */
            /* renamed from: com.google.common.collect.u0$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0241a implements com.google.common.base.b0<Map.Entry<K, Collection<V>>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ com.google.common.base.b0 f33901a;

                C0241a(com.google.common.base.b0 b0Var) {
                    this.f33901a = b0Var;
                }

                @Override // com.google.common.base.b0
                /* renamed from: a */
                public boolean apply(Map.Entry<K, Collection<V>> entry) {
                    return this.f33901a.apply(l3.k(entry.getKey(), entry.getValue().size()));
                }
            }

            a() {
            }

            private boolean f(com.google.common.base.b0<? super k3.a<K>> b0Var) {
                return u0.this.m(new C0241a(b0Var));
            }

            @Override // com.google.common.collect.l3.i
            k3<K> e() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<k3.a<K>> iterator() {
                return b.this.d();
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return f(com.google.common.base.c0.n(collection));
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return f(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return u0.this.keySet().size();
            }
        }

        b() {
            super(u0.this);
        }

        @Override // com.google.common.collect.i, com.google.common.collect.k3
        public Set<k3.a<K>> entrySet() {
            return new a();
        }

        @Override // com.google.common.collect.j3.g, com.google.common.collect.i, com.google.common.collect.k3
        public int remove(@NullableDecl Object obj, int i4) {
            y.b(i4, "occurrences");
            if (i4 == 0) {
                return count(obj);
            }
            Collection<V> collection = u0.this.f33891f.asMap().get(obj);
            int i10 = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                if (u0.this.n(obj, it.next()) && (i10 = i10 + 1) <= i4) {
                    it.remove();
                }
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredEntryMultimap.java */
    /* loaded from: classes2.dex */
    public final class c implements com.google.common.base.b0<V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f33903a;

        c(K k10) {
            this.f33903a = k10;
        }

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl V v9) {
            return u0.this.n(this.f33903a, v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(h3<K, V> h3Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        this.f33891f = (h3) com.google.common.base.a0.E(h3Var);
        this.f33892g = (com.google.common.base.b0) com.google.common.base.a0.E(b0Var);
    }

    static <E> Collection<E> l(Collection<E> collection, com.google.common.base.b0<? super E> b0Var) {
        if (collection instanceof Set) {
            return o4.i((Set) collection, b0Var);
        }
        return z.e(collection, b0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(K k10, V v9) {
        return this.f33892g.apply(f3.O(k10, v9));
    }

    @Override // com.google.common.collect.z0
    public h3<K, V> a() {
        return this.f33891f;
    }

    @Override // com.google.common.collect.h
    Map<K, Collection<V>> b() {
        return new a();
    }

    @Override // com.google.common.collect.h
    Collection<Map.Entry<K, V>> c() {
        return l(this.f33891f.entries(), this.f33892g);
    }

    @Override // com.google.common.collect.h3
    public void clear() {
        entries().clear();
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        return asMap().get(obj) != null;
    }

    @Override // com.google.common.collect.h
    Set<K> d() {
        return asMap().keySet();
    }

    @Override // com.google.common.collect.h
    k3<K> e() {
        return new b();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> get(K k10) {
        return l(this.f33891f.get(k10), new c(k10));
    }

    @Override // com.google.common.collect.h
    Collection<V> h() {
        return new a1(this);
    }

    @Override // com.google.common.collect.h
    Iterator<Map.Entry<K, V>> i() {
        throw new AssertionError("should never be called");
    }

    boolean m(com.google.common.base.b0<? super Map.Entry<K, Collection<V>>> b0Var) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.f33891f.asMap().entrySet().iterator();
        boolean z9 = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection l10 = l(next.getValue(), new c(key));
            if (!l10.isEmpty() && b0Var.apply(f3.O(key, l10))) {
                if (l10.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    l10.clear();
                }
                z9 = true;
            }
        }
        return z9;
    }

    Collection<V> o() {
        if (this.f33891f instanceof n4) {
            return Collections.emptySet();
        }
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> removeAll(@NullableDecl Object obj) {
        return (Collection) com.google.common.base.v.a(asMap().remove(obj), o());
    }

    @Override // com.google.common.collect.h3
    public int size() {
        return entries().size();
    }

    @Override // com.google.common.collect.z0
    public com.google.common.base.b0<? super Map.Entry<K, V>> v() {
        return this.f33892g;
    }
}
