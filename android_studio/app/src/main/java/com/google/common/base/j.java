package com.google.common.base;

import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Enums.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class j {
    @h3.c

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> f32246a = new WeakHashMap();

    /* compiled from: Enums.java */
    /* loaded from: classes2.dex */
    private static final class a<T extends Enum<T>> extends h<String, T> implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32247d = 0;

        /* renamed from: c  reason: collision with root package name */
        private final Class<T> f32248c;

        a(Class<T> cls) {
            this.f32248c = (Class) a0.E(cls);
        }

        @Override // com.google.common.base.h, com.google.common.base.q
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof a) {
                return this.f32248c.equals(((a) obj).f32248c);
            }
            return false;
        }

        public int hashCode() {
            return this.f32248c.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(T t9) {
            return t9.name();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public T l(String str) {
            return (T) Enum.valueOf(this.f32248c, str);
        }

        public String toString() {
            return "Enums.stringConverter(" + this.f32248c.getName() + ".class)";
        }
    }

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> a(Class<T> cls) {
        Map<String, WeakReference<? extends Enum<?>>> map;
        Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> map2 = f32246a;
        synchronized (map2) {
            map = map2.get(cls);
            if (map == null) {
                map = d(cls);
            }
        }
        return map;
    }

    @h3.c
    public static Field b(Enum<?> r12) {
        try {
            return r12.getDeclaringClass().getDeclaredField(r12.name());
        } catch (NoSuchFieldException e4) {
            throw new AssertionError(e4);
        }
    }

    public static <T extends Enum<T>> Optional<T> c(Class<T> cls, String str) {
        a0.E(cls);
        a0.E(str);
        return z.d(cls, str);
    }

    @h3.c
    private static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> d(Class<T> cls) {
        HashMap hashMap = new HashMap();
        Iterator it = EnumSet.allOf(cls).iterator();
        while (it.hasNext()) {
            Enum r22 = (Enum) it.next();
            hashMap.put(r22.name(), new WeakReference(r22));
        }
        f32246a.put(cls, hashMap);
        return hashMap;
    }

    public static <T extends Enum<T>> h<String, T> e(Class<T> cls) {
        return new a(cls);
    }
}
