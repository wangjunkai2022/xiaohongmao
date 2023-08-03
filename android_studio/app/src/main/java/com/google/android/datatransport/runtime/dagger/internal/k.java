package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Collections;
import java.util.Map;

/* compiled from: MapBuilder.java */
/* loaded from: classes2.dex */
public final class k<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f20422a;

    private k(int i4) {
        this.f20422a = d.d(i4);
    }

    public static <K, V> k<K, V> b(int i4) {
        return new k<>(i4);
    }

    public Map<K, V> a() {
        if (this.f20422a.size() != 0) {
            return Collections.unmodifiableMap(this.f20422a);
        }
        return Collections.emptyMap();
    }

    public k<K, V> c(K k10, V v9) {
        this.f20422a.put(k10, v9);
        return this;
    }

    public k<K, V> d(Map<K, V> map) {
        this.f20422a.putAll(map);
        return this;
    }
}
