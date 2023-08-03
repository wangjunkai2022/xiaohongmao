package com.google.common.collect;

import com.google.common.collect.f3;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedMap;

/* compiled from: ForwardingNavigableMap.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class t1<K, V> extends z1<K, V> implements NavigableMap<K, V> {

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: ForwardingNavigableMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    public class a extends f3.q<K, V> {

        /* compiled from: ForwardingNavigableMap.java */
        /* renamed from: com.google.common.collect.t1$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0236a implements Iterator<Map.Entry<K, V>> {

            /* renamed from: a  reason: collision with root package name */
            private Map.Entry<K, V> f33876a = null;

            /* renamed from: b  reason: collision with root package name */
            private Map.Entry<K, V> f33877b;

            C0236a() {
                this.f33877b = a.this.Y().lastEntry();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, V> next() {
                if (hasNext()) {
                    try {
                        Map.Entry<K, V> entry = this.f33877b;
                        this.f33876a = entry;
                        this.f33877b = a.this.Y().lowerEntry(this.f33877b.getKey());
                        return entry;
                    } catch (Throwable th) {
                        this.f33876a = this.f33877b;
                        this.f33877b = a.this.Y().lowerEntry(this.f33877b.getKey());
                        throw th;
                    }
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f33877b != null;
            }

            @Override // java.util.Iterator
            public void remove() {
                y.e(this.f33876a != null);
                a.this.Y().remove(this.f33876a.getKey());
                this.f33876a = null;
            }
        }

        public a() {
        }

        @Override // com.google.common.collect.f3.q
        protected Iterator<Map.Entry<K, V>> X() {
            return new C0236a();
        }

        @Override // com.google.common.collect.f3.q
        NavigableMap<K, V> Y() {
            return t1.this;
        }
    }

    /* compiled from: ForwardingNavigableMap.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class b extends f3.e0<K, V> {
        public b() {
            super(t1.this);
        }
    }

    protected t1() {
    }

    @Override // com.google.common.collect.z1
    protected SortedMap<K, V> X(K k10, K k11) {
        return subMap(k10, true, k11, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.z1
    /* renamed from: Z */
    public abstract NavigableMap<K, V> W();

    protected Map.Entry<K, V> a0(K k10) {
        return tailMap(k10, true).firstEntry();
    }

    protected K b0(K k10) {
        return (K) f3.T(ceilingEntry(k10));
    }

    @h3.a
    protected NavigableSet<K> c0() {
        return descendingMap().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k10) {
        return W().ceilingEntry(k10);
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k10) {
        return W().ceilingKey(k10);
    }

    protected Map.Entry<K, V> d0() {
        return (Map.Entry) w2.v(entrySet(), null);
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return W().descendingKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> descendingMap() {
        return W().descendingMap();
    }

    protected K e0() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    protected Map.Entry<K, V> f0(K k10) {
        return headMap(k10, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        return W().firstEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k10) {
        return W().floorEntry(k10);
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k10) {
        return W().floorKey(k10);
    }

    protected K g0(K k10) {
        return (K) f3.T(floorEntry(k10));
    }

    protected SortedMap<K, V> h0(K k10) {
        return headMap(k10, false);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> headMap(K k10, boolean z9) {
        return W().headMap(k10, z9);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k10) {
        return W().higherEntry(k10);
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k10) {
        return W().higherKey(k10);
    }

    protected Map.Entry<K, V> i0(K k10) {
        return tailMap(k10, false).firstEntry();
    }

    protected K j0(K k10) {
        return (K) f3.T(higherEntry(k10));
    }

    protected Map.Entry<K, V> k0() {
        return (Map.Entry) w2.v(descendingMap().entrySet(), null);
    }

    protected K l0() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        return W().lastEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k10) {
        return W().lowerEntry(k10);
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k10) {
        return W().lowerKey(k10);
    }

    protected Map.Entry<K, V> m0(K k10) {
        return headMap(k10, false).lastEntry();
    }

    protected K n0(K k10) {
        return (K) f3.T(lowerEntry(k10));
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> navigableKeySet() {
        return W().navigableKeySet();
    }

    protected Map.Entry<K, V> p0() {
        return (Map.Entry) x2.U(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollFirstEntry() {
        return W().pollFirstEntry();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> pollLastEntry() {
        return W().pollLastEntry();
    }

    protected Map.Entry<K, V> q0() {
        return (Map.Entry) x2.U(descendingMap().entrySet().iterator());
    }

    protected SortedMap<K, V> r0(K k10) {
        return tailMap(k10, true);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> subMap(K k10, boolean z9, K k11, boolean z10) {
        return W().subMap(k10, z9, k11, z10);
    }

    @Override // java.util.NavigableMap
    public NavigableMap<K, V> tailMap(K k10, boolean z9) {
        return W().tailMap(k10, z9);
    }
}
