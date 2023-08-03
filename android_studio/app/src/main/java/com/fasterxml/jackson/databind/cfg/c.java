package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.k;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.util.h;

/* compiled from: HandlerInstantiator.java */
/* loaded from: classes.dex */
public abstract class c {
    public h<?, ?> a(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls) {
        return null;
    }

    public abstract com.fasterxml.jackson.databind.d<?> b(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls);

    public Object c(SerializationConfig serializationConfig, k kVar, Class<?> cls) {
        return null;
    }

    public abstract com.fasterxml.jackson.databind.h d(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls);

    public PropertyNamingStrategy e(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls) {
        return null;
    }

    public ObjectIdGenerator<?> f(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls) {
        return null;
    }

    public c0 g(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls) {
        return null;
    }

    public abstract g<?> h(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls);

    public abstract com.fasterxml.jackson.databind.jsontype.c i(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls);

    public abstract com.fasterxml.jackson.databind.jsontype.e<?> j(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls);

    public ValueInstantiator k(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, Class<?> cls) {
        return null;
    }

    public VirtualBeanPropertyWriter l(MapperConfig<?> mapperConfig, Class<?> cls) {
        return null;
    }
}
