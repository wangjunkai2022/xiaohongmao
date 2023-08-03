package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import java.util.List;

/* compiled from: BeanSerializerModifier.java */
/* loaded from: classes.dex */
public abstract class d {
    public List<BeanPropertyWriter> a(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<BeanPropertyWriter> list) {
        return list;
    }

    public com.fasterxml.jackson.databind.g<?> b(SerializationConfig serializationConfig, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> c(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> d(SerializationConfig serializationConfig, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> e(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> f(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> g(SerializationConfig serializationConfig, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> h(SerializationConfig serializationConfig, MapType mapType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public com.fasterxml.jackson.databind.g<?> i(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<?> gVar) {
        return gVar;
    }

    public List<BeanPropertyWriter> j(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<BeanPropertyWriter> list) {
        return list;
    }

    public c k(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, c cVar) {
        return cVar;
    }
}
