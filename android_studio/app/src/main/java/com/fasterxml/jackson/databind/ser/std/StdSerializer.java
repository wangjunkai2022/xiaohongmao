package com.fasterxml.jackson.databind.ser.std;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.b;
import com.fasterxml.jackson.databind.jsonFormatVisitors.d;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.jsonFormatVisitors.j;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.util.h;
import d2.c;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class StdSerializer<T> extends g<T> implements d, c, Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15847b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f15848c = new Object();

    /* renamed from: a  reason: collision with root package name */
    protected final Class<T> f15849a;

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(Class<T> cls) {
        this.f15849a = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean a(Object obj, Object obj2) {
        return (obj == null || obj2 == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean b(Collection<?> collection) {
        return (collection == null || collection.isEmpty()) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        fVar.j(javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectNode c(String str) {
        ObjectNode objectNode = JsonNodeFactory.instance.objectNode();
        objectNode.put("type", str);
        return objectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectNode d(String str, boolean z9) {
        ObjectNode c10 = c(str);
        if (!z9) {
            c10.put("required", !z9);
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g<?> e(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        Object findContentSerializer;
        if (beanProperty != null) {
            AnnotatedMember member = beanProperty.getMember();
            AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
            if (member == null || (findContentSerializer = annotationIntrospector.findContentSerializer(member)) == null) {
                return null;
            }
            return lVar.serializerInstance(member, findContentSerializer);
        }
        return null;
    }

    public e getSchema(l lVar, Type type) throws JsonMappingException {
        return c(TypedValues.Custom.S_STRING);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g<?> h(l lVar, BeanProperty beanProperty, g<?> gVar) throws JsonMappingException {
        Object obj = f15848c;
        Map map = (Map) lVar.getAttribute(obj);
        if (map != null) {
            if (map.get(beanProperty) != null) {
                return gVar;
            }
        } else {
            map = new IdentityHashMap();
            lVar.setAttribute(obj, (Object) map);
        }
        map.put(beanProperty, Boolean.TRUE);
        try {
            g<?> i4 = i(lVar, beanProperty, gVar);
            return i4 != null ? lVar.handleSecondaryContextualization(i4, beanProperty) : gVar;
        } finally {
            map.remove(beanProperty);
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public Class<T> handledType() {
        return this.f15849a;
    }

    @Deprecated
    protected g<?> i(l lVar, BeanProperty beanProperty, g<?> gVar) throws JsonMappingException {
        AnnotatedMember member;
        Object findSerializationContentConverter;
        AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
        if (!a(annotationIntrospector, beanProperty) || (member = beanProperty.getMember()) == null || (findSerializationContentConverter = annotationIntrospector.findSerializationContentConverter(member)) == null) {
            return gVar;
        }
        h<Object, Object> converterInstance = lVar.converterInstance(beanProperty.getMember(), findSerializationContentConverter);
        JavaType b10 = converterInstance.b(lVar.getTypeFactory());
        if (gVar == null && !b10.isJavaLangObject()) {
            gVar = lVar.findValueSerializer(b10);
        }
        return new StdDelegatingSerializer(converterInstance, b10, gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean j(l lVar, BeanProperty beanProperty, Class<?> cls, JsonFormat.Feature feature) {
        JsonFormat.Value k10 = k(lVar, beanProperty, cls);
        if (k10 != null) {
            return k10.getFeature(feature);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonFormat.Value k(l lVar, BeanProperty beanProperty, Class<?> cls) {
        if (beanProperty != null) {
            return beanProperty.findPropertyFormat(lVar.getConfig(), cls);
        }
        return lVar.getDefaultPropertyFormat(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonInclude.Value l(l lVar, BeanProperty beanProperty, Class<?> cls) {
        if (beanProperty != null) {
            return beanProperty.findPropertyInclusion(lVar.getConfig(), cls);
        }
        return lVar.getDefaultPropertyInclusion(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.ser.h m(l lVar, Object obj, Object obj2) throws JsonMappingException {
        com.fasterxml.jackson.databind.ser.f filterProvider = lVar.getFilterProvider();
        if (filterProvider == null) {
            Class<T> handledType = handledType();
            return (com.fasterxml.jackson.databind.ser.h) lVar.reportBadDefinition((Class<?>) handledType, "Cannot resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured");
        }
        return filterProvider.findPropertyFilter(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n(g<?> gVar) {
        return com.fasterxml.jackson.databind.util.g.a0(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void o(f fVar, JavaType javaType, g<?> gVar, JavaType javaType2) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (a(o9, gVar)) {
            o9.c(gVar, javaType2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p(f fVar, JavaType javaType, JsonFormatTypes jsonFormatTypes) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (o9 != null) {
            o9.d(jsonFormatTypes);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q(f fVar, JavaType javaType, JsonParser.NumberType numberType) throws JsonMappingException {
        j k10 = fVar.k(javaType);
        if (k10 != null) {
            k10.a(numberType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(f fVar, JavaType javaType, JsonParser.NumberType numberType) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsonFormatVisitors.g b10 = fVar.b(javaType);
        if (a(b10, numberType)) {
            b10.a(numberType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s(f fVar, JavaType javaType, JsonParser.NumberType numberType, JsonValueFormat jsonValueFormat) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsonFormatVisitors.g b10 = fVar.b(javaType);
        if (b10 != null) {
            if (numberType != null) {
                b10.a(numberType);
            }
            if (jsonValueFormat != null) {
                b10.c(jsonValueFormat);
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public abstract void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void t(f fVar, JavaType javaType) throws JsonMappingException {
        fVar.i(javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u(f fVar, JavaType javaType, JsonValueFormat jsonValueFormat) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsonFormatVisitors.l i4 = fVar.i(javaType);
        if (i4 != null) {
            i4.c(jsonValueFormat);
        }
    }

    public void wrapAndThrow(l lVar, Throwable th, Object obj, String str) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        com.fasterxml.jackson.databind.util.g.t0(th);
        boolean z9 = lVar == null || lVar.isEnabled(SerializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z9 || !(th instanceof JacksonException)) {
                throw ((IOException) th);
            }
        } else if (!z9) {
            com.fasterxml.jackson.databind.util.g.v0(th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, str);
    }

    public e getSchema(l lVar, Type type, boolean z9) throws JsonMappingException {
        ObjectNode objectNode = (ObjectNode) getSchema(lVar, type);
        if (!z9) {
            objectNode.put("required", !z9);
        }
        return objectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(JavaType javaType) {
        this.f15849a = (Class<T>) javaType.getRawClass();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public StdSerializer(Class<?> cls, boolean z9) {
        this.f15849a = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(StdSerializer<?> stdSerializer) {
        this.f15849a = (Class<T>) stdSerializer.f15849a;
    }

    public void wrapAndThrow(l lVar, Throwable th, Object obj, int i4) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        com.fasterxml.jackson.databind.util.g.t0(th);
        boolean z9 = lVar == null || lVar.isEnabled(SerializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z9 || !(th instanceof JacksonException)) {
                throw ((IOException) th);
            }
        } else if (!z9) {
            com.fasterxml.jackson.databind.util.g.v0(th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, i4);
    }
}
