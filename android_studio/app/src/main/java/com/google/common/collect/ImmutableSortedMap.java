package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class ImmutableSortedMap<K, V> extends q2<K, V> implements NavigableMap<K, V> {

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<Comparable> f32823i = s3.B();

    /* renamed from: j  reason: collision with root package name */
    private static final ImmutableSortedMap<Comparable, Object> f32824j = new ImmutableSortedMap<>(ImmutableSortedSet.s(s3.B()), ImmutableList.of());

    /* renamed from: k  reason: collision with root package name */
    private static final long f32825k = 0;

    /* renamed from: f  reason: collision with root package name */
    private final transient h4<K> f32826f;

    /* renamed from: g  reason: collision with root package name */
    private final transient ImmutableList<V> f32827g;

    /* renamed from: h  reason: collision with root package name */
    private transient ImmutableSortedMap<K, V> f32828h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Comparator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f32829a;

        a(Comparator comparator) {
            this.f32829a = comparator;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Map.Entry<K, V> entry, Map.Entry<K, V> entry2) {
            return this.f32829a.compare(entry.getKey(), entry2.getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends m2<K, V> {

        /* loaded from: classes2.dex */
        class a extends ImmutableList<Map.Entry<K, V>> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableCollection
            public boolean e() {
                return true;
            }

            @Override // java.util.List
            /* renamed from: o */
            public Map.Entry<K, V> get(int i4) {
                return new AbstractMap.SimpleImmutableEntry(ImmutableSortedMap.this.f32826f.asList().get(i4), ImmutableSortedMap.this.f32827g.get(i4));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return ImmutableSortedMap.this.size();
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet
        public ImmutableList<Map.Entry<K, V>> n() {
            return new a();
        }

        @Override // com.google.common.collect.m2
        ImmutableMap<K, V> q() {
            return ImmutableSortedMap.this;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public k5<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* loaded from: classes2.dex */
    public static class c<K, V> extends ImmutableMap.b<K, V> {

        /* renamed from: e  reason: collision with root package name */
        private transient Object[] f32832e;

        /* renamed from: f  reason: collision with root package name */
        private transient Object[] f32833f;

        /* renamed from: g  reason: collision with root package name */
        private final Comparator<? super K> f32834g;

        public c(Comparator<? super K> comparator) {
            this(comparator, 4);
        }

        private void b(int i4) {
            Object[] objArr = this.f32832e;
            if (i4 > objArr.length) {
                int f10 = ImmutableCollection.b.f(objArr.length, i4);
                this.f32832e = Arrays.copyOf(this.f32832e, f10);
                this.f32833f = Arrays.copyOf(this.f32833f, f10);
            }
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: i */
        public ImmutableSortedMap<K, V> a() {
            int i4;
            int i10 = this.f32726c;
            if (i10 != 0) {
                if (i10 != 1) {
                    Object[] copyOf = Arrays.copyOf(this.f32832e, i10);
                    Arrays.sort(copyOf, this.f32834g);
                    Object[] objArr = new Object[this.f32726c];
                    for (int i11 = 0; i11 < this.f32726c; i11++) {
                        if (i11 > 0) {
                            if (this.f32834g.compare(copyOf[i11 - 1], copyOf[i11]) == 0) {
                                throw new IllegalArgumentException("keys required to be distinct but compared as equal: " + copyOf[i4] + " and " + copyOf[i11]);
                            }
                        }
                        objArr[Arrays.binarySearch(copyOf, this.f32832e[i11], this.f32834g)] = this.f32833f[i11];
                    }
                    return new ImmutableSortedMap<>(new h4(ImmutableList.j(copyOf), this.f32834g), ImmutableList.j(objArr));
                }
                return ImmutableSortedMap.v(this.f32834g, this.f32832e[0], this.f32833f[0]);
            }
            return ImmutableSortedMap.q(this.f32834g);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        @h3.a
        @Deprecated
        /* renamed from: j */
        public c<K, V> c(Comparator<? super V> comparator) {
            throw new UnsupportedOperationException("Not available on ImmutableSortedMap.Builder");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: k */
        public c<K, V> d(K k10, V v9) {
            b(this.f32726c + 1);
            y.a(k10, v9);
            Object[] objArr = this.f32832e;
            int i4 = this.f32726c;
            objArr[i4] = k10;
            this.f32833f[i4] = v9;
            this.f32726c = i4 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: l */
        public c<K, V> e(Map.Entry<? extends K, ? extends V> entry) {
            super.e(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        @h3.a
        /* renamed from: m */
        public c<K, V> f(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.f(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @CanIgnoreReturnValue
        /* renamed from: n */
        public c<K, V> g(Map<? extends K, ? extends V> map) {
            super.g(map);
            return this;
        }

        private c(Comparator<? super K> comparator, int i4) {
            this.f32834g = (Comparator) com.google.common.base.a0.E(comparator);
            this.f32832e = new Object[i4];
            this.f32833f = new Object[i4];
        }
    }

    /* loaded from: classes2.dex */
    private static class d extends ImmutableMap.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f32835e = 0;

        /* renamed from: d  reason: collision with root package name */
        private final Comparator<Object> f32836d;

        d(ImmutableSortedMap<?, ?> immutableSortedMap) {
            super(immutableSortedMap);
            this.f32836d = immutableSortedMap.comparator();
        }

        @Override // com.google.common.collect.ImmutableMap.e
        Object b() {
            return a(new c(this.f32836d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap(h4<K> h4Var, ImmutableList<V> immutableList) {
        this(h4Var, immutableList, null);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return p(map, (s3) f32823i);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = f32823i;
        }
        if (sortedMap instanceof ImmutableSortedMap) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) sortedMap;
            if (!immutableSortedMap.j()) {
                return immutableSortedMap;
            }
        }
        return s(comparator, true, sortedMap.entrySet());
    }

    public static <K extends Comparable<?>, V> c<K, V> naturalOrder() {
        return new c<>(s3.B());
    }

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return (ImmutableSortedMap<K, V>) f32824j;
    }

    public static <K, V> c<K, V> orderedBy(Comparator<K> comparator) {
        return new c<>(comparator);
    }

    private static <K, V> ImmutableSortedMap<K, V> p(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean z9 = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 == null) {
                if (comparator == f32823i) {
                    z9 = true;
                }
            } else {
                z9 = comparator.equals(comparator2);
            }
        }
        if (z9 && (map instanceof ImmutableSortedMap)) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) map;
            if (!immutableSortedMap.j()) {
                return immutableSortedMap;
            }
        }
        return s(comparator, z9, map.entrySet());
    }

    static <K, V> ImmutableSortedMap<K, V> q(Comparator<? super K> comparator) {
        if (s3.B().equals(comparator)) {
            return of();
        }
        return new ImmutableSortedMap<>(ImmutableSortedSet.s(comparator), ImmutableList.of());
    }

    public static <K extends Comparable<?>, V> c<K, V> reverseOrder() {
        return new c<>(s3.B().G());
    }

    private static <K, V> ImmutableSortedMap<K, V> s(Comparator<? super K> comparator, boolean z9, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) w2.R(iterable, ImmutableMap.f32717e);
        return t(comparator, z9, entryArr, entryArr.length);
    }

    private static <K, V> ImmutableSortedMap<K, V> t(Comparator<? super K> comparator, boolean z9, Map.Entry<K, V>[] entryArr, int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                Object[] objArr = new Object[i4];
                Object[] objArr2 = new Object[i4];
                if (z9) {
                    for (int i10 = 0; i10 < i4; i10++) {
                        K key = entryArr[i10].getKey();
                        V value = entryArr[i10].getValue();
                        y.a(key, value);
                        objArr[i10] = key;
                        objArr2[i10] = value;
                    }
                } else {
                    Arrays.sort(entryArr, 0, i4, new a(comparator));
                    Object key2 = entryArr[0].getKey();
                    objArr[0] = key2;
                    objArr2[0] = entryArr[0].getValue();
                    y.a(objArr[0], objArr2[0]);
                    int i11 = 1;
                    while (i11 < i4) {
                        Object key3 = entryArr[i11].getKey();
                        V value2 = entryArr[i11].getValue();
                        y.a(key3, value2);
                        objArr[i11] = key3;
                        objArr2[i11] = value2;
                        ImmutableMap.a(comparator.compare(key2, key3) != 0, "key", entryArr[i11 - 1], entryArr[i11]);
                        i11++;
                        key2 = key3;
                    }
                }
                return new ImmutableSortedMap<>(new h4(ImmutableList.j(objArr), comparator), ImmutableList.j(objArr2));
            }
            return v(comparator, entryArr[0].getKey(), entryArr[0].getValue());
        }
        return q(comparator);
    }

    private ImmutableSortedMap<K, V> u(int i4, int i10) {
        if (i4 == 0 && i10 == size()) {
            return this;
        }
        if (i4 == i10) {
            return q(comparator());
        }
        return new ImmutableSortedMap<>(this.f32826f.C(i4, i10), this.f32827g.subList(i4, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSortedMap<K, V> v(Comparator<? super K> comparator, K k10, V v9) {
        return new ImmutableSortedMap<>(new h4(ImmutableList.of(k10), (Comparator) com.google.common.base.a0.E(comparator)), ImmutableList.of(v9));
    }

    private static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> w(Map.Entry<K, V>... entryArr) {
        return t(s3.B(), false, entryArr, entryArr.length);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return isEmpty() ? ImmutableSet.of() : new b();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k10) {
        return (K) f3.T(ceilingEntry(k10));
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> e() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(0);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k10) {
        return (K) f3.T(floorEntry(k10));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        int indexOf = this.f32826f.indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        return this.f32827g.get(indexOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z9) {
        return headMap((ImmutableSortedMap<K, V>) obj, z9);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k10) {
        return (K) f3.T(higherEntry(k10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean j() {
        return this.f32826f.e() || this.f32827g.e();
    }

    @Override // com.google.common.collect.ImmutableMap
    Object l() {
        return new d(this);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(size() - 1);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k10) {
        return (K) f3.T(lowerEntry(k10));
    }

    @Override // java.util.NavigableMap
    @CanIgnoreReturnValue
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @CanIgnoreReturnValue
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public int size() {
        return this.f32827g.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap subMap(Object obj, boolean z9, Object obj2, boolean z10) {
        return subMap((boolean) obj, z9, (boolean) obj2, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z9) {
        return tailMap((ImmutableSortedMap<K, V>) obj, z9);
    }

    ImmutableSortedMap(h4<K> h4Var, ImmutableList<V> immutableList, ImmutableSortedMap<K, V> immutableSortedMap) {
        this.f32826f = h4Var;
        this.f32827g = immutableList;
        this.f32828h = immutableSortedMap;
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj) {
        return v(s3.B(), comparable, obj);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> descendingKeySet() {
        return this.f32826f.descendingSet();
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> descendingMap() {
        ImmutableSortedMap<K, V> immutableSortedMap = this.f32828h;
        if (immutableSortedMap == null) {
            if (isEmpty()) {
                return q(s3.k(comparator()).G());
            }
            return new ImmutableSortedMap<>((h4) this.f32826f.descendingSet(), this.f32827g.reverse(), this);
        }
        return immutableSortedMap;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap((ImmutableSortedMap<K, V>) obj);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> navigableKeySet() {
        return this.f32826f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap((ImmutableSortedMap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, com.google.common.collect.u
    public ImmutableCollection<V> values() {
        return this.f32827g;
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return p(map, (Comparator) com.google.common.base.a0.E(comparator));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return w(ImmutableMap.h(comparable, obj), ImmutableMap.h(comparable2, obj2));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> headMap(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, false);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSortedSet<K> keySet() {
        return this.f32826f;
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> subMap(K k10, K k11) {
        return subMap((boolean) k10, true, (boolean) k11, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> tailMap(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, true);
    }

    @h3.a
    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, (s3) f32823i);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return w(ImmutableMap.h(comparable, obj), ImmutableMap.h(comparable2, obj2), ImmutableMap.h(comparable3, obj3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> headMap(K k10, boolean z9) {
        return u(0, this.f32826f.D(com.google.common.base.a0.E(k10), z9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
        com.google.common.base.a0.E(k10);
        com.google.common.base.a0.E(k11);
        com.google.common.base.a0.y(comparator().compare(k10, k11) <= 0, "expected fromKey <= toKey but %s > %s", k10, k11);
        return headMap((ImmutableSortedMap<K, V>) k11, z10).tailMap((ImmutableSortedMap<K, V>) k10, z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> tailMap(K k10, boolean z9) {
        return u(this.f32826f.E(com.google.common.base.a0.E(k10), z9), size());
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return w(ImmutableMap.h(comparable, obj), ImmutableMap.h(comparable2, obj2), ImmutableMap.h(comparable3, obj3), ImmutableMap.h(comparable4, obj4));
    }

    @h3.a
    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return s((Comparator) com.google.common.base.a0.E(comparator), false, iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return w(ImmutableMap.h(comparable, obj), ImmutableMap.h(comparable2, obj2), ImmutableMap.h(comparable3, obj3), ImmutableMap.h(comparable4, obj4), ImmutableMap.h(comparable5, obj5));
    }
}
