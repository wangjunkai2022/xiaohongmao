package com.google.common.collect;

import com.google.common.collect.f3;
import com.google.common.collect.h;
import com.google.common.collect.j3;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractMapBasedMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class e<K, V> extends com.google.common.collect.h<K, V> implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final long f33265h = 2447537837011683357L;

    /* renamed from: f  reason: collision with root package name */
    private transient Map<K, Collection<V>> f33266f;

    /* renamed from: g  reason: collision with root package name */
    private transient int f33267g;

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    class a extends e<K, V>.d<V> {
        a() {
            super();
        }

        @Override // com.google.common.collect.e.d
        V a(K k10, V v9) {
            return v9;
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    class b extends e<K, V>.d<Map.Entry<K, V>> {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e.d
        /* renamed from: b */
        public Map.Entry<K, V> a(K k10, V v9) {
            return f3.O(k10, v9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class c extends f3.r0<K, Collection<V>> {

        /* renamed from: d  reason: collision with root package name */
        final transient Map<K, Collection<V>> f33270d;

        /* compiled from: AbstractMapBasedMultimap.java */
        /* loaded from: classes2.dex */
        class a extends f3.s<K, Collection<V>> {
            a() {
            }

            @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return z.k(c.this.f33270d.entrySet(), obj);
            }

            @Override // com.google.common.collect.f3.s
            Map<K, Collection<V>> e() {
                return c.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    e.this.A(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }
        }

        /* compiled from: AbstractMapBasedMultimap.java */
        /* loaded from: classes2.dex */
        class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<Map.Entry<K, Collection<V>>> f33273a;
            @NullableDecl

            /* renamed from: b  reason: collision with root package name */
            Collection<V> f33274b;

            b() {
                this.f33273a = c.this.f33270d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f33273a.next();
                this.f33274b = next.getValue();
                return c.this.f(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33273a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                y.e(this.f33274b != null);
                this.f33273a.remove();
                e.this.f33267g -= this.f33274b.size();
                this.f33274b.clear();
                this.f33274b = null;
            }
        }

        c(Map<K, Collection<V>> map) {
            this.f33270d = map;
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f33270d == e.this.f33266f) {
                e.this.clear();
            } else {
                x2.h(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return f3.o0(this.f33270d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) f3.p0(this.f33270d, obj);
            if (collection == null) {
                return null;
            }
            return e.this.D(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f33270d.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> s9 = e.this.s();
            s9.addAll(remove);
            e.this.f33267g -= remove.size();
            remove.clear();
            return s9;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || this.f33270d.equals(obj);
        }

        Map.Entry<K, Collection<V>> f(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return f3.O(key, e.this.D(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f33270d.hashCode();
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return e.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33270d.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f33270d.toString();
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    private abstract class d<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<K, Collection<V>>> f33276a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        K f33277b = null;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        Collection<V> f33278c = null;

        /* renamed from: d  reason: collision with root package name */
        Iterator<V> f33279d = x2.w();

        d() {
            this.f33276a = (Iterator<Map.Entry<K, V>>) e.this.f33266f.entrySet().iterator();
        }

        abstract T a(K k10, V v9);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33276a.hasNext() || this.f33279d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f33279d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f33276a.next();
                this.f33277b = next.getKey();
                Collection<V> value = next.getValue();
                this.f33278c = value;
                this.f33279d = value.iterator();
            }
            return a(this.f33277b, this.f33279d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f33279d.remove();
            if (this.f33278c.isEmpty()) {
                this.f33276a.remove();
            }
            e.p(e.this);
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* renamed from: com.google.common.collect.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0222e extends f3.b0<K, Collection<V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractMapBasedMultimap.java */
        /* renamed from: com.google.common.collect.e$e$a */
        /* loaded from: classes2.dex */
        public class a implements Iterator<K> {
            @NullableDecl

            /* renamed from: a  reason: collision with root package name */
            Map.Entry<K, Collection<V>> f33282a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f33283b;

            a(Iterator it) {
                this.f33283b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33283b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f33283b.next();
                this.f33282a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                y.e(this.f33282a != null);
                Collection<V> value = this.f33282a.getValue();
                this.f33283b.remove();
                e.this.f33267g -= value.size();
                value.clear();
                this.f33282a = null;
            }
        }

        C0222e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            x2.h(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return e().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || e().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return e().keySet().hashCode();
        }

        @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(e().entrySet().iterator());
        }

        @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i4;
            Collection<V> remove = e().remove(obj);
            if (remove != null) {
                i4 = remove.size();
                remove.clear();
                e.this.f33267g -= i4;
            } else {
                i4 = 0;
            }
            return i4 > 0;
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    class f extends e<K, V>.i implements NavigableMap<K, Collection<V>> {
        f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k10) {
            Map.Entry<K, Collection<V>> ceilingEntry = i().ceilingEntry(k10);
            if (ceilingEntry == null) {
                return null;
            }
            return f(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return i().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new f(i().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = i().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return f(firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k10) {
            Map.Entry<K, Collection<V>> floorEntry = i().floorEntry(k10);
            if (floorEntry == null) {
                return null;
            }
            return f(floorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return i().floorKey(k10);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k10) {
            Map.Entry<K, Collection<V>> higherEntry = i().higherEntry(k10);
            if (higherEntry == null) {
                return null;
            }
            return f(higherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return i().higherKey(k10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e.i
        /* renamed from: j */
        public NavigableSet<K> g() {
            return new g(i());
        }

        @Override // com.google.common.collect.e.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: k */
        public NavigableMap<K, Collection<V>> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // com.google.common.collect.e.i, com.google.common.collect.e.c, com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: l */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = i().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return f(lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k10) {
            Map.Entry<K, Collection<V>> lowerEntry = i().lowerEntry(k10);
            if (lowerEntry == null) {
                return null;
            }
            return f(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return i().lowerKey(k10);
        }

        Map.Entry<K, Collection<V>> m(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (it.hasNext()) {
                Map.Entry<K, Collection<V>> next = it.next();
                Collection<V> s9 = e.this.s();
                s9.addAll(next.getValue());
                it.remove();
                return f3.O(next.getKey(), e.this.C(s9));
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e.i
        /* renamed from: n */
        public NavigableMap<K, Collection<V>> i() {
            return (NavigableMap) super.i();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // com.google.common.collect.e.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: o */
        public NavigableMap<K, Collection<V>> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.e.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: p */
        public NavigableMap<K, Collection<V>> tailMap(K k10) {
            return tailMap(k10, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k10, boolean z9) {
            return new f(i().headMap(k10, z9));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k10, boolean z9, K k11, boolean z10) {
            return new f(i().subMap(k10, z9, k11, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k10, boolean z9) {
            return new f(i().tailMap(k10, z9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class g extends e<K, V>.j implements NavigableSet<K> {
        g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k10) {
            return f().ceilingKey(k10);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new g(f().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k10) {
            return f().floorKey(k10);
        }

        @Override // com.google.common.collect.e.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: g */
        public NavigableSet<K> headSet(K k10) {
            return headSet(k10, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e.j
        /* renamed from: h */
        public NavigableMap<K, Collection<V>> f() {
            return (NavigableMap) super.f();
        }

        @Override // java.util.NavigableSet
        public K higher(K k10) {
            return f().higherKey(k10);
        }

        @Override // com.google.common.collect.e.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: j */
        public NavigableSet<K> subSet(K k10, K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override // com.google.common.collect.e.j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: k */
        public NavigableSet<K> tailSet(K k10) {
            return tailSet(k10, true);
        }

        @Override // java.util.NavigableSet
        public K lower(K k10) {
            return f().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) x2.U(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) x2.U(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k10, boolean z9) {
            return new g(f().headMap(k10, z9));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k10, boolean z9, K k11, boolean z10) {
            return new g(f().subMap(k10, z9, k11, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k10, boolean z9) {
            return new g(f().tailMap(k10, z9));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class h extends e<K, V>.l implements RandomAccess {
        h(@NullableDecl K k10, List<V> list, @NullableDecl e<K, V>.k kVar) {
            super(k10, list, kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class i extends e<K, V>.c implements SortedMap<K, Collection<V>> {
        @MonotonicNonNullDecl

        /* renamed from: f  reason: collision with root package name */
        SortedSet<K> f33288f;

        i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return i().firstKey();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.r0
        /* renamed from: g */
        public SortedSet<K> b() {
            return new j(i());
        }

        @Override // com.google.common.collect.e.c, com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: h */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f33288f;
            if (sortedSet == null) {
                SortedSet<K> b10 = b();
                this.f33288f = b10;
                return b10;
            }
            return sortedSet;
        }

        public SortedMap<K, Collection<V>> headMap(K k10) {
            return new i(i().headMap(k10));
        }

        SortedMap<K, Collection<V>> i() {
            return (SortedMap) this.f33270d;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return i().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k10, K k11) {
            return new i(i().subMap(k10, k11));
        }

        public SortedMap<K, Collection<V>> tailMap(K k10) {
            return new i(i().tailMap(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class j extends e<K, V>.C0222e implements SortedSet<K> {
        j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return f().comparator();
        }

        SortedMap<K, Collection<V>> f() {
            return (SortedMap) super.e();
        }

        @Override // java.util.SortedSet
        public K first() {
            return f().firstKey();
        }

        public SortedSet<K> headSet(K k10) {
            return new j(f().headMap(k10));
        }

        @Override // java.util.SortedSet
        public K last() {
            return f().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new j(f().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new j(f().tailMap(k10));
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    class m extends e<K, V>.o implements NavigableSet<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public m(@NullableDecl K k10, NavigableSet<V> navigableSet, @NullableDecl e<K, V>.k kVar) {
            super(k10, navigableSet, kVar);
        }

        private NavigableSet<V> j(NavigableSet<V> navigableSet) {
            return new m(this.f33291a, navigableSet, b() == null ? this : b());
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v9) {
            return g().ceiling(v9);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new k.a(g().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return j(g().descendingSet());
        }

        @Override // java.util.NavigableSet
        public V floor(V v9) {
            return g().floor(v9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.e.o
        /* renamed from: h */
        public NavigableSet<V> g() {
            return (NavigableSet) super.g();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v9, boolean z9) {
            return j(g().headSet(v9, z9));
        }

        @Override // java.util.NavigableSet
        public V higher(V v9) {
            return g().higher(v9);
        }

        @Override // java.util.NavigableSet
        public V lower(V v9) {
            return g().lower(v9);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) x2.U(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) x2.U(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v9, boolean z9, V v10, boolean z10) {
            return j(g().subSet(v9, z9, v10, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v9, boolean z9) {
            return j(g().tailSet(v9, z9));
        }
    }

    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    class n extends e<K, V>.k implements Set<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public n(@NullableDecl K k10, Set<V> set) {
            super(k10, set, null);
        }

        @Override // com.google.common.collect.e.k, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean I = o4.I((Set) this.f33292b, collection);
            if (I) {
                int size2 = this.f33292b.size();
                e.this.f33267g += size2 - size;
                f();
            }
            return I;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class o extends e<K, V>.k implements SortedSet<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public o(@NullableDecl K k10, SortedSet<V> sortedSet, @NullableDecl e<K, V>.k kVar) {
            super(k10, sortedSet, kVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return g().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            e();
            return g().first();
        }

        SortedSet<V> g() {
            return (SortedSet) c();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v9) {
            e();
            return new o(d(), g().headSet(v9), b() == null ? this : b());
        }

        @Override // java.util.SortedSet
        public V last() {
            e();
            return g().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v9, V v10) {
            e();
            return new o(d(), g().subSet(v9, v10), b() == null ? this : b());
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v9) {
            e();
            return new o(d(), g().tailSet(v9), b() == null ? this : b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(Map<K, Collection<V>> map) {
        com.google.common.base.a0.d(map.isEmpty());
        this.f33266f = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(Object obj) {
        Collection collection = (Collection) f3.q0(this.f33266f, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f33267g -= size;
        }
    }

    static /* synthetic */ int o(e eVar) {
        int i4 = eVar.f33267g;
        eVar.f33267g = i4 + 1;
        return i4;
    }

    static /* synthetic */ int p(e eVar) {
        int i4 = eVar.f33267g;
        eVar.f33267g = i4 - 1;
        return i4;
    }

    private Collection<V> y(@NullableDecl K k10) {
        Collection<V> collection = this.f33266f.get(k10);
        if (collection == null) {
            Collection<V> t9 = t(k10);
            this.f33266f.put(k10, t9);
            return t9;
        }
        return collection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> z(Collection<E> collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void B(Map<K, Collection<V>> map) {
        this.f33266f = map;
        this.f33267g = 0;
        for (Collection<V> collection : map.values()) {
            com.google.common.base.a0.d(!collection.isEmpty());
            this.f33267g += collection.size();
        }
    }

    <E> Collection<E> C(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    Collection<V> D(@NullableDecl K k10, Collection<V> collection) {
        return new k(k10, collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<V> E(@NullableDecl K k10, List<V> list, @NullableDecl e<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(k10, list, kVar) : new l(k10, list, kVar);
    }

    @Override // com.google.common.collect.h
    Map<K, Collection<V>> b() {
        return new c(this.f33266f);
    }

    @Override // com.google.common.collect.h
    Collection<Map.Entry<K, V>> c() {
        if (this instanceof n4) {
            return new h.b();
        }
        return new h.a();
    }

    @Override // com.google.common.collect.h3
    public void clear() {
        for (Collection<V> collection : this.f33266f.values()) {
            collection.clear();
        }
        this.f33266f.clear();
        this.f33267g = 0;
    }

    @Override // com.google.common.collect.h3
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f33266f.containsKey(obj);
    }

    @Override // com.google.common.collect.h
    Set<K> d() {
        return new C0222e(this.f33266f);
    }

    @Override // com.google.common.collect.h
    k3<K> e() {
        return new j3.g(this);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> get(@NullableDecl K k10) {
        Collection<V> collection = this.f33266f.get(k10);
        if (collection == null) {
            collection = t(k10);
        }
        return D(k10, collection);
    }

    @Override // com.google.common.collect.h
    Collection<V> h() {
        return new h.c();
    }

    @Override // com.google.common.collect.h
    Iterator<Map.Entry<K, V>> i() {
        return new b();
    }

    @Override // com.google.common.collect.h
    Iterator<V> j() {
        return new a();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public boolean put(@NullableDecl K k10, @NullableDecl V v9) {
        Collection<V> collection = this.f33266f.get(k10);
        if (collection == null) {
            Collection<V> t9 = t(k10);
            if (t9.add(v9)) {
                this.f33267g++;
                this.f33266f.put(k10, t9);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(v9)) {
            this.f33267g++;
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<K, Collection<V>> r() {
        return this.f33266f;
    }

    @Override // com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> removeAll(@NullableDecl Object obj) {
        Collection<V> remove = this.f33266f.remove(obj);
        if (remove == null) {
            return x();
        }
        Collection s9 = s();
        s9.addAll(remove);
        this.f33267g -= remove.size();
        remove.clear();
        return (Collection<V>) C(s9);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public Collection<V> replaceValues(@NullableDecl K k10, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k10);
        }
        Collection<V> y9 = y(k10);
        Collection s9 = s();
        s9.addAll(y9);
        this.f33267g -= y9.size();
        y9.clear();
        while (it.hasNext()) {
            if (y9.add(it.next())) {
                this.f33267g++;
            }
        }
        return (Collection<V>) C(s9);
    }

    abstract Collection<V> s();

    @Override // com.google.common.collect.h3
    public int size() {
        return this.f33267g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<V> t(@NullableDecl K k10) {
        return s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> u() {
        Map<K, Collection<V>> map = this.f33266f;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.f33266f);
        }
        if (map instanceof SortedMap) {
            return new i((SortedMap) this.f33266f);
        }
        return new c(this.f33266f);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public Collection<V> values() {
        return super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> w() {
        Map<K, Collection<V>> map = this.f33266f;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.f33266f);
        }
        if (map instanceof SortedMap) {
            return new j((SortedMap) this.f33266f);
        }
        return new C0222e(this.f33266f);
    }

    Collection<V> x() {
        return (Collection<V>) C(s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class k extends AbstractCollection<V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        final K f33291a;

        /* renamed from: b  reason: collision with root package name */
        Collection<V> f33292b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        final e<K, V>.k f33293c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        final Collection<V> f33294d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public k(@NullableDecl K k10, Collection<V> collection, @NullableDecl e<K, V>.k kVar) {
            this.f33291a = k10;
            this.f33292b = collection;
            this.f33293c = kVar;
            this.f33294d = kVar == null ? null : kVar.c();
        }

        void a() {
            e<K, V>.k kVar = this.f33293c;
            if (kVar != null) {
                kVar.a();
            } else {
                e.this.f33266f.put(this.f33291a, this.f33292b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v9) {
            e();
            boolean isEmpty = this.f33292b.isEmpty();
            boolean add = this.f33292b.add(v9);
            if (add) {
                e.o(e.this);
                if (isEmpty) {
                    a();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f33292b.addAll(collection);
            if (addAll) {
                int size2 = this.f33292b.size();
                e.this.f33267g += size2 - size;
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        e<K, V>.k b() {
            return this.f33293c;
        }

        Collection<V> c() {
            return this.f33292b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f33292b.clear();
            e.this.f33267g -= size;
            f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            e();
            return this.f33292b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            e();
            return this.f33292b.containsAll(collection);
        }

        K d() {
            return this.f33291a;
        }

        void e() {
            Collection<V> collection;
            e<K, V>.k kVar = this.f33293c;
            if (kVar != null) {
                kVar.e();
                if (this.f33293c.c() != this.f33294d) {
                    throw new ConcurrentModificationException();
                }
            } else if (!this.f33292b.isEmpty() || (collection = (Collection) e.this.f33266f.get(this.f33291a)) == null) {
            } else {
                this.f33292b = collection;
            }
        }

        @Override // java.util.Collection
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            e();
            return this.f33292b.equals(obj);
        }

        void f() {
            e<K, V>.k kVar = this.f33293c;
            if (kVar != null) {
                kVar.f();
            } else if (this.f33292b.isEmpty()) {
                e.this.f33266f.remove(this.f33291a);
            }
        }

        @Override // java.util.Collection
        public int hashCode() {
            e();
            return this.f33292b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            e();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            e();
            boolean remove = this.f33292b.remove(obj);
            if (remove) {
                e.p(e.this);
                f();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f33292b.removeAll(collection);
            if (removeAll) {
                int size2 = this.f33292b.size();
                e.this.f33267g += size2 - size;
                f();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            com.google.common.base.a0.E(collection);
            int size = size();
            boolean retainAll = this.f33292b.retainAll(collection);
            if (retainAll) {
                int size2 = this.f33292b.size();
                e.this.f33267g += size2 - size;
                f();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            e();
            return this.f33292b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            e();
            return this.f33292b.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractMapBasedMultimap.java */
        /* loaded from: classes2.dex */
        public class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<V> f33296a;

            /* renamed from: b  reason: collision with root package name */
            final Collection<V> f33297b;

            a() {
                Collection<V> collection = k.this.f33292b;
                this.f33297b = collection;
                this.f33296a = e.z(collection);
            }

            Iterator<V> a() {
                b();
                return this.f33296a;
            }

            void b() {
                k.this.e();
                if (k.this.f33292b != this.f33297b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.f33296a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                b();
                return this.f33296a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f33296a.remove();
                e.p(e.this);
                k.this.f();
            }

            a(Iterator<V> it) {
                this.f33297b = k.this.f33292b;
                this.f33296a = it;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractMapBasedMultimap.java */
    /* loaded from: classes2.dex */
    public class l extends e<K, V>.k implements List<V> {

        /* compiled from: AbstractMapBasedMultimap.java */
        /* loaded from: classes2.dex */
        private class a extends e<K, V>.k.a implements ListIterator<V> {
            a() {
                super();
            }

            private ListIterator<V> c() {
                return (ListIterator) a();
            }

            @Override // java.util.ListIterator
            public void add(V v9) {
                boolean isEmpty = l.this.isEmpty();
                c().add(v9);
                e.o(e.this);
                if (isEmpty) {
                    l.this.a();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v9) {
                c().set(v9);
            }

            public a(int i4) {
                super(l.this.g().listIterator(i4));
            }
        }

        l(@NullableDecl K k10, List<V> list, @NullableDecl e<K, V>.k kVar) {
            super(k10, list, kVar);
        }

        @Override // java.util.List
        public void add(int i4, V v9) {
            e();
            boolean isEmpty = c().isEmpty();
            g().add(i4, v9);
            e.o(e.this);
            if (isEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i4, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = g().addAll(i4, collection);
            if (addAll) {
                int size2 = c().size();
                e.this.f33267g += size2 - size;
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        List<V> g() {
            return (List) c();
        }

        @Override // java.util.List
        public V get(int i4) {
            e();
            return g().get(i4);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            e();
            return g().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            e();
            return g().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            e();
            return new a();
        }

        @Override // java.util.List
        public V remove(int i4) {
            e();
            V remove = g().remove(i4);
            e.p(e.this);
            f();
            return remove;
        }

        @Override // java.util.List
        public V set(int i4, V v9) {
            e();
            return g().set(i4, v9);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i4, int i10) {
            e();
            return e.this.E(d(), g().subList(i4, i10), b() == null ? this : b());
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i4) {
            e();
            return new a(i4);
        }
    }
}
