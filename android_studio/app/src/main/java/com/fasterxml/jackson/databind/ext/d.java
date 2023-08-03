package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.beans.ConstructorProperties;
import java.beans.Transient;

/* compiled from: Java7SupportImpl.java */
/* loaded from: classes.dex */
public class d extends c {

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f15129b = ConstructorProperties.class;

    @Override // com.fasterxml.jackson.databind.ext.c
    public PropertyName a(AnnotatedParameter annotatedParameter) {
        ConstructorProperties annotation;
        AnnotatedWithParams owner = annotatedParameter.getOwner();
        if (owner == null || (annotation = owner.getAnnotation(ConstructorProperties.class)) == null) {
            return null;
        }
        String[] value = annotation.value();
        int index = annotatedParameter.getIndex();
        if (index < value.length) {
            return PropertyName.construct(value[index]);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ext.c
    public Boolean b(com.fasterxml.jackson.databind.introspect.a aVar) {
        Transient annotation = aVar.getAnnotation(Transient.class);
        if (annotation != null) {
            return Boolean.valueOf(annotation.value());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ext.c
    public Boolean c(com.fasterxml.jackson.databind.introspect.a aVar) {
        if (aVar.getAnnotation(ConstructorProperties.class) != null) {
            return Boolean.TRUE;
        }
        return null;
    }
}
