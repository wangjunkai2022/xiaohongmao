package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* compiled from: CachedHashCodeArrayMap.java */
/* loaded from: classes.dex */
public final class b<K, V> extends ArrayMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private int f9698a;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        this.f9698a = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public int hashCode() {
        if (this.f9698a == 0) {
            this.f9698a = super.hashCode();
        }
        return this.f9698a;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k10, V v9) {
        this.f9698a = 0;
        return (V) super.put(k10, v9);
    }

    @Override // androidx.collection.SimpleArrayMap
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f9698a = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i4) {
        this.f9698a = 0;
        return (V) super.removeAt(i4);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i4, V v9) {
        this.f9698a = 0;
        return (V) super.setValueAt(i4, v9);
    }
}
