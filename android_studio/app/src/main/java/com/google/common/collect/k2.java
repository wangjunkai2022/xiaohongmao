package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableEnumMap.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class k2<K extends Enum<K>, V> extends ImmutableMap.c<K, V> {

    /* renamed from: f  reason: collision with root package name */
    private final transient EnumMap<K, V> f33669f;

    /* compiled from: ImmutableEnumMap.java */
    /* loaded from: classes2.dex */
    private static class b<K extends Enum<K>, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33670b = 0;

        /* renamed from: a  reason: collision with root package name */
        final EnumMap<K, V> f33671a;

        b(EnumMap<K, V> enumMap) {
            this.f33671a = enumMap;
        }

        Object a() {
            return new k2(this.f33671a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K extends Enum<K>, V> ImmutableMap<K, V> n(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size != 0) {
            if (size != 1) {
                return new k2(enumMap);
            }
            Map.Entry entry = (Map.Entry) w2.z(enumMap.entrySet());
            return ImmutableMap.of(entry.getKey(), entry.getValue());
        }
        return ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f33669f.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k2) {
            obj = ((k2) obj).f33669f;
        }
        return this.f33669f.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.f33669f.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean j() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public k5<K> k() {
        return x2.f0(this.f33669f.keySet().iterator());
    }

    @Override // com.google.common.collect.ImmutableMap
    Object l() {
        return new b(this.f33669f);
    }

    @Override // com.google.common.collect.ImmutableMap.c
    k5<Map.Entry<K, V>> m() {
        return f3.I0(this.f33669f.entrySet().iterator());
    }

    @Override // java.util.Map
    public int size() {
        return this.f33669f.size();
    }

    private k2(EnumMap<K, V> enumMap) {
        this.f33669f = enumMap;
        com.google.common.base.a0.d(!enumMap.isEmpty());
    }
}
