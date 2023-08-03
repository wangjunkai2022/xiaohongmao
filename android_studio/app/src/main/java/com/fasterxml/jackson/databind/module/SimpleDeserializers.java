package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.b;
import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.deser.i;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleDeserializers extends i.a implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15499c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<ClassKey, d<?>> f15500a = null;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f15501b = false;

    public SimpleDeserializers() {
    }

    private final d<?> a(JavaType javaType) {
        HashMap<ClassKey, d<?>> hashMap = this.f15500a;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(new ClassKey(javaType.getRawClass()));
    }

    public <T> void addDeserializer(Class<T> cls, d<? extends T> dVar) {
        ClassKey classKey = new ClassKey(cls);
        if (this.f15500a == null) {
            this.f15500a = new HashMap<>();
        }
        this.f15500a.put(classKey, dVar);
        if (cls == Enum.class) {
            this.f15501b = true;
        }
    }

    public void addDeserializers(Map<Class<?>, d<?>> map) {
        for (Map.Entry<Class<?>, d<?>> entry : map.entrySet()) {
            addDeserializer(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(arrayType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, b bVar) throws JsonMappingException {
        return a(javaType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(collectionType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(collectionLikeType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, b bVar) throws JsonMappingException {
        HashMap<ClassKey, d<?>> hashMap = this.f15500a;
        if (hashMap == null) {
            return null;
        }
        d<?> dVar = hashMap.get(new ClassKey(cls));
        return (dVar == null && this.f15501b && cls.isEnum()) ? this.f15500a.get(new ClassKey(Enum.class)) : dVar;
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, b bVar, h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(mapType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, b bVar, h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(mapLikeType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, d<?> dVar) throws JsonMappingException {
        return a(referenceType);
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public d<?> findTreeNodeDeserializer(Class<? extends e> cls, DeserializationConfig deserializationConfig, b bVar) throws JsonMappingException {
        HashMap<ClassKey, d<?>> hashMap = this.f15500a;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(new ClassKey(cls));
    }

    @Override // com.fasterxml.jackson.databind.deser.i.a, com.fasterxml.jackson.databind.deser.i
    public boolean hasDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        HashMap<ClassKey, d<?>> hashMap = this.f15500a;
        return hashMap != null && hashMap.containsKey(new ClassKey(cls));
    }

    public SimpleDeserializers(Map<Class<?>, d<?>> map) {
        addDeserializers(map);
    }
}
