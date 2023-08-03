package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;

/* compiled from: Serializers.java */
/* loaded from: classes.dex */
public interface l {

    /* compiled from: Serializers.java */
    /* loaded from: classes.dex */
    public static class a implements l {
        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findArraySerializer(SerializationConfig serializationConfig, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findCollectionLikeSerializer(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findCollectionSerializer(SerializationConfig serializationConfig, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findMapLikeSerializer(SerializationConfig serializationConfig, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar2) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findMapSerializer(SerializationConfig serializationConfig, MapType mapType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar2) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findReferenceSerializer(SerializationConfig serializationConfig, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
            return findSerializer(serializationConfig, referenceType, bVar);
        }

        @Override // com.fasterxml.jackson.databind.ser.l
        public com.fasterxml.jackson.databind.g<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) {
            return null;
        }
    }

    com.fasterxml.jackson.databind.g<?> findArraySerializer(SerializationConfig serializationConfig, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar);

    com.fasterxml.jackson.databind.g<?> findCollectionLikeSerializer(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar);

    com.fasterxml.jackson.databind.g<?> findCollectionSerializer(SerializationConfig serializationConfig, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar);

    com.fasterxml.jackson.databind.g<?> findMapLikeSerializer(SerializationConfig serializationConfig, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar2);

    com.fasterxml.jackson.databind.g<?> findMapSerializer(SerializationConfig serializationConfig, MapType mapType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar2);

    com.fasterxml.jackson.databind.g<?> findReferenceSerializer(SerializationConfig serializationConfig, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar);

    com.fasterxml.jackson.databind.g<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar);
}
