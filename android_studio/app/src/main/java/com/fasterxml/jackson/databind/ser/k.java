package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationConfig;

/* compiled from: SerializerFactory.java */
/* loaded from: classes.dex */
public abstract class k {
    @Deprecated
    public abstract com.fasterxml.jackson.databind.g<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException;

    public com.fasterxml.jackson.databind.g<Object> createKeySerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException {
        return createKeySerializer(lVar.getConfig(), javaType, gVar);
    }

    public abstract com.fasterxml.jackson.databind.g<Object> createSerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.jsontype.f createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) throws JsonMappingException;

    public abstract k withAdditionalKeySerializers(l lVar);

    public abstract k withAdditionalSerializers(l lVar);

    public abstract k withSerializerModifier(d dVar);
}
