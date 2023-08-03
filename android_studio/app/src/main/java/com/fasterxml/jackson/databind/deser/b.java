package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import java.util.List;

/* compiled from: BeanDeserializerModifier.java */
/* loaded from: classes.dex */
public abstract class b {
    public com.fasterxml.jackson.databind.d<?> a(DeserializationConfig deserializationConfig, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> b(DeserializationConfig deserializationConfig, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> c(DeserializationConfig deserializationConfig, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> d(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> e(DeserializationConfig deserializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.h f(DeserializationConfig deserializationConfig, JavaType javaType, com.fasterxml.jackson.databind.h hVar) {
        return hVar;
    }

    public com.fasterxml.jackson.databind.d<?> g(DeserializationConfig deserializationConfig, MapType mapType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> h(DeserializationConfig deserializationConfig, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public com.fasterxml.jackson.databind.d<?> i(DeserializationConfig deserializationConfig, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return dVar;
    }

    public a j(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, a aVar) {
        return aVar;
    }

    public List<com.fasterxml.jackson.databind.introspect.k> k(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, List<com.fasterxml.jackson.databind.introspect.k> list) {
        return list;
    }
}
