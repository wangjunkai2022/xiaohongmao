package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class StdSubtypeResolver extends com.fasterxml.jackson.databind.jsontype.a implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15434b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected LinkedHashSet<NamedType> f15435a;

    public StdSubtypeResolver() {
    }

    protected void a(com.fasterxml.jackson.databind.introspect.c cVar, NamedType namedType, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, HashMap<NamedType, NamedType> hashMap) {
        String findTypeName;
        if (!namedType.hasName() && (findTypeName = annotationIntrospector.findTypeName(cVar)) != null) {
            namedType = new NamedType(namedType.getType(), findTypeName);
        }
        NamedType namedType2 = new NamedType(namedType.getType());
        if (hashMap.containsKey(namedType2)) {
            if (!namedType.hasName() || hashMap.get(namedType2).hasName()) {
                return;
            }
            hashMap.put(namedType2, namedType);
            return;
        }
        hashMap.put(namedType2, namedType);
        List<NamedType> findSubtypes = annotationIntrospector.findSubtypes(cVar);
        if (findSubtypes == null || findSubtypes.isEmpty()) {
            return;
        }
        for (NamedType namedType3 : findSubtypes) {
            a(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, namedType3.getType()), namedType3, mapperConfig, annotationIntrospector, hashMap);
        }
    }

    protected void b(com.fasterxml.jackson.databind.introspect.c cVar, NamedType namedType, MapperConfig<?> mapperConfig, Set<Class<?>> set, Map<String, NamedType> map) {
        List<NamedType> findSubtypes;
        String findTypeName;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        if (!namedType.hasName() && (findTypeName = annotationIntrospector.findTypeName(cVar)) != null) {
            namedType = new NamedType(namedType.getType(), findTypeName);
        }
        if (namedType.hasName()) {
            map.put(namedType.getName(), namedType);
        }
        if (!set.add(namedType.getType()) || (findSubtypes = annotationIntrospector.findSubtypes(cVar)) == null || findSubtypes.isEmpty()) {
            return;
        }
        for (NamedType namedType2 : findSubtypes) {
            b(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, namedType2.getType()), namedType2, mapperConfig, set, map);
        }
    }

    protected Collection<NamedType> c(Class<?> cls, Set<Class<?>> set, Map<String, NamedType> map) {
        ArrayList arrayList = new ArrayList(map.values());
        for (NamedType namedType : map.values()) {
            set.remove(namedType.getType());
        }
        for (Class<?> cls2 : set) {
            if (cls2 != cls || !Modifier.isAbstract(cls2.getModifiers())) {
                arrayList.add(new NamedType(cls2));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        Class<?> rawType;
        List<NamedType> findSubtypes;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        if (javaType != null) {
            rawType = javaType.getRawClass();
        } else if (annotatedMember != null) {
            rawType = annotatedMember.getRawType();
        } else {
            throw new IllegalArgumentException("Both property and base type are nulls");
        }
        HashMap<NamedType, NamedType> hashMap = new HashMap<>();
        LinkedHashSet<NamedType> linkedHashSet = this.f15435a;
        if (linkedHashSet != null) {
            Iterator<NamedType> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                NamedType next = it.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    a(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, next.getType()), next, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        if (annotatedMember != null && (findSubtypes = annotationIntrospector.findSubtypes(annotatedMember)) != null) {
            for (NamedType namedType : findSubtypes) {
                a(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, namedType.getType()), namedType, mapperConfig, annotationIntrospector, hashMap);
            }
        }
        a(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, rawType), new NamedType(rawType, null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        List<NamedType> findSubtypes;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class<?> rawClass = javaType.getRawClass();
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, rawClass), new NamedType(rawClass, null), mapperConfig, hashSet, linkedHashMap);
        if (annotatedMember != null && (findSubtypes = annotationIntrospector.findSubtypes(annotatedMember)) != null) {
            for (NamedType namedType : findSubtypes) {
                b(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, namedType.getType()), namedType, mapperConfig, hashSet, linkedHashMap);
            }
        }
        LinkedHashSet<NamedType> linkedHashSet = this.f15435a;
        if (linkedHashSet != null) {
            Iterator<NamedType> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                NamedType next = it.next();
                if (rawClass.isAssignableFrom(next.getType())) {
                    b(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, next.getType()), next, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return c(rawClass, hashSet, linkedHashMap);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public com.fasterxml.jackson.databind.jsontype.a copy() {
        return new StdSubtypeResolver(this);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public void registerSubtypes(NamedType... namedTypeArr) {
        if (this.f15435a == null) {
            this.f15435a = new LinkedHashSet<>();
        }
        for (NamedType namedType : namedTypeArr) {
            this.f15435a.add(namedType);
        }
    }

    protected StdSubtypeResolver(StdSubtypeResolver stdSubtypeResolver) {
        LinkedHashSet<NamedType> linkedHashSet = stdSubtypeResolver.f15435a;
        this.f15435a = linkedHashSet == null ? null : new LinkedHashSet<>(linkedHashSet);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public void registerSubtypes(Class<?>... clsArr) {
        NamedType[] namedTypeArr = new NamedType[clsArr.length];
        int length = clsArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            namedTypeArr[i4] = new NamedType(clsArr[i4]);
        }
        registerSubtypes(namedTypeArr);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public void registerSubtypes(Collection<Class<?>> collection) {
        NamedType[] namedTypeArr = new NamedType[collection.size()];
        int i4 = 0;
        for (Class<?> cls : collection) {
            namedTypeArr[i4] = new NamedType(cls);
            i4++;
        }
        registerSubtypes(namedTypeArr);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar) {
        Class<?> rawType = cVar.getRawType();
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b(cVar, new NamedType(rawType, null), mapperConfig, hashSet, linkedHashMap);
        LinkedHashSet<NamedType> linkedHashSet = this.f15435a;
        if (linkedHashSet != null) {
            Iterator<NamedType> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                NamedType next = it.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    b(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, next.getType()), next, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return c(rawType, hashSet, linkedHashMap);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.a
    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        HashMap<NamedType, NamedType> hashMap = new HashMap<>();
        if (this.f15435a != null) {
            Class<?> rawType = cVar.getRawType();
            Iterator<NamedType> it = this.f15435a.iterator();
            while (it.hasNext()) {
                NamedType next = it.next();
                if (rawType.isAssignableFrom(next.getType())) {
                    a(com.fasterxml.jackson.databind.introspect.d.n(mapperConfig, next.getType()), next, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        a(cVar, new NamedType(cVar.getRawType(), null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }
}
