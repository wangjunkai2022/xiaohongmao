package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

/* loaded from: classes.dex */
public abstract class ContainerSerializer<T> extends StdSerializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerSerializer(Class<T> cls) {
        super(cls);
    }

    protected abstract ContainerSerializer<?> _withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar);

    public abstract com.fasterxml.jackson.databind.g<?> getContentSerializer();

    public abstract JavaType getContentType();

    public abstract boolean hasSingleElement(T t9);

    @Deprecated
    protected boolean v(com.fasterxml.jackson.databind.l lVar, BeanProperty beanProperty) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContainerSerializer<?> withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        return fVar == null ? this : _withValueTypeSerializer(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerSerializer(JavaType javaType) {
        super(javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerSerializer(Class<?> cls, boolean z9) {
        super(cls, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerSerializer(ContainerSerializer<?> containerSerializer) {
        super(containerSerializer.f15849a, false);
    }
}
