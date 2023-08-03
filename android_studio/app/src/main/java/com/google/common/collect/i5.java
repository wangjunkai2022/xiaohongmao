package com.google.common.collect;

import com.google.common.collect.f3;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: TreeRangeMap.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class i5<K extends Comparable, V> implements x3<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final x3 f33585b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final NavigableMap<k0<K>, c<K, V>> f33586a = f3.f0();

    /* compiled from: TreeRangeMap.java */
    /* loaded from: classes2.dex */
    static class a implements x3 {
        a() {
        }

        @Override // com.google.common.collect.x3
        public Map<Range, Object> asDescendingMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.x3
        public Map<Range, Object> asMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.x3
        public void clear() {
        }

        @Override // com.google.common.collect.x3
        @NullableDecl
        public Object get(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.x3
        @NullableDecl
        public Map.Entry<Range, Object> getEntry(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.x3
        public void put(Range range, Object obj) {
            com.google.common.base.a0.E(range);
            throw new IllegalArgumentException("Cannot insert range " + range + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.x3
        public void putAll(x3 x3Var) {
            if (!x3Var.asMapOfRanges().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override // com.google.common.collect.x3
        public void putCoalescing(Range range, Object obj) {
            com.google.common.base.a0.E(range);
            throw new IllegalArgumentException("Cannot insert range " + range + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.x3
        public void remove(Range range) {
            com.google.common.base.a0.E(range);
        }

        @Override // com.google.common.collect.x3
        public Range span() {
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.x3
        public x3 subRangeMap(Range range) {
            com.google.common.base.a0.E(range);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeRangeMap.java */
    /* loaded from: classes2.dex */
    public final class b extends f3.a0<Range<K>, V> {

        /* renamed from: a  reason: collision with root package name */
        final Iterable<Map.Entry<Range<K>, V>> f33587a;

        b(Iterable<c<K, V>> iterable) {
            this.f33587a = iterable;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f3.a0
        public Iterator<Map.Entry<Range<K>, V>> a() {
            return this.f33587a.iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            if (obj instanceof Range) {
                Range range = (Range) obj;
                c cVar = (c) i5.this.f33586a.get(range.f32934a);
                if (cVar == null || !cVar.getKey().equals(range)) {
                    return null;
                }
                return (V) cVar.getValue();
            }
            return null;
        }

        @Override // com.google.common.collect.f3.a0, java.util.AbstractMap, java.util.Map
        public int size() {
            return i5.this.f33586a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeRangeMap.java */
    /* loaded from: classes2.dex */
    public static final class c<K extends Comparable, V> extends g<Range<K>, V> {

        /* renamed from: a  reason: collision with root package name */
        private final Range<K> f33589a;

        /* renamed from: b  reason: collision with root package name */
        private final V f33590b;

        c(k0<K> k0Var, k0<K> k0Var2, V v9) {
            this(Range.c(k0Var, k0Var2), v9);
        }

        public boolean e(K k10) {
            return this.f33589a.contains(k10);
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        public V getValue() {
            return this.f33590b;
        }

        @Override // com.google.common.collect.g, java.util.Map.Entry
        /* renamed from: h */
        public Range<K> getKey() {
            return this.f33589a;
        }

        k0<K> i() {
            return this.f33589a.f32934a;
        }

        k0<K> j() {
            return this.f33589a.f32935b;
        }

        c(Range<K> range, V v9) {
            this.f33589a = range;
            this.f33590b = v9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TreeRangeMap.java */
    /* loaded from: classes2.dex */
    public class d implements x3<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final Range<K> f33591a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TreeRangeMap.java */
        /* loaded from: classes2.dex */
        public class a extends i5<K, V>.d.b {

            /* compiled from: TreeRangeMap.java */
            /* renamed from: com.google.common.collect.i5$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0225a extends com.google.common.collect.c<Map.Entry<Range<K>, V>> {

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Iterator f33594c;

                C0225a(Iterator it) {
                    this.f33594c = it;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.c
                /* renamed from: d */
                public Map.Entry<Range<K>, V> a() {
                    if (this.f33594c.hasNext()) {
                        c cVar = (c) this.f33594c.next();
                        if (cVar.j().compareTo((k0<K>) d.this.f33591a.f32934a) <= 0) {
                            return (Map.Entry) b();
                        }
                        return f3.O(cVar.getKey().intersection(d.this.f33591a), cVar.getValue());
                    }
                    return (Map.Entry) b();
                }
            }

            a() {
                super();
            }

            @Override // com.google.common.collect.i5.d.b
            Iterator<Map.Entry<Range<K>, V>> b() {
                if (d.this.f33591a.isEmpty()) {
                    return x2.u();
                }
                return new C0225a(i5.this.f33586a.headMap(d.this.f33591a.f32935b, false).descendingMap().values().iterator());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TreeRangeMap.java */
        /* loaded from: classes2.dex */
        public class b extends AbstractMap<Range<K>, V> {

            /* compiled from: TreeRangeMap.java */
            /* loaded from: classes2.dex */
            class a extends f3.b0<Range<K>, V> {
                a(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.f3.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean remove(@NullableDecl Object obj) {
                    return b.this.remove(obj) != null;
                }

                @Override // com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.this.c(com.google.common.base.c0.h(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)), f3.R()));
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TreeRangeMap.java */
            /* renamed from: com.google.common.collect.i5$d$b$b  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0226b extends f3.s<Range<K>, V> {
                C0226b() {
                }

                @Override // com.google.common.collect.f3.s
                Map<Range<K>, V> e() {
                    return b.this;
                }

                @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean isEmpty() {
                    return !iterator().hasNext();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Map.Entry<Range<K>, V>> iterator() {
                    return b.this.b();
                }

                @Override // com.google.common.collect.f3.s, com.google.common.collect.o4.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.this.c(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)));
                }

                @Override // com.google.common.collect.f3.s, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return x2.Z(iterator());
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TreeRangeMap.java */
            /* loaded from: classes2.dex */
            public class c extends com.google.common.collect.c<Map.Entry<Range<K>, V>> {

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Iterator f33599c;

                c(Iterator it) {
                    this.f33599c = it;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.c
                /* renamed from: d */
                public Map.Entry<Range<K>, V> a() {
                    while (this.f33599c.hasNext()) {
                        c cVar = (c) this.f33599c.next();
                        if (cVar.i().compareTo((k0<K>) d.this.f33591a.f32935b) >= 0) {
                            return (Map.Entry) b();
                        }
                        if (cVar.j().compareTo((k0<K>) d.this.f33591a.f32934a) > 0) {
                            return f3.O(cVar.getKey().intersection(d.this.f33591a), cVar.getValue());
                        }
                    }
                    return (Map.Entry) b();
                }
            }

            /* compiled from: TreeRangeMap.java */
            /* renamed from: com.google.common.collect.i5$d$b$d  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0227d extends f3.q0<Range<K>, V> {
                C0227d(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
                public boolean removeAll(Collection<?> collection) {
                    return b.this.c(com.google.common.base.c0.h(com.google.common.base.c0.n(collection), f3.N0()));
                }

                @Override // com.google.common.collect.f3.q0, java.util.AbstractCollection, java.util.Collection
                public boolean retainAll(Collection<?> collection) {
                    return b.this.c(com.google.common.base.c0.h(com.google.common.base.c0.q(com.google.common.base.c0.n(collection)), f3.N0()));
                }
            }

            b() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(com.google.common.base.b0<? super Map.Entry<Range<K>, V>> b0Var) {
                ArrayList<Range<K>> q9 = b3.q();
                for (Map.Entry<Range<K>, V> entry : entrySet()) {
                    if (b0Var.apply(entry)) {
                        q9.add(entry.getKey());
                    }
                }
                for (Range<K> range : q9) {
                    i5.this.remove(range);
                }
                return !q9.isEmpty();
            }

            Iterator<Map.Entry<Range<K>, V>> b() {
                if (d.this.f33591a.isEmpty()) {
                    return x2.u();
                }
                return new c(i5.this.f33586a.tailMap((k0) com.google.common.base.v.a(i5.this.f33586a.floorKey(d.this.f33591a.f32934a), d.this.f33591a.f32934a), true).values().iterator());
            }

            @Override // java.util.AbstractMap, java.util.Map
            public void clear() {
                d.this.clear();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                return get(obj) != null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Map.Entry<Range<K>, V>> entrySet() {
                return new C0226b();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V get(Object obj) {
                c cVar;
                try {
                    if (obj instanceof Range) {
                        Range range = (Range) obj;
                        if (d.this.f33591a.encloses(range) && !range.isEmpty()) {
                            if (range.f32934a.compareTo(d.this.f33591a.f32934a) == 0) {
                                Map.Entry floorEntry = i5.this.f33586a.floorEntry(range.f32934a);
                                cVar = floorEntry != null ? (c) floorEntry.getValue() : null;
                            } else {
                                cVar = (c) i5.this.f33586a.get(range.f32934a);
                            }
                            if (cVar != null && cVar.getKey().isConnected(d.this.f33591a) && cVar.getKey().intersection(d.this.f33591a).equals(range)) {
                                return (V) cVar.getValue();
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Range<K>> keySet() {
                return new a(this);
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V remove(Object obj) {
                V v9 = (V) get(obj);
                if (v9 != null) {
                    i5.this.remove((Range) obj);
                    return v9;
                }
                return null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Collection<V> values() {
                return new C0227d(this);
            }
        }

        d(Range<K> range) {
            this.f33591a = range;
        }

        @Override // com.google.common.collect.x3
        public Map<Range<K>, V> asDescendingMapOfRanges() {
            return new a();
        }

        @Override // com.google.common.collect.x3
        public Map<Range<K>, V> asMapOfRanges() {
            return new b();
        }

        @Override // com.google.common.collect.x3
        public void clear() {
            i5.this.remove(this.f33591a);
        }

        @Override // com.google.common.collect.x3
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof x3) {
                return asMapOfRanges().equals(((x3) obj).asMapOfRanges());
            }
            return false;
        }

        @Override // com.google.common.collect.x3
        @NullableDecl
        public V get(K k10) {
            if (this.f33591a.contains(k10)) {
                return (V) i5.this.get(k10);
            }
            return null;
        }

        @Override // com.google.common.collect.x3
        @NullableDecl
        public Map.Entry<Range<K>, V> getEntry(K k10) {
            Map.Entry<Range<K>, V> entry;
            if (!this.f33591a.contains(k10) || (entry = i5.this.getEntry(k10)) == null) {
                return null;
            }
            return f3.O(entry.getKey().intersection(this.f33591a), entry.getValue());
        }

        @Override // com.google.common.collect.x3
        public int hashCode() {
            return asMapOfRanges().hashCode();
        }

        @Override // com.google.common.collect.x3
        public void put(Range<K> range, V v9) {
            com.google.common.base.a0.y(this.f33591a.encloses(range), "Cannot put range %s into a subRangeMap(%s)", range, this.f33591a);
            i5.this.put(range, v9);
        }

        @Override // com.google.common.collect.x3
        public void putAll(x3<K, V> x3Var) {
            if (x3Var.asMapOfRanges().isEmpty()) {
                return;
            }
            Range<K> span = x3Var.span();
            com.google.common.base.a0.y(this.f33591a.encloses(span), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", span, this.f33591a);
            i5.this.putAll(x3Var);
        }

        @Override // com.google.common.collect.x3
        public void putCoalescing(Range<K> range, V v9) {
            if (!i5.this.f33586a.isEmpty() && !range.isEmpty() && this.f33591a.encloses(range)) {
                put(i5.this.e(range, com.google.common.base.a0.E(v9)).intersection(this.f33591a), v9);
            } else {
                put(range, v9);
            }
        }

        @Override // com.google.common.collect.x3
        public void remove(Range<K> range) {
            if (range.isConnected(this.f33591a)) {
                i5.this.remove(range.intersection(this.f33591a));
            }
        }

        @Override // com.google.common.collect.x3
        public Range<K> span() {
            k0<K> k0Var;
            k0<K> j4;
            Map.Entry floorEntry = i5.this.f33586a.floorEntry(this.f33591a.f32934a);
            if (floorEntry != null && ((c) floorEntry.getValue()).j().compareTo(this.f33591a.f32934a) > 0) {
                k0Var = this.f33591a.f32934a;
            } else {
                k0Var = (k0) i5.this.f33586a.ceilingKey(this.f33591a.f32934a);
                if (k0Var == null || k0Var.compareTo(this.f33591a.f32935b) >= 0) {
                    throw new NoSuchElementException();
                }
            }
            Map.Entry lowerEntry = i5.this.f33586a.lowerEntry(this.f33591a.f32935b);
            if (lowerEntry != null) {
                if (((c) lowerEntry.getValue()).j().compareTo(this.f33591a.f32935b) >= 0) {
                    j4 = this.f33591a.f32935b;
                } else {
                    j4 = ((c) lowerEntry.getValue()).j();
                }
                return Range.c(k0Var, j4);
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.x3
        public x3<K, V> subRangeMap(Range<K> range) {
            if (!range.isConnected(this.f33591a)) {
                return i5.this.g();
            }
            return i5.this.subRangeMap(range.intersection(this.f33591a));
        }

        @Override // com.google.common.collect.x3
        public String toString() {
            return asMapOfRanges().toString();
        }
    }

    private i5() {
    }

    private static <K extends Comparable, V> Range<K> d(Range<K> range, V v9, @NullableDecl Map.Entry<k0<K>, c<K, V>> entry) {
        return (entry != null && entry.getValue().getKey().isConnected(range) && entry.getValue().getValue().equals(v9)) ? range.span(entry.getValue().getKey()) : range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Range<K> e(Range<K> range, V v9) {
        return d(d(range, v9, this.f33586a.lowerEntry(range.f32934a)), v9, this.f33586a.floorEntry(range.f32935b));
    }

    public static <K extends Comparable, V> i5<K, V> f() {
        return new i5<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public x3<K, V> g() {
        return f33585b;
    }

    private void h(k0<K> k0Var, k0<K> k0Var2, V v9) {
        this.f33586a.put(k0Var, new c(k0Var, k0Var2, v9));
    }

    @Override // com.google.common.collect.x3
    public Map<Range<K>, V> asDescendingMapOfRanges() {
        return new b(this.f33586a.descendingMap().values());
    }

    @Override // com.google.common.collect.x3
    public Map<Range<K>, V> asMapOfRanges() {
        return new b(this.f33586a.values());
    }

    @Override // com.google.common.collect.x3
    public void clear() {
        this.f33586a.clear();
    }

    @Override // com.google.common.collect.x3
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof x3) {
            return asMapOfRanges().equals(((x3) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.x3
    @NullableDecl
    public V get(K k10) {
        Map.Entry<Range<K>, V> entry = getEntry(k10);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // com.google.common.collect.x3
    @NullableDecl
    public Map.Entry<Range<K>, V> getEntry(K k10) {
        Map.Entry<k0<K>, c<K, V>> floorEntry = this.f33586a.floorEntry(k0.d(k10));
        if (floorEntry == null || !floorEntry.getValue().e(k10)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.google.common.collect.x3
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.x3
    public void put(Range<K> range, V v9) {
        if (range.isEmpty()) {
            return;
        }
        com.google.common.base.a0.E(v9);
        remove(range);
        this.f33586a.put(range.f32934a, new c(range, v9));
    }

    @Override // com.google.common.collect.x3
    public void putAll(x3<K, V> x3Var) {
        for (Map.Entry<Range<K>, V> entry : x3Var.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.x3
    public void putCoalescing(Range<K> range, V v9) {
        if (this.f33586a.isEmpty()) {
            put(range, v9);
        } else {
            put(e(range, com.google.common.base.a0.E(v9)), v9);
        }
    }

    @Override // com.google.common.collect.x3
    public void remove(Range<K> range) {
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<k0<K>, c<K, V>> lowerEntry = this.f33586a.lowerEntry(range.f32934a);
        if (lowerEntry != null) {
            c<K, V> value = lowerEntry.getValue();
            if (value.j().compareTo(range.f32934a) > 0) {
                if (value.j().compareTo(range.f32935b) > 0) {
                    h(range.f32935b, value.j(), lowerEntry.getValue().getValue());
                }
                h(value.i(), range.f32934a, lowerEntry.getValue().getValue());
            }
        }
        Map.Entry<k0<K>, c<K, V>> lowerEntry2 = this.f33586a.lowerEntry(range.f32935b);
        if (lowerEntry2 != null) {
            c<K, V> value2 = lowerEntry2.getValue();
            if (value2.j().compareTo(range.f32935b) > 0) {
                h(range.f32935b, value2.j(), lowerEntry2.getValue().getValue());
            }
        }
        this.f33586a.subMap(range.f32934a, range.f32935b).clear();
    }

    @Override // com.google.common.collect.x3
    public Range<K> span() {
        Map.Entry<k0<K>, c<K, V>> firstEntry = this.f33586a.firstEntry();
        Map.Entry<k0<K>, c<K, V>> lastEntry = this.f33586a.lastEntry();
        if (firstEntry != null) {
            return Range.c(firstEntry.getValue().getKey().f32934a, lastEntry.getValue().getKey().f32935b);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.x3
    public x3<K, V> subRangeMap(Range<K> range) {
        return range.equals(Range.all()) ? this : new d(range);
    }

    @Override // com.google.common.collect.x3
    public String toString() {
        return this.f33586a.values().toString();
    }
}
