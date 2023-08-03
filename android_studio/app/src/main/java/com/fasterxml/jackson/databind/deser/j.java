package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: KeyDeserializers.java */
/* loaded from: classes.dex */
public interface j {
    com.fasterxml.jackson.databind.h findKeyDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException;
}
