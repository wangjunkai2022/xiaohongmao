package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends a<K, V> {
    @h3.c

    /* renamed from: i  reason: collision with root package name */
    private static final long f32635i = 0;

    /* renamed from: g  reason: collision with root package name */
    private transient Class<K> f32636g;

    /* renamed from: h  reason: collision with root package name */
    private transient Class<V> f32637h;

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.f32636g = cls;
        this.f32637h = cls2;
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K extends Enum<K>> Class<K> m0(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyType();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyType();
        }
        com.google.common.base.a0.d(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    private static <V extends Enum<V>> Class<V> n0(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).f32637h;
        }
        com.google.common.base.a0.d(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    @h3.c
    private void p0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32636g = (Class) objectInputStream.readObject();
        this.f32637h = (Class) objectInputStream.readObject();
        h0(new EnumMap(this.f32636g), new EnumMap(this.f32637h));
        m4.b(this, objectInputStream);
    }

    @h3.c
    private void q0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f32636g);
        objectOutputStream.writeObject(this.f32637h);
        m4.i(this, objectOutputStream);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.a, com.google.common.collect.u
    public /* bridge */ /* synthetic */ u inverse() {
        return super.inverse();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a
    /* renamed from: k0 */
    public K a0(K k10) {
        return (K) com.google.common.base.a0.E(k10);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.f32636g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.a
    /* renamed from: l0 */
    public V b0(V v9) {
        return (V) com.google.common.base.a0.E(v9);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    public Class<V> valueType() {
        return this.f32637h;
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> create = create(m0(map), n0(map));
        create.putAll(map);
        return create;
    }
}
