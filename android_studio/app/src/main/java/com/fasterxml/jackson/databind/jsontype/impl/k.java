package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: TypeNameIdResolver.java */
/* loaded from: classes.dex */
public class k extends j {

    /* renamed from: c  reason: collision with root package name */
    protected final MapperConfig<?> f15466c;

    /* renamed from: d  reason: collision with root package name */
    protected final ConcurrentHashMap<String, String> f15467d;

    /* renamed from: e  reason: collision with root package name */
    protected final Map<String, JavaType> f15468e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15469f;

    protected k(MapperConfig<?> mapperConfig, JavaType javaType, ConcurrentHashMap<String, String> concurrentHashMap, HashMap<String, JavaType> hashMap) {
        super(javaType, mapperConfig.getTypeFactory());
        this.f15466c = mapperConfig;
        this.f15467d = concurrentHashMap;
        this.f15468e = hashMap;
        this.f15469f = mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES);
    }

    protected static String h(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf < 0 ? name : name.substring(lastIndexOf + 1);
    }

    public static k j(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z9, boolean z10) {
        HashMap hashMap;
        ConcurrentHashMap concurrentHashMap;
        if (z9 != z10) {
            if (z9) {
                concurrentHashMap = new ConcurrentHashMap();
                hashMap = null;
            } else {
                hashMap = new HashMap();
                concurrentHashMap = new ConcurrentHashMap(4);
            }
            boolean isEnabled = mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_VALUES);
            if (collection != null) {
                for (NamedType namedType : collection) {
                    Class<?> type = namedType.getType();
                    String name = namedType.hasName() ? namedType.getName() : h(type);
                    if (z9) {
                        concurrentHashMap.put(type.getName(), name);
                    }
                    if (z10) {
                        if (isEnabled) {
                            name = name.toLowerCase();
                        }
                        JavaType javaType2 = (JavaType) hashMap.get(name);
                        if (javaType2 == null || !type.isAssignableFrom(javaType2.getRawClass())) {
                            hashMap.put(name, mapperConfig.constructType(type));
                        }
                    }
                }
            }
            return new k(mapperConfig, javaType, concurrentHashMap, hashMap);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String a(Object obj) {
        return k(obj.getClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.j, com.fasterxml.jackson.databind.jsontype.c
    public String b() {
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<String, JavaType> entry : this.f15468e.entrySet()) {
            if (entry.getValue().isConcrete()) {
                treeSet.add(entry.getKey());
            }
        }
        return treeSet.toString();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.j, com.fasterxml.jackson.databind.jsontype.c
    public JavaType d(com.fasterxml.jackson.databind.c cVar, String str) {
        return i(str);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public String e(Object obj, Class<?> cls) {
        if (obj == null) {
            return k(cls);
        }
        return a(obj);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.c
    public JsonTypeInfo.Id g() {
        return JsonTypeInfo.Id.NAME;
    }

    protected JavaType i(String str) {
        if (this.f15469f) {
            str = str.toLowerCase();
        }
        return this.f15468e.get(str);
    }

    protected String k(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        String name = cls.getName();
        String str = this.f15467d.get(name);
        if (str == null) {
            Class<?> rawClass = this.f15464a.constructType(cls).getRawClass();
            if (this.f15466c.isAnnotationProcessingEnabled()) {
                str = this.f15466c.getAnnotationIntrospector().findTypeName(this.f15466c.introspectClassAnnotations(rawClass).A());
            }
            if (str == null) {
                str = h(rawClass);
            }
            this.f15467d.put(name, str);
        }
        return str;
    }

    public String toString() {
        return String.format("[%s; id-to-type=%s]", getClass().getName(), this.f15468e);
    }
}
