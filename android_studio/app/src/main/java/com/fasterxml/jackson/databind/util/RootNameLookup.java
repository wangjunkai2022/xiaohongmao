package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class RootNameLookup implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15971b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected transient LRUMap<ClassKey, PropertyName> f15972a = new LRUMap<>(20, 200);

    protected Object a() {
        return new RootNameLookup();
    }

    public PropertyName findRootName(JavaType javaType, MapperConfig<?> mapperConfig) {
        return findRootName(javaType.getRawClass(), mapperConfig);
    }

    public PropertyName findRootName(Class<?> cls, MapperConfig<?> mapperConfig) {
        ClassKey classKey = new ClassKey(cls);
        PropertyName propertyName = this.f15972a.get(classKey);
        if (propertyName != null) {
            return propertyName;
        }
        PropertyName findRootName = mapperConfig.getAnnotationIntrospector().findRootName(mapperConfig.introspectClassAnnotations(cls).A());
        if (findRootName == null || !findRootName.hasSimpleName()) {
            findRootName = PropertyName.construct(cls.getSimpleName());
        }
        this.f15972a.put(classKey, findRootName);
        return findRootName;
    }
}
