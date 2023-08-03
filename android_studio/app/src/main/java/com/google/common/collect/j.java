package com.google.common.collect;

import com.google.common.collect.f3;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractNavigableMap.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class j<K, V> extends f3.a0<K, V> implements NavigableMap<K, V> {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractNavigableMap.java */
    /* loaded from: classes2.dex */
    public final class b extends f3.q<K, V> {
        private b() {
        }

        @Override // com.google.common.collect.f3.q
        Iterator<Map.Entry<K, V>> X() {
            return j.this.b();
        }

        @Override // com.google.common.collect.f3.q
        NavigableMap<K, V> Y() {
            return j.this;
        }
    }

    abstract Iterator<Map.Entry<K, V>> b();

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> ceilingEntry(K k10) {
        return tailMap(k10, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k10) {
        return (K) f3.T(ceilingEntry(k10));
    }

    @Override // java.util.NavigableMap
    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    public NavigableMap<K, V> descendingMap() {
        return new b();
    }

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> firstEntry() {
        return (Map.Entry) x2.J(a(), null);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        Map.Entry<K, V> firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> floorEntry(K k10) {
        return headMap(k10, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k10) {
        return (K) f3.T(floorEntry(k10));
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap<K, V> headMap(K k10) {
        return headMap(k10, false);
    }

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> higherEntry(K k10) {
        return tailMap(k10, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k10) {
        return (K) f3.T(higherEntry(k10));
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set<K> keySet() {
        return navigableKeySet();
    }

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> lastEntry() {
        return (Map.Entry) x2.J(b(), null);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        Map.Entry<K, V> lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    @NullableDecl
    public Map.Entry<K, V> lowerEntry(K k10) {
        return headMap(k10, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k10) {
        return (K) f3.T(lowerEntry(k10));
    }

    public NavigableSet<K> navigableKeySet() {
        return new f3.e0(this);
    }

    @NullableDecl
    public Map.Entry<K, V> pollFirstEntry() {
        return (Map.Entry) x2.U(a());
    }

    @NullableDecl
    public Map.Entry<K, V> pollLastEntry() {
        return (Map.Entry) x2.U(b());
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
