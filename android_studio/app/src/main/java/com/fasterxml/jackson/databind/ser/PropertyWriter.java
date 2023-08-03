package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.Serializable;
import java.lang.annotation.Annotation;

/* loaded from: classes.dex */
public abstract class PropertyWriter extends ConcreteBeanPropertyBase implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15622d = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyWriter(PropertyMetadata propertyMetadata) {
        super(propertyMetadata);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    @Deprecated
    public abstract void depositSchemaProperty(ObjectNode objectNode, com.fasterxml.jackson.databind.l lVar) throws JsonMappingException;

    public <A extends Annotation> A findAnnotation(Class<A> cls) {
        A a10 = (A) getAnnotation(cls);
        return a10 == null ? (A) getContextAnnotation(cls) : a10;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract <A extends Annotation> A getAnnotation(Class<A> cls);

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract <A extends Annotation> A getContextAnnotation(Class<A> cls);

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract PropertyName getFullName();

    @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
    public abstract String getName();

    public abstract void serializeAsElement(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception;

    public abstract void serializeAsField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception;

    public abstract void serializeAsOmittedField(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception;

    public abstract void serializeAsPlaceholder(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyWriter(com.fasterxml.jackson.databind.introspect.k kVar) {
        super(kVar.getMetadata());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyWriter(PropertyWriter propertyWriter) {
        super(propertyWriter);
    }
}
