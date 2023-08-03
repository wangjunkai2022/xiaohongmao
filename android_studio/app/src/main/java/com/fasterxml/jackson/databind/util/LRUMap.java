package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class LRUMap<K, V> implements m<K, V>, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15959d = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final transient int f15960a;

    /* renamed from: b  reason: collision with root package name */
    protected final transient ConcurrentHashMap<K, V> f15961b;

    /* renamed from: c  reason: collision with root package name */
    protected transient int f15962c;

    public LRUMap(int i4, int i10) {
        this.f15961b = new ConcurrentHashMap<>(i4, 0.8f, 4);
        this.f15960a = i10;
    }

    private void a(ObjectInputStream objectInputStream) throws IOException {
        this.f15962c = objectInputStream.readInt();
    }

    private void c(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f15962c);
    }

    protected Object b() {
        int i4 = this.f15962c;
        return new LRUMap(i4, i4);
    }

    @Override // com.fasterxml.jackson.databind.util.m
    public void clear() {
        this.f15961b.clear();
    }

    @Override // com.fasterxml.jackson.databind.util.m
    public V get(Object obj) {
        return this.f15961b.get(obj);
    }

    @Override // com.fasterxml.jackson.databind.util.m
    public V put(K k10, V v9) {
        if (this.f15961b.size() >= this.f15960a) {
            synchronized (this) {
                if (this.f15961b.size() >= this.f15960a) {
                    clear();
                }
            }
        }
        return this.f15961b.put(k10, v9);
    }

    @Override // com.fasterxml.jackson.databind.util.m
    public V putIfAbsent(K k10, V v9) {
        if (this.f15961b.size() >= this.f15960a) {
            synchronized (this) {
                if (this.f15961b.size() >= this.f15960a) {
                    clear();
                }
            }
        }
        return this.f15961b.putIfAbsent(k10, v9);
    }

    @Override // com.fasterxml.jackson.databind.util.m
    public int size() {
        return this.f15961b.size();
    }
}
