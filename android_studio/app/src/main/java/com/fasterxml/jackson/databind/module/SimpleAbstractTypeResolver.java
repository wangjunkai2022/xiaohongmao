package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.a;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SimpleAbstractTypeResolver extends a implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15497b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final HashMap<ClassKey, Class<?>> f15498a = new HashMap<>();

    public <T> SimpleAbstractTypeResolver addMapping(Class<T> cls, Class<? extends T> cls2) {
        if (cls != cls2) {
            if (cls.isAssignableFrom(cls2)) {
                if (Modifier.isAbstract(cls.getModifiers())) {
                    this.f15498a.put(new ClassKey(cls), cls2);
                    return this;
                }
                throw new IllegalArgumentException("Cannot add mapping from class " + cls.getName() + " since it is not abstract");
            }
            throw new IllegalArgumentException("Cannot add mapping from class " + cls.getName() + " to " + cls2.getName() + ", as latter is not a subtype of former");
        }
        throw new IllegalArgumentException("Cannot add mapping from class to itself");
    }

    @Override // com.fasterxml.jackson.databind.a
    public JavaType findTypeMapping(DeserializationConfig deserializationConfig, JavaType javaType) {
        Class<?> cls = this.f15498a.get(new ClassKey(javaType.getRawClass()));
        if (cls == null) {
            return null;
        }
        return deserializationConfig.getTypeFactory().constructSpecializedType(javaType, cls);
    }

    @Override // com.fasterxml.jackson.databind.a
    @Deprecated
    public JavaType resolveAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.a
    public JavaType resolveAbstractType(DeserializationConfig deserializationConfig, b bVar) {
        return null;
    }
}
