package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;

/* compiled from: ClassIntrospector.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: ClassIntrospector.java */
    /* loaded from: classes.dex */
    public interface a {
        a copy();

        Class<?> findMixInClassFor(Class<?> cls);
    }

    public abstract l copy();

    public abstract com.fasterxml.jackson.databind.b forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, a aVar);

    public abstract com.fasterxml.jackson.databind.b forCreation(DeserializationConfig deserializationConfig, JavaType javaType, a aVar);

    public abstract com.fasterxml.jackson.databind.b forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, a aVar);

    @Deprecated
    public abstract com.fasterxml.jackson.databind.b forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, a aVar);

    public abstract com.fasterxml.jackson.databind.b forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, a aVar, com.fasterxml.jackson.databind.b bVar);

    public abstract com.fasterxml.jackson.databind.b forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, a aVar);

    public abstract com.fasterxml.jackson.databind.b forSerialization(SerializationConfig serializationConfig, JavaType javaType, a aVar);
}
