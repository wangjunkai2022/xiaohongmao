package me.jessyan.retrofiturlmanager.cache;

import java.util.Set;

/* loaded from: classes4.dex */
public interface Cache<K, V> {
    void clear();

    boolean containsKey(K k10);

    V get(K k10);

    int getMaxSize();

    Set<K> keySet();

    V put(K k10, V v9);

    V remove(K k10);

    int size();
}
