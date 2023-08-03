package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: JavaUtilCollectionsDeserializers.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f14797a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final int f14798b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final int f14799c = 3;

    /* renamed from: d  reason: collision with root package name */
    private static final int f14800d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final int f14801e = 5;

    /* renamed from: f  reason: collision with root package name */
    private static final int f14802f = 6;

    /* renamed from: g  reason: collision with root package name */
    private static final int f14803g = 7;

    /* renamed from: h  reason: collision with root package name */
    private static final int f14804h = 8;

    /* renamed from: i  reason: collision with root package name */
    private static final int f14805i = 9;

    /* renamed from: j  reason: collision with root package name */
    private static final int f14806j = 10;

    /* renamed from: k  reason: collision with root package name */
    public static final int f14807k = 11;

    /* renamed from: l  reason: collision with root package name */
    private static final String f14808l = "java.util.Collections$";

    /* renamed from: m  reason: collision with root package name */
    private static final String f14809m = "java.util.Arrays$";

    /* renamed from: n  reason: collision with root package name */
    private static final String f14810n = "java.util.ImmutableCollections$";

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JavaUtilCollectionsDeserializers.java */
    /* loaded from: classes.dex */
    public static class a implements com.fasterxml.jackson.databind.util.h<Object, Object> {

        /* renamed from: a  reason: collision with root package name */
        private final JavaType f14811a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14812b;

        a(int i4, JavaType javaType) {
            this.f14811a = javaType;
            this.f14812b = i4;
        }

        private void c(int i4) {
            if (i4 == 1) {
                return;
            }
            throw new IllegalArgumentException("Can not deserialize Singleton container from " + i4 + " entries");
        }

        @Override // com.fasterxml.jackson.databind.util.h
        public JavaType a(TypeFactory typeFactory) {
            return this.f14811a;
        }

        @Override // com.fasterxml.jackson.databind.util.h
        public JavaType b(TypeFactory typeFactory) {
            return this.f14811a;
        }

        @Override // com.fasterxml.jackson.databind.util.h
        public Object convert(Object obj) {
            if (obj == null) {
                return null;
            }
            switch (this.f14812b) {
                case 1:
                    Set set = (Set) obj;
                    c(set.size());
                    return Collections.singleton(set.iterator().next());
                case 2:
                    List list = (List) obj;
                    c(list.size());
                    return Collections.singletonList(list.get(0));
                case 3:
                    Map map = (Map) obj;
                    c(map.size());
                    Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
                    return Collections.singletonMap(entry.getKey(), entry.getValue());
                case 4:
                    return Collections.unmodifiableSet((Set) obj);
                case 5:
                    return Collections.unmodifiableList((List) obj);
                case 6:
                    return Collections.unmodifiableMap((Map) obj);
                case 7:
                    return Collections.synchronizedSet((Set) obj);
                case 8:
                    return Collections.synchronizedCollection((Collection) obj);
                case 9:
                    return Collections.synchronizedList((List) obj);
                case 10:
                    return Collections.synchronizedMap((Map) obj);
                default:
                    return obj;
            }
        }
    }

    private static String a(String str) {
        if (str.startsWith("Singleton")) {
            return str.substring(9);
        }
        return null;
    }

    private static String b(String str) {
        if (str.startsWith("Synchronized")) {
            return str.substring(12);
        }
        return null;
    }

    private static String c(String str) {
        if (str.startsWith("Unmodifiable")) {
            return str.substring(12);
        }
        return null;
    }

    private static String d(String str) {
        if (str.startsWith(f14809m)) {
            return str.substring(17);
        }
        return null;
    }

    private static String e(String str) {
        if (str.startsWith(f14810n)) {
            return str.substring(31);
        }
        return null;
    }

    private static String f(String str) {
        if (str.startsWith(f14808l)) {
            return str.substring(22);
        }
        return null;
    }

    static a g(int i4, JavaType javaType, Class<?> cls) {
        return new a(i4, javaType.findSuperType(cls));
    }

    public static com.fasterxml.jackson.databind.d<?> h(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        a g4;
        String name = javaType.getRawClass().getName();
        if (name.startsWith("java.util.")) {
            String f10 = f(name);
            if (f10 != null) {
                String c10 = c(f10);
                if (c10 != null) {
                    if (c10.endsWith("Set")) {
                        g4 = g(4, javaType, Set.class);
                    } else {
                        if (c10.endsWith("List")) {
                            g4 = g(5, javaType, List.class);
                        }
                        g4 = null;
                    }
                } else {
                    String a10 = a(f10);
                    if (a10 != null) {
                        if (a10.endsWith("Set")) {
                            g4 = g(1, javaType, Set.class);
                        } else {
                            if (a10.endsWith("List")) {
                                g4 = g(2, javaType, List.class);
                            }
                            g4 = null;
                        }
                    } else {
                        String b10 = b(f10);
                        if (b10 != null) {
                            if (b10.endsWith("Set")) {
                                g4 = g(7, javaType, Set.class);
                            } else if (b10.endsWith("List")) {
                                g4 = g(9, javaType, List.class);
                            } else if (b10.endsWith("Collection")) {
                                g4 = g(8, javaType, Collection.class);
                            }
                        }
                        g4 = null;
                    }
                }
                if (g4 == null) {
                    return null;
                }
                return new StdDelegatingDeserializer(g4);
            }
            String d4 = d(name);
            if (d4 != null) {
                if (d4.contains("List")) {
                    return new StdDelegatingDeserializer(g(5, javaType, List.class));
                }
                return null;
            }
            String e4 = e(name);
            if (e4 != null) {
                if (e4.contains("List")) {
                    return new StdDelegatingDeserializer(g(11, javaType, List.class));
                }
                if (e4.contains("Set")) {
                    return new StdDelegatingDeserializer(g(4, javaType, Set.class));
                }
            }
            return null;
        }
        return null;
    }

    public static com.fasterxml.jackson.databind.d<?> i(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        a g4;
        String name = javaType.getRawClass().getName();
        String f10 = f(name);
        if (f10 != null) {
            String c10 = c(f10);
            if (c10 != null) {
                if (c10.contains("Map")) {
                    g4 = g(6, javaType, Map.class);
                }
                g4 = null;
            } else {
                String a10 = a(f10);
                if (a10 != null) {
                    if (a10.contains("Map")) {
                        g4 = g(3, javaType, Map.class);
                    }
                    g4 = null;
                } else {
                    String b10 = b(f10);
                    if (b10 != null && b10.contains("Map")) {
                        g4 = g(10, javaType, Map.class);
                    }
                    g4 = null;
                }
            }
        } else {
            String e4 = e(name);
            if (e4 != null && e4.contains("Map")) {
                g4 = g(6, javaType, Map.class);
            }
            g4 = null;
        }
        if (g4 == null) {
            return null;
        }
        return new StdDelegatingDeserializer(g4);
    }
}
