package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;

/* compiled from: Deserializers.java */
/* loaded from: classes.dex */
public interface i {

    /* compiled from: Deserializers.java */
    /* loaded from: classes.dex */
    public static abstract class a implements i {
        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public com.fasterxml.jackson.databind.d<?> findTreeNodeDeserializer(Class<? extends com.fasterxml.jackson.databind.e> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.deser.i
        public /* synthetic */ boolean hasDeserializerFor(DeserializationConfig deserializationConfig, Class cls) {
            return h.a(this, deserializationConfig, cls);
        }
    }

    com.fasterxml.jackson.databind.d<?> findArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException;

    com.fasterxml.jackson.databind.d<?> findTreeNodeDeserializer(Class<? extends com.fasterxml.jackson.databind.e> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;

    boolean hasDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls);
}
