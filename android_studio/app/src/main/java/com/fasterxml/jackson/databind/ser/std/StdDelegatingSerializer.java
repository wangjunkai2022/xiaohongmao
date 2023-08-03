package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.d;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.i;
import com.fasterxml.jackson.databind.util.h;
import d2.c;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public class StdDelegatingSerializer extends StdSerializer<Object> implements e, i, d, c {

    /* renamed from: d  reason: collision with root package name */
    protected final h<Object, ?> f15831d;

    /* renamed from: e  reason: collision with root package name */
    protected final JavaType f15832e;

    /* renamed from: f  reason: collision with root package name */
    protected final g<Object> f15833f;

    public StdDelegatingSerializer(h<?, ?> hVar) {
        super(Object.class);
        this.f15831d = hVar;
        this.f15832e = null;
        this.f15833f = null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        g<Object> gVar = this.f15833f;
        if (gVar != null) {
            gVar.acceptJsonFormatVisitor(fVar, javaType);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<?> gVar = this.f15833f;
        JavaType javaType = this.f15832e;
        if (gVar == null) {
            if (javaType == null) {
                javaType = this.f15831d.b(lVar.getTypeFactory());
            }
            if (!javaType.isJavaLangObject()) {
                gVar = lVar.findValueSerializer(javaType);
            }
        }
        if (gVar instanceof e) {
            gVar = lVar.handleSecondaryContextualization(gVar, beanProperty);
        }
        return (gVar == this.f15833f && javaType == this.f15832e) ? this : y(this.f15831d, javaType, gVar);
    }

    @Override // com.fasterxml.jackson.databind.g
    public g<?> getDelegatee() {
        return this.f15833f;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) throws JsonMappingException {
        g<Object> gVar = this.f15833f;
        if (gVar instanceof c) {
            return ((c) gVar).getSchema(lVar, type);
        }
        return super.getSchema(lVar, type);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Object obj) {
        Object w9 = w(obj);
        if (w9 == null) {
            return true;
        }
        g<Object> gVar = this.f15833f;
        if (gVar == null) {
            return obj == null;
        }
        return gVar.isEmpty(lVar, w9);
    }

    @Override // com.fasterxml.jackson.databind.ser.i
    public void resolve(l lVar) throws JsonMappingException {
        g<Object> gVar = this.f15833f;
        if (gVar == null || !(gVar instanceof i)) {
            return;
        }
        ((i) gVar).resolve(lVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        Object w9 = w(obj);
        if (w9 == null) {
            lVar.defaultSerializeNull(jsonGenerator);
            return;
        }
        g<Object> gVar = this.f15833f;
        if (gVar == null) {
            gVar = v(w9, lVar);
        }
        gVar.serialize(w9, jsonGenerator, lVar);
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        Object w9 = w(obj);
        g<Object> gVar = this.f15833f;
        if (gVar == null) {
            gVar = v(obj, lVar);
        }
        gVar.serializeWithType(w9, jsonGenerator, lVar, fVar);
    }

    protected g<Object> v(Object obj, l lVar) throws JsonMappingException {
        return lVar.findValueSerializer(obj.getClass());
    }

    protected Object w(Object obj) {
        return this.f15831d.convert(obj);
    }

    protected h<Object, ?> x() {
        return this.f15831d;
    }

    protected StdDelegatingSerializer y(h<Object, ?> hVar, JavaType javaType, g<?> gVar) {
        com.fasterxml.jackson.databind.util.g.z0(StdDelegatingSerializer.class, this, "withDelegate");
        return new StdDelegatingSerializer(hVar, javaType, gVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type, boolean z9) throws JsonMappingException {
        g<Object> gVar = this.f15833f;
        if (gVar instanceof c) {
            return ((c) gVar).getSchema(lVar, type, z9);
        }
        return super.getSchema(lVar, type);
    }

    public <T> StdDelegatingSerializer(Class<T> cls, h<T, ?> hVar) {
        super(cls, false);
        this.f15831d = hVar;
        this.f15832e = null;
        this.f15833f = null;
    }

    public StdDelegatingSerializer(h<Object, ?> hVar, JavaType javaType, g<?> gVar) {
        super(javaType);
        this.f15831d = hVar;
        this.f15832e = javaType;
        this.f15833f = gVar;
    }
}
