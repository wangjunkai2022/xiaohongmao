package com.googlecode.mp4parser.util;

import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* compiled from: RangeStartMap.java */
/* loaded from: classes2.dex */
public class n<K extends Comparable, V> implements Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    TreeMap<K, V> f37005a = new TreeMap<>(new a());

    /* compiled from: RangeStartMap.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<K> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(K k10, K k11) {
            return -k10.compareTo(k11);
        }
    }

    public n() {
    }

    @Override // java.util.Map
    /* renamed from: a */
    public V put(K k10, V v9) {
        return this.f37005a.put(k10, v9);
    }

    @Override // java.util.Map
    public void clear() {
        this.f37005a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f37005a.get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return this.f37005a.entrySet();
    }

    @Override // java.util.Map
    public V get(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it = this.f37005a.keySet().iterator();
        K next = it.next();
        while (true) {
            K k10 = next;
            if (it.hasNext()) {
                if (comparable.compareTo(k10) < 0) {
                    next = it.next();
                } else {
                    return this.f37005a.get(k10);
                }
            } else {
                return this.f37005a.get(k10);
            }
        }
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f37005a.isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return this.f37005a.keySet();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        this.f37005a.putAll(map);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Comparable comparable = (Comparable) obj;
        if (isEmpty()) {
            return null;
        }
        Iterator<K> it = this.f37005a.keySet().iterator();
        K next = it.next();
        while (true) {
            K k10 = next;
            if (it.hasNext()) {
                if (comparable.compareTo(k10) < 0) {
                    next = it.next();
                } else {
                    return this.f37005a.remove(k10);
                }
            } else {
                return this.f37005a.remove(k10);
            }
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.f37005a.size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return this.f37005a.values();
    }

    public n(K k10, V v9) {
        put(k10, v9);
    }
}
