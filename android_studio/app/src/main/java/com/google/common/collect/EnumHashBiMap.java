package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class EnumHashBiMap<K extends Enum<K>, V> extends a<K, V> {
    @h3.c

    /* renamed from: h  reason: collision with root package name */
    private static final long f32638h = 0;

    /* renamed from: g  reason: collision with root package name */
    private transient Class<K> f32639g;

    private EnumHashBiMap(Class<K> cls) {
        super(new EnumMap(cls), f3.a0(cls.getEnumConstants().length));
        this.f32639g = cls;
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    @h3.c
    private void l0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32639g = (Class) objectInputStream.readObject();
        h0(new EnumMap(this.f32639g), new HashMap((this.f32639g.getEnumConstants().length * 3) / 2));
        m4.b(this, objectInputStream);
    }

    @h3.c
    private void m0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f32639g);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a, com.google.common.collect.u
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object forcePut(Object obj, @NullableDecl Object obj2) {
        return forcePut((EnumHashBiMap<K, V>) ((Enum) obj), (Enum) obj2);
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
        return this.f32639g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object put(Object obj, @NullableDecl Object obj2) {
        return put((EnumHashBiMap<K, V>) ((Enum) obj), (Enum) obj2);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Object remove(@NullableDecl Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.p1, java.util.Map, com.google.common.collect.u
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> create = create(EnumBiMap.m0(map));
        create.putAll(map);
        return create;
    }

    @CanIgnoreReturnValue
    public V forcePut(K k10, @NullableDecl V v9) {
        return (V) super.forcePut((EnumHashBiMap<K, V>) k10, (K) v9);
    }

    @CanIgnoreReturnValue
    public V put(K k10, @NullableDecl V v9) {
        return (V) super.put((EnumHashBiMap<K, V>) k10, (K) v9);
    }
}
