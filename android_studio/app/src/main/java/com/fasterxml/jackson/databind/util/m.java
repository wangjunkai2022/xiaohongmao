package com.fasterxml.jackson.databind.util;

/* compiled from: LookupCache.java */
/* loaded from: classes2.dex */
public interface m<K, V> {
    void clear();

    V get(Object obj);

    V put(K k10, V v9);

    V putIfAbsent(K k10, V v9);

    int size();
}
