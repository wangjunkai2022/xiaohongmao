package com.clj.fastble.utils;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BleLruHashMap<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f9892a;

    public BleLruHashMap(int i4) {
        super(((int) Math.ceil(i4 / 0.75d)) + 1, 0.75f, true);
        this.f9892a = i4;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        if (size() > this.f9892a && (entry.getValue() instanceof com.clj.fastble.bluetooth.a)) {
            ((com.clj.fastble.bluetooth.a) entry.getValue()).G();
        }
        return size() > this.f9892a;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<K, V> entry : entrySet()) {
            sb.append(String.format("%s:%s ", entry.getKey(), entry.getValue()));
        }
        return sb.toString();
    }
}
