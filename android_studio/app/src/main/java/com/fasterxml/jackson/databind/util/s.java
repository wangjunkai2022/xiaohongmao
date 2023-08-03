package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

/* compiled from: StdConverter.java */
/* loaded from: classes2.dex */
public abstract class s<IN, OUT> implements h<IN, OUT> {
    @Override // com.fasterxml.jackson.databind.util.h
    public JavaType a(TypeFactory typeFactory) {
        return c(typeFactory).containedType(0);
    }

    @Override // com.fasterxml.jackson.databind.util.h
    public JavaType b(TypeFactory typeFactory) {
        return c(typeFactory).containedType(1);
    }

    protected JavaType c(TypeFactory typeFactory) {
        JavaType findSuperType = typeFactory.constructType(getClass()).findSuperType(h.class);
        if (findSuperType == null || findSuperType.containedTypeCount() < 2) {
            throw new IllegalStateException("Cannot find OUT type parameter for Converter of type " + getClass().getName());
        }
        return findSuperType;
    }

    @Override // com.fasterxml.jackson.databind.util.h
    public abstract OUT convert(IN in);
}
