package me.jessyan.retrofiturlmanager.cache;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class LruCache<K, V> implements Cache<K, V> {
    private final LinkedHashMap<K, V> cache = new LinkedHashMap<>(100, 0.75f, true);
    private int currentSize = 0;
    private final int initialMaxSize;
    private int maxSize;

    public LruCache(int i4) {
        this.initialMaxSize = i4;
        this.maxSize = i4;
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public void clear() {
        trimToSize(0);
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized boolean containsKey(K k10) {
        return this.cache.containsKey(k10);
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized V get(K k10) {
        return this.cache.get(k10);
    }

    protected int getItemSize(V v9) {
        return 1;
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized int getMaxSize() {
        return this.maxSize;
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized Set<K> keySet() {
        return this.cache.keySet();
    }

    protected void onItemEvicted(K k10, V v9) {
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized V put(K k10, V v9) {
        if (getItemSize(v9) >= this.maxSize) {
            onItemEvicted(k10, v9);
            return null;
        }
        V put = this.cache.put(k10, v9);
        if (v9 != null) {
            this.currentSize += getItemSize(v9);
        }
        if (put != null) {
            this.currentSize -= getItemSize(put);
        }
        evict();
        return put;
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized V remove(K k10) {
        V remove;
        remove = this.cache.remove(k10);
        if (remove != null) {
            this.currentSize -= getItemSize(remove);
        }
        return remove;
    }

    public synchronized void setSizeMultiplier(float f10) {
        if (f10 >= 0.0f) {
            this.maxSize = Math.round(this.initialMaxSize * f10);
            evict();
        } else {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
    }

    @Override // me.jessyan.retrofiturlmanager.cache.Cache
    public synchronized int size() {
        return this.currentSize;
    }

    protected synchronized void trimToSize(int i4) {
        while (this.currentSize > i4) {
            Map.Entry<K, V> next = this.cache.entrySet().iterator().next();
            V value = next.getValue();
            this.currentSize -= getItemSize(value);
            K key = next.getKey();
            this.cache.remove(key);
            onItemEvicted(key, value);
        }
    }
}
