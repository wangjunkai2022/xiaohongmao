package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.ser.l;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class SimpleSerializers extends l.a implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15520d = 3;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<ClassKey, g<?>> f15521a = null;

    /* renamed from: b  reason: collision with root package name */
    protected HashMap<ClassKey, g<?>> f15522b = null;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f15523c = false;

    public SimpleSerializers() {
    }

    protected void a(Class<?> cls, g<?> gVar) {
        ClassKey classKey = new ClassKey(cls);
        if (cls.isInterface()) {
            if (this.f15522b == null) {
                this.f15522b = new HashMap<>();
            }
            this.f15522b.put(classKey, gVar);
            return;
        }
        if (this.f15521a == null) {
            this.f15521a = new HashMap<>();
        }
        this.f15521a.put(classKey, gVar);
        if (cls == Enum.class) {
            this.f15523c = true;
        }
    }

    public void addSerializer(g<?> gVar) {
        Class<?> handledType = gVar.handledType();
        if (handledType != null && handledType != Object.class) {
            a(handledType, gVar);
            return;
        }
        throw new IllegalArgumentException("JsonSerializer of type " + gVar.getClass().getName() + " does not define valid handledType() -- must either register with method that takes type argument  or make serializer extend 'com.fasterxml.jackson.databind.ser.std.StdSerializer'");
    }

    public void addSerializers(List<g<?>> list) {
        for (g<?> gVar : list) {
            addSerializer(gVar);
        }
    }

    protected g<?> b(Class<?> cls, ClassKey classKey) {
        Class<?>[] interfaces;
        for (Class<?> cls2 : cls.getInterfaces()) {
            classKey.reset(cls2);
            g<?> gVar = this.f15522b.get(classKey);
            if (gVar != null) {
                return gVar;
            }
            g<?> b10 = b(cls2, classKey);
            if (b10 != null) {
                return b10;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findArraySerializer(SerializationConfig serializationConfig, ArrayType arrayType, b bVar, f fVar, g<Object> gVar) {
        return findSerializer(serializationConfig, arrayType, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findCollectionLikeSerializer(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, b bVar, f fVar, g<Object> gVar) {
        return findSerializer(serializationConfig, collectionLikeType, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findCollectionSerializer(SerializationConfig serializationConfig, CollectionType collectionType, b bVar, f fVar, g<Object> gVar) {
        return findSerializer(serializationConfig, collectionType, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findMapLikeSerializer(SerializationConfig serializationConfig, MapLikeType mapLikeType, b bVar, g<Object> gVar, f fVar, g<Object> gVar2) {
        return findSerializer(serializationConfig, mapLikeType, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findMapSerializer(SerializationConfig serializationConfig, MapType mapType, b bVar, g<Object> gVar, f fVar, g<Object> gVar2) {
        return findSerializer(serializationConfig, mapType, bVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.l.a, com.fasterxml.jackson.databind.ser.l
    public g<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, b bVar) {
        g<?> b10;
        g<?> gVar;
        Class<?> rawClass = javaType.getRawClass();
        ClassKey classKey = new ClassKey(rawClass);
        if (rawClass.isInterface()) {
            HashMap<ClassKey, g<?>> hashMap = this.f15522b;
            if (hashMap != null && (gVar = hashMap.get(classKey)) != null) {
                return gVar;
            }
        } else {
            HashMap<ClassKey, g<?>> hashMap2 = this.f15521a;
            if (hashMap2 != null) {
                g<?> gVar2 = hashMap2.get(classKey);
                if (gVar2 != null) {
                    return gVar2;
                }
                if (this.f15523c && javaType.isEnumType()) {
                    classKey.reset(Enum.class);
                    g<?> gVar3 = this.f15521a.get(classKey);
                    if (gVar3 != null) {
                        return gVar3;
                    }
                }
                for (Class<?> cls = rawClass; cls != null; cls = cls.getSuperclass()) {
                    classKey.reset(cls);
                    g<?> gVar4 = this.f15521a.get(classKey);
                    if (gVar4 != null) {
                        return gVar4;
                    }
                }
            }
        }
        if (this.f15522b != null) {
            g<?> b11 = b(rawClass, classKey);
            if (b11 != null) {
                return b11;
            }
            if (rawClass.isInterface()) {
                return null;
            }
            do {
                rawClass = rawClass.getSuperclass();
                if (rawClass == null) {
                    return null;
                }
                b10 = b(rawClass, classKey);
            } while (b10 == null);
            return b10;
        }
        return null;
    }

    public SimpleSerializers(List<g<?>> list) {
        addSerializers(list);
    }

    public <T> void addSerializer(Class<? extends T> cls, g<T> gVar) {
        a(cls, gVar);
    }
}
