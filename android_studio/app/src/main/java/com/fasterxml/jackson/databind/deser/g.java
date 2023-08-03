package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;

/* compiled from: DeserializerFactory.java */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    protected static final i[] f14687a = new i[0];

    public abstract com.fasterxml.jackson.databind.d<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<Object> createBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<Object> createBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar, Class<?> cls) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createCollectionDeserializer(DeserializationContext deserializationContext, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.h createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createMapDeserializer(DeserializationContext deserializationContext, MapType mapType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createReferenceDeserializer(DeserializationContext deserializationContext, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.d<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract com.fasterxml.jackson.databind.jsontype.b findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException;

    public abstract ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    public abstract boolean hasExplicitDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls);

    public abstract JavaType mapAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException;

    public abstract g withAbstractTypeResolver(com.fasterxml.jackson.databind.a aVar);

    public abstract g withAdditionalDeserializers(i iVar);

    public abstract g withAdditionalKeyDeserializers(j jVar);

    public abstract g withDeserializerModifier(b bVar);

    public abstract g withValueInstantiators(o oVar);
}
