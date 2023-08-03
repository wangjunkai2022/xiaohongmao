package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.c3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Maps.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class f3 {

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static class a implements com.google.common.base.q<V1, V2> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t f33420a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f33421b;

        a(t tVar, Object obj) {
            this.f33420a = tVar;
            this.f33421b = obj;
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, V2] */
        @Override // com.google.common.base.q
        public V2 apply(@NullableDecl V1 v12) {
            return this.f33420a.a(this.f33421b, v12);
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static abstract class a0<K, V> extends AbstractMap<K, V> {

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        class a extends s<K, V> {
            a() {
            }

            @Override // com.google.common.collect.f3.s
            Map<K, V> e() {
                return a0.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return a0.this.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Iterator<Map.Entry<K, V>> a();

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            x2.h(a());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public abstract int size();
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static class b implements com.google.common.base.q<Map.Entry<K, V1>, V2> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t f33423a;

        b(t tVar) {
            this.f33423a = tVar;
        }

        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, V2] */
        @Override // com.google.common.base.q
        /* renamed from: a */
        public V2 apply(Map.Entry<K, V1> entry) {
            return this.f33423a.a(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class b0<K, V> extends o4.k<K> {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f33424a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b0(Map<K, V> map) {
            this.f33424a = (Map) com.google.common.base.a0.E(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e().containsKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<K, V> e() {
            return this.f33424a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return e().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return f3.S(e().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                e().remove(obj);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class c extends com.google.common.collect.g<K, V2> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map.Entry f33425a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t f33426b;

        c(Map.Entry entry, t tVar) {
            this.f33425a = entry;
            this.f33426b = tVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, K] */
        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f33425a.getKey();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, V2] */
        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V2 getValue() {
            return this.f33426b.a(this.f33425a.getKey(), this.f33425a.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class c0<K, V> implements c3<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f33427a;

        /* renamed from: b  reason: collision with root package name */
        final Map<K, V> f33428b;

        /* renamed from: c  reason: collision with root package name */
        final Map<K, V> f33429c;

        /* renamed from: d  reason: collision with root package name */
        final Map<K, c3.a<V>> f33430d;

        c0(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, c3.a<V>> map4) {
            this.f33427a = f3.K0(map);
            this.f33428b = f3.K0(map2);
            this.f33429c = f3.K0(map3);
            this.f33430d = f3.K0(map4);
        }

        @Override // com.google.common.collect.c3
        public Map<K, V> a() {
            return this.f33428b;
        }

        @Override // com.google.common.collect.c3
        public Map<K, V> b() {
            return this.f33427a;
        }

        @Override // com.google.common.collect.c3
        public Map<K, c3.a<V>> c() {
            return this.f33430d;
        }

        @Override // com.google.common.collect.c3
        public Map<K, V> d() {
            return this.f33429c;
        }

        @Override // com.google.common.collect.c3
        public boolean e() {
            return this.f33427a.isEmpty() && this.f33428b.isEmpty() && this.f33430d.isEmpty();
        }

        @Override // com.google.common.collect.c3
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof c3) {
                c3 c3Var = (c3) obj;
                return b().equals(c3Var.b()) && a().equals(c3Var.a()) && d().equals(c3Var.d()) && c().equals(c3Var.c());
            }
            return false;
        }

        @Override // com.google.common.collect.c3
        public int hashCode() {
            return com.google.common.base.w.b(b(), a(), d(), c());
        }

        public String toString() {
            if (e()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            if (!this.f33427a.isEmpty()) {
                sb.append(": only on left=");
                sb.append(this.f33427a);
            }
            if (!this.f33428b.isEmpty()) {
                sb.append(": only on right=");
                sb.append(this.f33428b);
            }
            if (!this.f33430d.isEmpty()) {
                sb.append(": value differences=");
                sb.append(this.f33430d);
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class d implements com.google.common.base.q<Map.Entry<K, V1>, Map.Entry<K, V2>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t f33431a;

        d(t tVar) {
            this.f33431a = tVar;
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return f3.A0(this.f33431a, entry);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static final class d0<K, V> extends com.google.common.collect.j<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableSet<K> f33432a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.common.base.q<? super K, V> f33433b;

        d0(NavigableSet<K> navigableSet, com.google.common.base.q<? super K, V> qVar) {
            this.f33432a = (NavigableSet) com.google.common.base.a0.E(navigableSet);
            this.f33433b = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<K, V>> a() {
            return f3.m(this.f33432a, this.f33433b);
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<K, V>> b() {
            return descendingMap().entrySet().iterator();
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f33432a.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f33432a.comparator();
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return f3.k(this.f33432a.descendingSet(), this.f33433b);
        }

        @Override // com.google.common.collect.j, java.util.AbstractMap, java.util.Map
        @NullableDecl
        public V get(@NullableDecl Object obj) {
            if (com.google.common.collect.z.k(this.f33432a, obj)) {
                return this.f33433b.apply(obj);
            }
            return null;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z9) {
            return f3.k(this.f33432a.headSet(k10, z9), this.f33433b);
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return f3.l0(this.f33432a);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33432a.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
            return f3.k(this.f33432a.subSet(k10, z9, k11, z10), this.f33433b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z9) {
            return f3.k(this.f33432a.tailSet(k10, z9), this.f33433b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class e extends g5<Map.Entry<K, V>, K> {
        e(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, K] */
        @Override // com.google.common.collect.g5
        /* renamed from: b */
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class e0<K, V> extends g0<K, V> implements NavigableSet<K> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e0(NavigableMap<K, V> navigableMap) {
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
            return f().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k10) {
            return f().floorKey(k10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.g0
        /* renamed from: g */
        public NavigableMap<K, V> f() {
            return (NavigableMap) this.f33424a;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k10, boolean z9) {
            return f().headMap(k10, z9).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public K higher(K k10) {
            return f().higherKey(k10);
        }

        @Override // java.util.NavigableSet
        public K lower(K k10) {
            return f().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) f3.T(f().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) f3.T(f().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k10, boolean z9, K k11, boolean z10) {
            return f().subMap(k10, z9, k11, z10).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k10, boolean z9) {
            return f().tailMap(k10, z9).navigableKeySet();
        }

        @Override // com.google.common.collect.f3.g0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k10) {
            return headSet(k10, false);
        }

        @Override // com.google.common.collect.f3.g0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k10, K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override // com.google.common.collect.f3.g0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k10) {
            return tailSet(k10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class f extends g5<Map.Entry<K, V>, V> {
        f(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v1, types: [V, java.lang.Object] */
        @Override // com.google.common.collect.g5
        /* renamed from: b */
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class f0<K, V> extends o<K, V> implements SortedMap<K, V> {
        f0(SortedSet<K> sortedSet, com.google.common.base.q<? super K, V> qVar) {
            super(sortedSet, qVar);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return d().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.o
        /* renamed from: e */
        public SortedSet<K> d() {
            return (SortedSet) super.d();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return d().first();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k10) {
            return f3.l(d().headSet(k10), this.f33452e);
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return f3.n0(d());
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return d().last();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return f3.l(d().subSet(k10, k11), this.f33452e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k10) {
            return f3.l(d().tailSet(k10), this.f33452e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class g extends g5<K, Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f33434b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(Iterator it, com.google.common.base.q qVar) {
            super(it);
            this.f33434b = qVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g5
        /* renamed from: b */
        public Map.Entry<K, V> a(K k10) {
            return f3.O(k10, this.f33434b.apply(k10));
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static class g0<K, V> extends b0<K, V> implements SortedSet<K> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public g0(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return e().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.b0
        /* renamed from: f */
        public SortedMap<K, V> e() {
            return (SortedMap) super.e();
        }

        @Override // java.util.SortedSet
        public K first() {
            return e().firstKey();
        }

        public SortedSet<K> headSet(K k10) {
            return new g0(e().headMap(k10));
        }

        @Override // java.util.SortedSet
        public K last() {
            return e().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new g0(e().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new g0(e().tailMap(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class h extends x1<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f33435a;

        h(Set set) {
            this.f33435a = set;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<E> M() {
            return this.f33435a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(E e4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class h0<K, V> extends c0<K, V> implements u4<K, V> {
        h0(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, c3.a<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override // com.google.common.collect.f3.c0, com.google.common.collect.c3
        public SortedMap<K, V> a() {
            return (SortedMap) super.a();
        }

        @Override // com.google.common.collect.f3.c0, com.google.common.collect.c3
        public SortedMap<K, V> b() {
            return (SortedMap) super.b();
        }

        @Override // com.google.common.collect.f3.c0, com.google.common.collect.c3
        public SortedMap<K, c3.a<V>> c() {
            return (SortedMap) super.c();
        }

        @Override // com.google.common.collect.f3.c0, com.google.common.collect.c3
        public SortedMap<K, V> d() {
            return (SortedMap) super.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class i extends b2<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SortedSet f33436a;

        i(SortedSet sortedSet) {
            this.f33436a = sortedSet;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(E e4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.b2, com.google.common.collect.x1
        /* renamed from: b0 */
        public SortedSet<E> Y() {
            return this.f33436a;
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> headSet(E e4) {
            return f3.n0(super.headSet(e4));
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> subSet(E e4, E e10) {
            return f3.n0(super.subSet(e4, e10));
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> tailSet(E e4) {
            return f3.n0(super.tailSet(e4));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class i0<K, V1, V2> extends a0<K, V2> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V1> f33437a;

        /* renamed from: b  reason: collision with root package name */
        final t<? super K, ? super V1, V2> f33438b;

        i0(Map<K, V1> map, t<? super K, ? super V1, V2> tVar) {
            this.f33437a = (Map) com.google.common.base.a0.E(map);
            this.f33438b = (t) com.google.common.base.a0.E(tVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<K, V2>> a() {
            return x2.c0(this.f33437a.entrySet().iterator(), f3.g(this.f33438b));
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f33437a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f33437a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            V1 v12 = this.f33437a.get(obj);
            if (v12 != null || this.f33437a.containsKey(obj)) {
                return this.f33438b.a(obj, v12);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f33437a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            if (this.f33437a.containsKey(obj)) {
                return this.f33438b.a(obj, (V1) this.f33437a.remove(obj));
            }
            return null;
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33437a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new q0(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class j extends u1<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NavigableSet f33439a;

        j(NavigableSet navigableSet) {
            this.f33439a = navigableSet;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Queue
        public boolean add(E e4) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.e1, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return f3.l0(super.descendingSet());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u1, com.google.common.collect.b2
        /* renamed from: e0 */
        public NavigableSet<E> b0() {
            return this.f33439a;
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> headSet(E e4) {
            return f3.n0(super.headSet(e4));
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> subSet(E e4, E e10) {
            return f3.n0(super.subSet(e4, e10));
        }

        @Override // com.google.common.collect.b2, java.util.SortedSet
        public SortedSet<E> tailSet(E e4) {
            return f3.n0(super.tailSet(e4));
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            return f3.l0(super.headSet(e4, z9));
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            return f3.l0(super.subSet(e4, z9, e10, z10));
        }

        @Override // com.google.common.collect.u1, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            return f3.l0(super.tailSet(e4, z9));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class j0<K, V1, V2> extends k0<K, V1, V2> implements NavigableMap<K, V2> {
        j0(NavigableMap<K, V1> navigableMap, t<? super K, ? super V1, V2> tVar) {
            super(navigableMap, tVar);
        }

        @NullableDecl
        private Map.Entry<K, V2> g(@NullableDecl Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return f3.A0(this.f33438b, entry);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.f3.k0
        /* renamed from: c */
        public NavigableMap<K, V1> b() {
            return (NavigableMap) super.b();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> ceilingEntry(K k10) {
            return g(b().ceilingEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return b().ceilingKey(k10);
        }

        @Override // com.google.common.collect.f3.k0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: d */
        public NavigableMap<K, V2> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return b().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return f3.y0(b().descendingMap(), this.f33438b);
        }

        @Override // com.google.common.collect.f3.k0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<K, V2> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.f3.k0, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: f */
        public NavigableMap<K, V2> tailMap(K k10) {
            return tailMap(k10, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> firstEntry() {
            return g(b().firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> floorEntry(K k10) {
            return g(b().floorEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return b().floorKey(k10);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> higherEntry(K k10) {
            return g(b().higherEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return b().higherKey(k10);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lastEntry() {
            return g(b().lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lowerEntry(K k10) {
            return g(b().lowerEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return b().lowerKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return b().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollFirstEntry() {
            return g(b().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollLastEntry() {
            return g(b().pollLastEntry());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k10, boolean z9) {
            return f3.y0(b().headMap(k10, z9), this.f33438b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k10, boolean z9, K k11, boolean z10) {
            return f3.y0(b().subMap(k10, z9, k11, z10), this.f33438b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k10, boolean z9) {
            return f3.y0(b().tailMap(k10, z9), this.f33438b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class k extends com.google.common.collect.g<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map.Entry f33440a;

        k(Map.Entry entry) {
            this.f33440a = entry;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, K] */
        @Override // com.google.common.collect.g, java.util.Map.Entry
        public K getKey() {
            return this.f33440a.getKey();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getValue() {
            return this.f33440a.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class k0<K, V1, V2> extends i0<K, V1, V2> implements SortedMap<K, V2> {
        k0(SortedMap<K, V1> sortedMap, t<? super K, ? super V1, V2> tVar) {
            super(sortedMap, tVar);
        }

        protected SortedMap<K, V1> b() {
            return (SortedMap) this.f33437a;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return b().firstKey();
        }

        public SortedMap<K, V2> headMap(K k10) {
            return f3.z0(b().headMap(k10), this.f33438b);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return b().lastKey();
        }

        public SortedMap<K, V2> subMap(K k10, K k11) {
            return f3.z0(b().subMap(k10, k11), this.f33438b);
        }

        public SortedMap<K, V2> tailMap(K k10) {
            return f3.z0(b().tailMap(k10), this.f33438b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class l extends k5<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f33441a;

        l(Iterator it) {
            this.f33441a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            return f3.H0((Map.Entry) this.f33441a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33441a.hasNext();
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    private static class l0<K, V> extends p1<K, V> implements com.google.common.collect.u<K, V>, Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f33442e = 0;

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f33443a;

        /* renamed from: b  reason: collision with root package name */
        final com.google.common.collect.u<? extends K, ? extends V> f33444b;
        @RetainedWith
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        com.google.common.collect.u<V, K> f33445c;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        transient Set<V> f33446d;

        l0(com.google.common.collect.u<? extends K, ? extends V> uVar, @NullableDecl com.google.common.collect.u<V, K> uVar2) {
            this.f33443a = Collections.unmodifiableMap(uVar);
            this.f33444b = uVar;
            this.f33445c = uVar2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.p1, com.google.common.collect.v1
        /* renamed from: M */
        public Map<K, V> L() {
            return this.f33443a;
        }

        @Override // com.google.common.collect.u
        public V forcePut(K k10, V v9) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u
        public com.google.common.collect.u<V, K> inverse() {
            com.google.common.collect.u<V, K> uVar = this.f33445c;
            if (uVar == null) {
                l0 l0Var = new l0(this.f33444b.inverse(), this);
                this.f33445c = l0Var;
                return l0Var;
            }
            return uVar;
        }

        @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
        public Set<V> values() {
            Set<V> set = this.f33446d;
            if (set == null) {
                Set<V> unmodifiableSet = Collections.unmodifiableSet(this.f33444b.values());
                this.f33446d = unmodifiableSet;
                return unmodifiableSet;
            }
            return set;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class m implements t<K, V1, V2> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.q f33447a;

        m(com.google.common.base.q qVar) {
            this.f33447a = qVar;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, V2] */
        @Override // com.google.common.collect.f3.t
        public V2 a(K k10, V1 v12) {
            return this.f33447a.apply(v12);
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static class m0<K, V> extends e1<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final Collection<Map.Entry<K, V>> f33448a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public m0(Collection<Map.Entry<K, V>> collection) {
            this.f33448a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e1, com.google.common.collect.v1
        /* renamed from: M */
        public Collection<Map.Entry<K, V>> L() {
            return this.f33448a;
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return f3.I0(this.f33448a.iterator());
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return V();
        }

        @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) W(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static abstract class n<K, V> extends r0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        final Map<K, V> f33449d;

        /* renamed from: e  reason: collision with root package name */
        final com.google.common.base.b0<? super Map.Entry<K, V>> f33450e;

        n(Map<K, V> map, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            this.f33449d = map;
            this.f33450e = b0Var;
        }

        @Override // com.google.common.collect.f3.r0
        Collection<V> c() {
            return new z(this, this.f33449d, this.f33450e);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f33449d.containsKey(obj) && d(obj, this.f33449d.get(obj));
        }

        boolean d(@NullableDecl Object obj, @NullableDecl V v9) {
            return this.f33450e.apply(f3.O(obj, v9));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V v9 = this.f33449d.get(obj);
            if (v9 == null || !d(obj, v9)) {
                return null;
            }
            return v9;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k10, V v9) {
            com.google.common.base.a0.d(d(k10, v9));
            return this.f33449d.put(k10, v9);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                com.google.common.base.a0.d(d(entry.getKey(), entry.getValue()));
            }
            this.f33449d.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (containsKey(obj)) {
                return this.f33449d.remove(obj);
            }
            return null;
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    static class n0<K, V> extends m0<K, V> implements Set<Map.Entry<K, V>> {
        n0(Set<Map.Entry<K, V>> set) {
            super(set);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class o<K, V> extends r0<K, V> {

        /* renamed from: d  reason: collision with root package name */
        private final Set<K> f33451d;

        /* renamed from: e  reason: collision with root package name */
        final com.google.common.base.q<? super K, V> f33452e;

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        class a extends s<K, V> {
            a() {
            }

            @Override // com.google.common.collect.f3.s
            Map<K, V> e() {
                return o.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return f3.m(o.this.d(), o.this.f33452e);
            }
        }

        o(Set<K> set, com.google.common.base.q<? super K, V> qVar) {
            this.f33451d = (Set) com.google.common.base.a0.E(set);
            this.f33452e = (com.google.common.base.q) com.google.common.base.a0.E(qVar);
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<K, V>> a() {
            return new a();
        }

        @Override // com.google.common.collect.f3.r0
        public Set<K> b() {
            return f3.m0(d());
        }

        @Override // com.google.common.collect.f3.r0
        Collection<V> c() {
            return com.google.common.collect.z.n(this.f33451d, this.f33452e);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            d().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return d().contains(obj);
        }

        Set<K> d() {
            return this.f33451d;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            if (com.google.common.collect.z.k(d(), obj)) {
                return this.f33452e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@NullableDecl Object obj) {
            if (d().remove(obj)) {
                return this.f33452e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return d().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class o0<K, V> extends z1<K, V> implements NavigableMap<K, V>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<K, ? extends V> f33454a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        private transient o0<K, V> f33455b;

        o0(NavigableMap<K, ? extends V> navigableMap) {
            this.f33454a = navigableMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.z1, com.google.common.collect.p1
        /* renamed from: W */
        public SortedMap<K, V> M() {
            return Collections.unmodifiableSortedMap(this.f33454a);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k10) {
            return f3.M0(this.f33454a.ceilingEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return this.f33454a.ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return o4.O(this.f33454a.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            o0<K, V> o0Var = this.f33455b;
            if (o0Var == null) {
                o0<K, V> o0Var2 = new o0<>(this.f33454a.descendingMap(), this);
                this.f33455b = o0Var2;
                return o0Var2;
            }
            return o0Var;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return f3.M0(this.f33454a.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k10) {
            return f3.M0(this.f33454a.floorEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return this.f33454a.floorKey(k10);
        }

        @Override // com.google.common.collect.z1, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k10) {
            return f3.M0(this.f33454a.higherEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return this.f33454a.higherKey(k10);
        }

        @Override // com.google.common.collect.p1, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return f3.M0(this.f33454a.lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k10) {
            return f3.M0(this.f33454a.lowerEntry(k10));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return this.f33454a.lowerKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return o4.O(this.f33454a.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.z1, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.z1, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k10) {
            return tailMap(k10, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z9) {
            return f3.L0(this.f33454a.headMap(k10, z9));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
            return f3.L0(this.f33454a.subMap(k10, z9, k11, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z9) {
            return f3.L0(this.f33454a.tailMap(k10, z9));
        }

        o0(NavigableMap<K, ? extends V> navigableMap, o0<K, V> o0Var) {
            this.f33454a = navigableMap;
            this.f33455b = o0Var;
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    private static final class p<A, B> extends com.google.common.base.h<A, B> implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f33456d = 0;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.common.collect.u<A, B> f33457c;

        p(com.google.common.collect.u<A, B> uVar) {
            this.f33457c = (com.google.common.collect.u) com.google.common.base.a0.E(uVar);
        }

        private static <X, Y> Y p(com.google.common.collect.u<X, Y> uVar, X x9) {
            Y y9 = uVar.get(x9);
            com.google.common.base.a0.u(y9 != null, "No non-null mapping present for input: %s", x9);
            return y9;
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof p) {
                return this.f33457c.equals(((p) obj).f33457c);
            }
            return false;
        }

        public int hashCode() {
            return this.f33457c.hashCode();
        }

        @Override // com.google.common.base.h
        protected A k(B b10) {
            return (A) p(this.f33457c.inverse(), b10);
        }

        @Override // com.google.common.base.h
        protected B l(A a10) {
            return (B) p(this.f33457c, a10);
        }

        public String toString() {
            return "Maps.asConverter(" + this.f33457c + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class p0<V> implements c3.a<V> {
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final V f33458a;
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        private final V f33459b;

        private p0(@NullableDecl V v9, @NullableDecl V v10) {
            this.f33458a = v9;
            this.f33459b = v10;
        }

        static <V> c3.a<V> c(@NullableDecl V v9, @NullableDecl V v10) {
            return new p0(v9, v10);
        }

        @Override // com.google.common.collect.c3.a
        public V a() {
            return this.f33458a;
        }

        @Override // com.google.common.collect.c3.a
        public V b() {
            return this.f33459b;
        }

        @Override // com.google.common.collect.c3.a
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c3.a) {
                c3.a aVar = (c3.a) obj;
                return com.google.common.base.w.a(this.f33458a, aVar.a()) && com.google.common.base.w.a(this.f33459b, aVar.b());
            }
            return false;
        }

        @Override // com.google.common.collect.c3.a
        public int hashCode() {
            return com.google.common.base.w.b(this.f33458a, this.f33459b);
        }

        public String toString() {
            return "(" + this.f33458a + ", " + this.f33459b + ")";
        }
    }

    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    static abstract class q<K, V> extends p1<K, V> implements NavigableMap<K, V> {
        @MonotonicNonNullDecl

        /* renamed from: a  reason: collision with root package name */
        private transient Comparator<? super K> f33460a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f33461b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        private transient NavigableSet<K> f33462c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        public class a extends s<K, V> {
            a() {
            }

            @Override // com.google.common.collect.f3.s
            Map<K, V> e() {
                return q.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return q.this.X();
            }
        }

        private static <T> s3<T> Z(Comparator<T> comparator) {
            return s3.k(comparator).G();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.p1, com.google.common.collect.v1
        /* renamed from: M */
        public final Map<K, V> L() {
            return Y();
        }

        Set<Map.Entry<K, V>> W() {
            return new a();
        }

        abstract Iterator<Map.Entry<K, V>> X();

        abstract NavigableMap<K, V> Y();

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k10) {
            return Y().floorEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return Y().floorKey(k10);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.f33460a;
            if (comparator == null) {
                Comparator<? super K> comparator2 = Y().comparator();
                if (comparator2 == null) {
                    comparator2 = s3.B();
                }
                s3 Z = Z(comparator2);
                this.f33460a = Z;
                return Z;
            }
            return comparator;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Y().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Y();
        }

        @Override // com.google.common.collect.p1, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f33461b;
            if (set == null) {
                Set<Map.Entry<K, V>> W = W();
                this.f33461b = W;
                return W;
            }
            return set;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Y().lastEntry();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return Y().lastKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k10) {
            return Y().ceilingEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return Y().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z9) {
            return Y().tailMap(k10, z9).descendingMap();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k10) {
            return Y().lowerEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return Y().lowerKey(k10);
        }

        @Override // com.google.common.collect.p1, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Y().firstEntry();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return Y().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k10) {
            return Y().higherEntry(k10);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return Y().higherKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.f33462c;
            if (navigableSet == null) {
                e0 e0Var = new e0(this);
                this.f33462c = e0Var;
                return e0Var;
            }
            return navigableSet;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return Y().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return Y().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
            return Y().subMap(k11, z10, k10, z9).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z9) {
            return Y().headMap(k10, z9).descendingMap();
        }

        @Override // com.google.common.collect.v1
        public String toString() {
            return V();
        }

        @Override // com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
        public Collection<V> values() {
            return new q0(this);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k10) {
            return tailMap(k10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class q0<K, V> extends AbstractCollection<V> {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f33464a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public q0(Map<K, V> map) {
            this.f33464a = (Map) com.google.common.base.a0.E(map);
        }

        final Map<K, V> a() {
            return this.f33464a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return a().containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return f3.O0(a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (com.google.common.base.w.a(obj, entry.getValue())) {
                        a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.a0.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet u9 = o4.u();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        u9.add(entry.getKey());
                    }
                }
                return a().keySet().removeAll(u9);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.a0.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet u9 = o4.u();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        u9.add(entry.getKey());
                    }
                }
                return a().keySet().retainAll(u9);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static abstract class r implements com.google.common.base.q<Map.Entry<?, ?>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final r f33465a;

        /* renamed from: b  reason: collision with root package name */
        public static final r f33466b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ r[] f33467c;

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        enum a extends r {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.q
            @NullableDecl
            /* renamed from: a */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        enum b extends r {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.q
            @NullableDecl
            /* renamed from: a */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        static {
            a aVar = new a("KEY", 0);
            f33465a = aVar;
            b bVar = new b("VALUE", 1);
            f33466b = bVar;
            f33467c = new r[]{aVar, bVar};
        }

        private r(String str, int i4) {
        }

        public static r valueOf(String str) {
            return (r) Enum.valueOf(r.class, str);
        }

        public static r[] values() {
            return (r[]) f33467c.clone();
        }

        /* synthetic */ r(String str, int i4, e eVar) {
            this(str, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    @h3.b
    /* loaded from: classes2.dex */
    public static abstract class r0<K, V> extends AbstractMap<K, V> {
        @MonotonicNonNullDecl

        /* renamed from: a  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f33468a;
        @MonotonicNonNullDecl

        /* renamed from: b  reason: collision with root package name */
        private transient Set<K> f33469b;
        @MonotonicNonNullDecl

        /* renamed from: c  reason: collision with root package name */
        private transient Collection<V> f33470c;

        abstract Set<Map.Entry<K, V>> a();

        Set<K> b() {
            return new b0(this);
        }

        Collection<V> c() {
            return new q0(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f33468a;
            if (set == null) {
                Set<Map.Entry<K, V>> a10 = a();
                this.f33468a = a10;
                return a10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            Set<K> set = this.f33469b;
            if (set == null) {
                Set<K> b10 = b();
                this.f33469b = b10;
                return b10;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f33470c;
            if (collection == null) {
                Collection<V> c10 = c();
                this.f33470c = c10;
                return c10;
            }
            return collection;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static abstract class s<K, V> extends o4.k<Map.Entry<K, V>> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object p02 = f3.p0(e(), key);
                if (com.google.common.base.w.a(p02, entry.getValue())) {
                    return p02 != null || e().containsKey(key);
                }
                return false;
            }
            return false;
        }

        abstract Map<K, V> e();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return e().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return e().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.a0.E(collection));
            } catch (UnsupportedOperationException unused) {
                return o4.J(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.a0.E(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet y9 = o4.y(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        y9.add(((Map.Entry) obj).getKey());
                    }
                }
                return e().keySet().retainAll(y9);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e().size();
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public interface t<K, V1, V2> {
        V2 a(@NullableDecl K k10, @NullableDecl V1 v12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static final class u<K, V> extends v<K, V> implements com.google.common.collect.u<K, V> {
        @RetainedWith

        /* renamed from: g  reason: collision with root package name */
        private final com.google.common.collect.u<V, K> f33471g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        public static class a implements com.google.common.base.b0<Map.Entry<V, K>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.google.common.base.b0 f33472a;

            a(com.google.common.base.b0 b0Var) {
                this.f33472a = b0Var;
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(Map.Entry<V, K> entry) {
                return this.f33472a.apply(f3.O(entry.getValue(), entry.getKey()));
            }
        }

        u(com.google.common.collect.u<K, V> uVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            super(uVar, b0Var);
            this.f33471g = new u(uVar.inverse(), g(b0Var), this);
        }

        private static <K, V> com.google.common.base.b0<Map.Entry<V, K>> g(com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            return new a(b0Var);
        }

        @Override // com.google.common.collect.u
        public V forcePut(@NullableDecl K k10, @NullableDecl V v9) {
            com.google.common.base.a0.d(d(k10, v9));
            return h().forcePut(k10, v9);
        }

        com.google.common.collect.u<K, V> h() {
            return (com.google.common.collect.u) this.f33449d;
        }

        @Override // com.google.common.collect.u
        public com.google.common.collect.u<V, K> inverse() {
            return this.f33471g;
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.f33471g.keySet();
        }

        private u(com.google.common.collect.u<K, V> uVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var, com.google.common.collect.u<V, K> uVar2) {
            super(uVar, b0Var);
            this.f33471g = uVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class v<K, V> extends n<K, V> {

        /* renamed from: f  reason: collision with root package name */
        final Set<Map.Entry<K, V>> f33473f;

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        private class a extends x1<Map.Entry<K, V>> {

            /* compiled from: Maps.java */
            /* renamed from: com.google.common.collect.f3$v$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0223a extends g5<Map.Entry<K, V>, Map.Entry<K, V>> {

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Maps.java */
                /* renamed from: com.google.common.collect.f3$v$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                public class C0224a extends q1<K, V> {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ Map.Entry f33476a;

                    C0224a(Map.Entry entry) {
                        this.f33476a = entry;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.q1, com.google.common.collect.v1
                    /* renamed from: M */
                    public Map.Entry<K, V> L() {
                        return this.f33476a;
                    }

                    @Override // com.google.common.collect.q1, java.util.Map.Entry
                    public V setValue(V v9) {
                        com.google.common.base.a0.d(v.this.d(getKey(), v9));
                        return (V) super.setValue(v9);
                    }
                }

                C0223a(Iterator it) {
                    super(it);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.g5
                /* renamed from: b */
                public Map.Entry<K, V> a(Map.Entry<K, V> entry) {
                    return new C0224a(entry);
                }
            }

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.x1, com.google.common.collect.e1
            /* renamed from: Y */
            public Set<Map.Entry<K, V>> M() {
                return v.this.f33473f;
            }

            @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C0223a(v.this.f33473f.iterator());
            }

            /* synthetic */ a(v vVar, e eVar) {
                this();
            }
        }

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        class b extends b0<K, V> {
            b() {
                super(v.this);
            }

            @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (v.this.containsKey(obj)) {
                    v.this.f33449d.remove(obj);
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                v vVar = v.this;
                return v.e(vVar.f33449d, vVar.f33450e, collection);
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                v vVar = v.this;
                return v.f(vVar.f33449d, vVar.f33450e, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return b3.s(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) b3.s(iterator()).toArray(tArr);
            }
        }

        v(Map<K, V> map, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            super(map, b0Var);
            this.f33473f = o4.i(map.entrySet(), this.f33450e);
        }

        static <K, V> boolean e(Map<K, V> map, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (b0Var.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        static <K, V> boolean f(Map<K, V> map, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (b0Var.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<K, V>> a() {
            return new a(this, null);
        }

        @Override // com.google.common.collect.f3.r0
        Set<K> b() {
            return new b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class w<K, V> extends com.google.common.collect.j<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<K, V> f33479a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.common.base.b0<? super Map.Entry<K, V>> f33480b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<K, V> f33481c;

        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        class a extends e0<K, V> {
            a(NavigableMap navigableMap) {
                super(navigableMap);
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return v.e(w.this.f33479a, w.this.f33480b, collection);
            }

            @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return v.f(w.this.f33479a, w.this.f33480b, collection);
            }
        }

        w(NavigableMap<K, V> navigableMap, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            this.f33479a = (NavigableMap) com.google.common.base.a0.E(navigableMap);
            this.f33480b = b0Var;
            this.f33481c = new v(navigableMap, b0Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<K, V>> a() {
            return x2.x(this.f33479a.entrySet().iterator(), this.f33480b);
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<K, V>> b() {
            return x2.x(this.f33479a.descendingMap().entrySet().iterator(), this.f33480b);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f33481c.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f33479a.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.f33481c.containsKey(obj);
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return f3.z(this.f33479a.descendingMap(), this.f33480b);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return this.f33481c.entrySet();
        }

        @Override // com.google.common.collect.j, java.util.AbstractMap, java.util.Map
        @NullableDecl
        public V get(@NullableDecl Object obj) {
            return this.f33481c.get(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k10, boolean z9) {
            return f3.z(this.f33479a.headMap(k10, z9), this.f33480b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !w2.c(this.f33479a.entrySet(), this.f33480b);
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new a(this);
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) w2.I(this.f33479a.entrySet(), this.f33480b);
        }

        @Override // com.google.common.collect.j, java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) w2.I(this.f33479a.descendingMap().entrySet(), this.f33480b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k10, V v9) {
            return this.f33481c.put(k10, v9);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f33481c.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@NullableDecl Object obj) {
            return this.f33481c.remove(obj);
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f33481c.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
            return f3.z(this.f33479a.subMap(k10, z9, k11, z10), this.f33480b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k10, boolean z9) {
            return f3.z(this.f33479a.tailMap(k10, z9), this.f33480b);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new z(this, this.f33479a, this.f33480b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    public static class x<K, V> extends v<K, V> implements SortedMap<K, V> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Maps.java */
        /* loaded from: classes2.dex */
        public class a extends v<K, V>.b implements SortedSet<K> {
            a() {
                super();
            }

            @Override // java.util.SortedSet
            public Comparator<? super K> comparator() {
                return x.this.i().comparator();
            }

            @Override // java.util.SortedSet
            public K first() {
                return (K) x.this.firstKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(K k10) {
                return (SortedSet) x.this.headMap(k10).keySet();
            }

            @Override // java.util.SortedSet
            public K last() {
                return (K) x.this.lastKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(K k10, K k11) {
                return (SortedSet) x.this.subMap(k10, k11).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(K k10) {
                return (SortedSet) x.this.tailMap(k10).keySet();
            }
        }

        x(SortedMap<K, V> sortedMap, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            super(sortedMap, b0Var);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return keySet().iterator().next();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.v, com.google.common.collect.f3.r0
        /* renamed from: g */
        public SortedSet<K> b() {
            return new a();
        }

        @Override // com.google.common.collect.f3.r0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* renamed from: h */
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k10) {
            return new x(i().headMap(k10), this.f33450e);
        }

        SortedMap<K, V> i() {
            return (SortedMap) this.f33449d;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            SortedMap<K, V> i4 = i();
            while (true) {
                K lastKey = i4.lastKey();
                if (d(lastKey, this.f33449d.get(lastKey))) {
                    return lastKey;
                }
                i4 = i().headMap(lastKey);
            }
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k10, K k11) {
            return new x(i().subMap(k10, k11), this.f33450e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k10) {
            return new x(i().tailMap(k10), this.f33450e);
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    private static class y<K, V> extends n<K, V> {

        /* renamed from: f  reason: collision with root package name */
        final com.google.common.base.b0<? super K> f33484f;

        y(Map<K, V> map, com.google.common.base.b0<? super K> b0Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var2) {
            super(map, b0Var2);
            this.f33484f = b0Var;
        }

        @Override // com.google.common.collect.f3.r0
        protected Set<Map.Entry<K, V>> a() {
            return o4.i(this.f33449d.entrySet(), this.f33450e);
        }

        @Override // com.google.common.collect.f3.r0
        Set<K> b() {
            return o4.i(this.f33449d.keySet(), this.f33484f);
        }

        @Override // com.google.common.collect.f3.n, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f33449d.containsKey(obj) && this.f33484f.apply(obj);
        }
    }

    /* compiled from: Maps.java */
    /* loaded from: classes2.dex */
    private static final class z<K, V> extends q0<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final Map<K, V> f33485b;

        /* renamed from: c  reason: collision with root package name */
        final com.google.common.base.b0<? super Map.Entry<K, V>> f33486c;

        z(Map<K, V> map, Map<K, V> map2, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
            super(map);
            this.f33485b = map2;
            this.f33486c = b0Var;
        }

        @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            Iterator<Map.Entry<K, V>> it = this.f33485b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f33486c.apply(next) && com.google.common.base.w.a(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f33485b.entrySet().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f33486c.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f33485b.entrySet().iterator();
            boolean z9 = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.f33486c.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z9 = true;
                }
            }
            return z9;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return b3.s(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) b3.s(iterator()).toArray(tArr);
        }
    }

    private f3() {
    }

    public static <K, V> SortedMap<K, V> A(SortedMap<K, V> sortedMap, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(b0Var);
        if (sortedMap instanceof x) {
            return E((x) sortedMap, b0Var);
        }
        return new x((SortedMap) com.google.common.base.a0.E(sortedMap), b0Var);
    }

    static <V2, K, V1> Map.Entry<K, V2> A0(t<? super K, ? super V1, V2> tVar, Map.Entry<K, V1> entry) {
        com.google.common.base.a0.E(tVar);
        com.google.common.base.a0.E(entry);
        return new c(entry, tVar);
    }

    private static <K, V> com.google.common.collect.u<K, V> B(u<K, V> uVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new u(uVar.h(), com.google.common.base.c0.d(uVar.f33450e, b0Var));
    }

    public static <K, V1, V2> Map<K, V2> B0(Map<K, V1> map, com.google.common.base.q<? super V1, V2> qVar) {
        return x0(map, i(qVar));
    }

    private static <K, V> Map<K, V> C(n<K, V> nVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new v(nVar.f33449d, com.google.common.base.c0.d(nVar.f33450e, b0Var));
    }

    @h3.c
    public static <K, V1, V2> NavigableMap<K, V2> C0(NavigableMap<K, V1> navigableMap, com.google.common.base.q<? super V1, V2> qVar) {
        return y0(navigableMap, i(qVar));
    }

    @h3.c
    private static <K, V> NavigableMap<K, V> D(w<K, V> wVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new w(((w) wVar).f33479a, com.google.common.base.c0.d(((w) wVar).f33480b, b0Var));
    }

    public static <K, V1, V2> SortedMap<K, V2> D0(SortedMap<K, V1> sortedMap, com.google.common.base.q<? super V1, V2> qVar) {
        return z0(sortedMap, i(qVar));
    }

    private static <K, V> SortedMap<K, V> E(x<K, V> xVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        return new x(xVar.i(), com.google.common.base.c0.d(xVar.f33450e, b0Var));
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> E0(Iterable<V> iterable, com.google.common.base.q<? super V, K> qVar) {
        return F0(iterable.iterator(), qVar);
    }

    public static <K, V> com.google.common.collect.u<K, V> F(com.google.common.collect.u<K, V> uVar, com.google.common.base.b0<? super K> b0Var) {
        com.google.common.base.a0.E(b0Var);
        return x(uVar, U(b0Var));
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> F0(Iterator<V> it, com.google.common.base.q<? super V, K> qVar) {
        com.google.common.base.a0.E(qVar);
        ImmutableMap.b builder = ImmutableMap.builder();
        while (it.hasNext()) {
            V next = it.next();
            builder.d(qVar.apply(next), next);
        }
        try {
            return builder.a();
        } catch (IllegalArgumentException e4) {
            throw new IllegalArgumentException(e4.getMessage() + ". To index multiple values under a key, use Multimaps.index.");
        }
    }

    public static <K, V> Map<K, V> G(Map<K, V> map, com.google.common.base.b0<? super K> b0Var) {
        com.google.common.base.a0.E(b0Var);
        com.google.common.base.b0 U = U(b0Var);
        if (map instanceof n) {
            return C((n) map, U);
        }
        return new y((Map) com.google.common.base.a0.E(map), b0Var, U);
    }

    public static <K, V> com.google.common.collect.u<K, V> G0(com.google.common.collect.u<? extends K, ? extends V> uVar) {
        return new l0(uVar, null);
    }

    @h3.c
    public static <K, V> NavigableMap<K, V> H(NavigableMap<K, V> navigableMap, com.google.common.base.b0<? super K> b0Var) {
        return z(navigableMap, U(b0Var));
    }

    static <K, V> Map.Entry<K, V> H0(Map.Entry<? extends K, ? extends V> entry) {
        com.google.common.base.a0.E(entry);
        return new k(entry);
    }

    public static <K, V> SortedMap<K, V> I(SortedMap<K, V> sortedMap, com.google.common.base.b0<? super K> b0Var) {
        return A(sortedMap, U(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> k5<Map.Entry<K, V>> I0(Iterator<Map.Entry<K, V>> it) {
        return new l(it);
    }

    public static <K, V> com.google.common.collect.u<K, V> J(com.google.common.collect.u<K, V> uVar, com.google.common.base.b0<? super V> b0Var) {
        return x(uVar, Q0(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Set<Map.Entry<K, V>> J0(Set<Map.Entry<K, V>> set) {
        return new n0(Collections.unmodifiableSet(set));
    }

    public static <K, V> Map<K, V> K(Map<K, V> map, com.google.common.base.b0<? super V> b0Var) {
        return y(map, Q0(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map<K, V> K0(Map<K, ? extends V> map) {
        if (map instanceof SortedMap) {
            return Collections.unmodifiableSortedMap((SortedMap) map);
        }
        return Collections.unmodifiableMap(map);
    }

    @h3.c
    public static <K, V> NavigableMap<K, V> L(NavigableMap<K, V> navigableMap, com.google.common.base.b0<? super V> b0Var) {
        return z(navigableMap, Q0(b0Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public static <K, V> NavigableMap<K, V> L0(NavigableMap<K, ? extends V> navigableMap) {
        com.google.common.base.a0.E(navigableMap);
        return navigableMap instanceof o0 ? navigableMap : new o0(navigableMap);
    }

    public static <K, V> SortedMap<K, V> M(SortedMap<K, V> sortedMap, com.google.common.base.b0<? super V> b0Var) {
        return A(sortedMap, Q0(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    public static <K, V> Map.Entry<K, V> M0(@NullableDecl Map.Entry<K, ? extends V> entry) {
        if (entry == null) {
            return null;
        }
        return H0(entry);
    }

    @h3.c
    public static ImmutableMap<String, String> N(Properties properties) {
        ImmutableMap.b builder = ImmutableMap.builder();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            builder.d(str, properties.getProperty(str));
        }
        return builder.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> com.google.common.base.q<Map.Entry<?, V>, V> N0() {
        return r.f33466b;
    }

    @h3.b(serializable = true)
    public static <K, V> Map.Entry<K, V> O(@NullableDecl K k10, @NullableDecl V v9) {
        return new j2(k10, v9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<V> O0(Iterator<Map.Entry<K, V>> it) {
        return new f(it);
    }

    @h3.b(serializable = true)
    public static <K extends Enum<K>, V> ImmutableMap<K, V> P(Map<K, ? extends V> map) {
        if (map instanceof k2) {
            return (k2) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return ImmutableMap.of();
        }
        Map.Entry<K, ? extends V> next = it.next();
        K key = next.getKey();
        V value = next.getValue();
        com.google.common.collect.y.a(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((EnumMap) key, (K) value);
        while (it.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            com.google.common.collect.y.a(key2, value2);
            enumMap.put((EnumMap) key2, (K) value2);
        }
        return k2.n(enumMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static <V> V P0(@NullableDecl Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableMap<E, Integer> Q(Collection<E> collection) {
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int i4 = 0;
        for (E e4 : collection) {
            bVar.d(e4, Integer.valueOf(i4));
            i4++;
        }
        return bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> com.google.common.base.b0<Map.Entry<?, V>> Q0(com.google.common.base.b0<? super V> b0Var) {
        return com.google.common.base.c0.h(b0Var, N0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> com.google.common.base.q<Map.Entry<K, ?>, K> R() {
        return r.f33465a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<K> S(Iterator<Map.Entry<K, V>> it) {
        return new e(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static <K> K T(@NullableDecl Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> com.google.common.base.b0<Map.Entry<K, ?>> U(com.google.common.base.b0<? super K> b0Var) {
        return com.google.common.base.c0.h(b0Var, R());
    }

    public static <K, V> ConcurrentMap<K, V> V() {
        return new ConcurrentHashMap();
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> W(Class<K> cls) {
        return new EnumMap<>((Class) com.google.common.base.a0.E(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> X(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> HashMap<K, V> Y() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> Z(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> HashMap<K, V> a0(int i4) {
        return new HashMap<>(o(i4));
    }

    public static <K, V> IdentityHashMap<K, V> b0() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> c0() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> d0(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> e0(int i4) {
        return new LinkedHashMap<>(o(i4));
    }

    public static <A, B> com.google.common.base.h<A, B> f(com.google.common.collect.u<A, B> uVar) {
        return new p(uVar);
    }

    public static <K extends Comparable, V> TreeMap<K, V> f0() {
        return new TreeMap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V1, V2> com.google.common.base.q<Map.Entry<K, V1>, Map.Entry<K, V2>> g(t<? super K, ? super V1, V2> tVar) {
        com.google.common.base.a0.E(tVar);
        return new d(tVar);
    }

    public static <C, K extends C, V> TreeMap<K, V> g0(@NullableDecl Comparator<C> comparator) {
        return new TreeMap<>((Comparator<? super K>) comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V1, V2> com.google.common.base.q<Map.Entry<K, V1>, V2> h(t<? super K, ? super V1, V2> tVar) {
        com.google.common.base.a0.E(tVar);
        return new b(tVar);
    }

    public static <K, V> TreeMap<K, V> h0(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V1, V2> t<K, V1, V2> i(com.google.common.base.q<? super V1, V2> qVar) {
        com.google.common.base.a0.E(qVar);
        return new m(qVar);
    }

    static <E> Comparator<? super E> i0(@NullableDecl Comparator<? super E> comparator) {
        return comparator != null ? comparator : s3.B();
    }

    public static <K, V> Map<K, V> j(Set<K> set, com.google.common.base.q<? super K, V> qVar) {
        return new o(set, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void j0(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    @h3.c
    public static <K, V> NavigableMap<K, V> k(NavigableSet<K> navigableSet, com.google.common.base.q<? super K, V> qVar) {
        return new d0(navigableSet, qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> boolean k0(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(H0((Map.Entry) obj));
        }
        return false;
    }

    public static <K, V> SortedMap<K, V> l(SortedSet<K> sortedSet, com.google.common.base.q<? super K, V> qVar) {
        return new f0(sortedSet, qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @h3.c
    public static <E> NavigableSet<E> l0(NavigableSet<E> navigableSet) {
        return new j(navigableSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<Map.Entry<K, V>> m(Set<K> set, com.google.common.base.q<? super K, V> qVar) {
        return new g(set.iterator(), qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> m0(Set<E> set) {
        return new h(set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V1, V2> com.google.common.base.q<V1, V2> n(t<? super K, V1, V2> tVar, K k10) {
        com.google.common.base.a0.E(tVar);
        return new a(tVar, k10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> n0(SortedSet<E> sortedSet) {
        return new i(sortedSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i4) {
        if (i4 < 3) {
            com.google.common.collect.y.b(i4, "expectedSize");
            return i4 + 1;
        } else if (i4 < 1073741824) {
            return (int) ((i4 / 0.75f) + 1.0f);
        } else {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean o0(Map<?, ?> map, Object obj) {
        com.google.common.base.a0.E(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> boolean p(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(H0((Map.Entry) obj));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V p0(Map<?, V> map, @NullableDecl Object obj) {
        com.google.common.base.a0.E(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q(Map<?, ?> map, @NullableDecl Object obj) {
        return x2.q(S(map.entrySet().iterator()), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V q0(Map<?, V> map, Object obj) {
        com.google.common.base.a0.E(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(Map<?, ?> map, @NullableDecl Object obj) {
        return x2.q(O0(map.entrySet().iterator()), obj);
    }

    @h3.c
    @h3.a
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> r0(NavigableMap<K, V> navigableMap, Range<K> range) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != s3.B() && range.hasLowerBound() && range.hasUpperBound()) {
            com.google.common.base.a0.e(navigableMap.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            K lowerEndpoint = range.lowerEndpoint();
            BoundType lowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableMap.subMap(lowerEndpoint, lowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        } else if (range.hasLowerBound()) {
            return navigableMap.tailMap(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        } else if (range.hasUpperBound()) {
            return navigableMap.headMap(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        } else {
            return (NavigableMap) com.google.common.base.a0.E(navigableMap);
        }
    }

    public static <K, V> c3<K, V> s(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        if (map instanceof SortedMap) {
            return u((SortedMap) map, map2);
        }
        return t(map, map2, Equivalence.c());
    }

    public static <K, V> com.google.common.collect.u<K, V> s0(com.google.common.collect.u<K, V> uVar) {
        return c5.g(uVar, null);
    }

    public static <K, V> c3<K, V> t(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence) {
        com.google.common.base.a0.E(equivalence);
        LinkedHashMap c02 = c0();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap c03 = c0();
        LinkedHashMap c04 = c0();
        v(map, map2, equivalence, c02, linkedHashMap, c03, c04);
        return new c0(c02, linkedHashMap, c03, c04);
    }

    @h3.c
    public static <K, V> NavigableMap<K, V> t0(NavigableMap<K, V> navigableMap) {
        return c5.o(navigableMap);
    }

    public static <K, V> u4<K, V> u(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        com.google.common.base.a0.E(sortedMap);
        com.google.common.base.a0.E(map);
        Comparator i02 = i0(sortedMap.comparator());
        TreeMap g02 = g0(i02);
        TreeMap g03 = g0(i02);
        g03.putAll(map);
        TreeMap g04 = g0(i02);
        TreeMap g05 = g0(i02);
        v(sortedMap, map, Equivalence.c(), g02, g03, g04, g05);
        return new h0(g02, g03, g04, g05);
    }

    public static <K, V> ImmutableMap<K, V> u0(Iterable<K> iterable, com.google.common.base.q<? super K, V> qVar) {
        return v0(iterable.iterator(), qVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <K, V> void v(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, c3.a<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                Object obj = (V) map4.remove(key);
                if (equivalence.d(value, obj)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, p0.c(value, obj));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    public static <K, V> ImmutableMap<K, V> v0(Iterator<K> it, com.google.common.base.q<? super K, V> qVar) {
        com.google.common.base.a0.E(qVar);
        LinkedHashMap c02 = c0();
        while (it.hasNext()) {
            K next = it.next();
            c02.put(next, qVar.apply(next));
        }
        return ImmutableMap.copyOf((Map) c02);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean w(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String w0(Map<?, ?> map) {
        StringBuilder g4 = com.google.common.collect.z.g(map.size());
        g4.append('{');
        boolean z9 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z9) {
                g4.append(", ");
            }
            z9 = false;
            g4.append(entry.getKey());
            g4.append('=');
            g4.append(entry.getValue());
        }
        g4.append('}');
        return g4.toString();
    }

    public static <K, V> com.google.common.collect.u<K, V> x(com.google.common.collect.u<K, V> uVar, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(uVar);
        com.google.common.base.a0.E(b0Var);
        return uVar instanceof u ? B((u) uVar, b0Var) : new u(uVar, b0Var);
    }

    public static <K, V1, V2> Map<K, V2> x0(Map<K, V1> map, t<? super K, ? super V1, V2> tVar) {
        return new i0(map, tVar);
    }

    public static <K, V> Map<K, V> y(Map<K, V> map, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(b0Var);
        if (map instanceof n) {
            return C((n) map, b0Var);
        }
        return new v((Map) com.google.common.base.a0.E(map), b0Var);
    }

    @h3.c
    public static <K, V1, V2> NavigableMap<K, V2> y0(NavigableMap<K, V1> navigableMap, t<? super K, ? super V1, V2> tVar) {
        return new j0(navigableMap, tVar);
    }

    @h3.c
    public static <K, V> NavigableMap<K, V> z(NavigableMap<K, V> navigableMap, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        com.google.common.base.a0.E(b0Var);
        if (navigableMap instanceof w) {
            return D((w) navigableMap, b0Var);
        }
        return new w((NavigableMap) com.google.common.base.a0.E(navigableMap), b0Var);
    }

    public static <K, V1, V2> SortedMap<K, V2> z0(SortedMap<K, V1> sortedMap, t<? super K, ? super V1, V2> tVar) {
        return new k0(sortedMap, tVar);
    }
}
