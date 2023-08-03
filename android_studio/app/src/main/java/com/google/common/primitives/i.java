package com.google.common.primitives;

import com.google.common.base.a0;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: Primitives.java */
@h3.c
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f34864a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f34865b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f34864a = Collections.unmodifiableMap(linkedHashMap);
        f34865b = Collections.unmodifiableMap(linkedHashMap2);
    }

    private i() {
    }

    private static void a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static Set<Class<?>> b() {
        return f34864a.keySet();
    }

    public static Set<Class<?>> c() {
        return f34865b.keySet();
    }

    public static boolean d(Class<?> cls) {
        return f34865b.containsKey(a0.E(cls));
    }

    public static <T> Class<T> e(Class<T> cls) {
        a0.E(cls);
        Class<T> cls2 = (Class<T>) f34865b.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static <T> Class<T> f(Class<T> cls) {
        a0.E(cls);
        Class<T> cls2 = (Class<T>) f34864a.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
