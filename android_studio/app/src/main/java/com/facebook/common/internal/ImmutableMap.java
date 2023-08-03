package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class ImmutableMap<K, V> extends HashMap<K, V> {
    private ImmutableMap(Map<? extends K, ? extends V> map) {
        super(map);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return new ImmutableMap<>(map);
    }

    public static <K, V> Map<K, V> of() {
        return Collections.unmodifiableMap(new HashMap());
    }

    public static <K, V> Map<K, V> of(K k12, V v12) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(k12, v12);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k12, V v12, K k22, V v22) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(k12, v12);
        hashMap.put(k22, v22);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k12, V v12, K k22, V v22, K k32, V v32) {
        HashMap hashMap = new HashMap(3);
        hashMap.put(k12, v12);
        hashMap.put(k22, v22);
        hashMap.put(k32, v32);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k12, V v12, K k22, V v22, K k32, V v32, K k42, V v42) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(k12, v12);
        hashMap.put(k22, v22);
        hashMap.put(k32, v32);
        hashMap.put(k42, v42);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k12, V v12, K k22, V v22, K k32, V v32, K k42, V v42, K k52, V v52) {
        HashMap hashMap = new HashMap(5);
        hashMap.put(k12, v12);
        hashMap.put(k22, v22);
        hashMap.put(k32, v32);
        hashMap.put(k42, v42);
        hashMap.put(k52, v52);
        return Collections.unmodifiableMap(hashMap);
    }

    public static <K, V> Map<K, V> of(K k12, V v12, K k22, V v22, K k32, V v32, K k42, V v42, K k52, V v52, K k62, V v62) {
        HashMap hashMap = new HashMap(6);
        hashMap.put(k12, v12);
        hashMap.put(k22, v22);
        hashMap.put(k32, v32);
        hashMap.put(k42, v42);
        hashMap.put(k52, v52);
        hashMap.put(k62, v62);
        return Collections.unmodifiableMap(hashMap);
    }
}
