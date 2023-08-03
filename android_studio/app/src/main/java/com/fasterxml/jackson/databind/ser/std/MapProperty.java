package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.k;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import java.io.IOException;
import java.lang.annotation.Annotation;

/* loaded from: classes2.dex */
public class MapProperty extends PropertyWriter {

    /* renamed from: k  reason: collision with root package name */
    private static final long f15771k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final BeanProperty f15772l = new BeanProperty.a();

    /* renamed from: e  reason: collision with root package name */
    protected final f f15773e;

    /* renamed from: f  reason: collision with root package name */
    protected final BeanProperty f15774f;

    /* renamed from: g  reason: collision with root package name */
    protected Object f15775g;

    /* renamed from: h  reason: collision with root package name */
    protected Object f15776h;

    /* renamed from: i  reason: collision with root package name */
    protected g<Object> f15777i;

    /* renamed from: j  reason: collision with root package name */
    protected g<Object> f15778j;

    public MapProperty(f fVar, BeanProperty beanProperty) {
        super(beanProperty == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : beanProperty.getMetadata());
        this.f15773e = fVar;
        this.f15774f = beanProperty == null ? f15772l : beanProperty;
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(k kVar, l lVar) throws JsonMappingException {
        this.f15774f.depositSchemaProperty(kVar, lVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    @Deprecated
    public void depositSchemaProperty(ObjectNode objectNode, l lVar) throws JsonMappingException {
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f15774f.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
        return (A) this.f15774f.getContextAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getFullName() {
        return new PropertyName(getName());
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this.f15774f.getMember();
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
    public String getName() {
        Object obj = this.f15775g;
        if (obj instanceof String) {
            return (String) obj;
        }
        return String.valueOf(obj);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        return this.f15774f.getType();
    }

    public Object getValue() {
        return this.f15776h;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getWrapperName() {
        return this.f15774f.getWrapperName();
    }

    public void reset(Object obj, Object obj2, g<Object> gVar, g<Object> gVar2) {
        this.f15775g = obj;
        this.f15776h = obj2;
        this.f15777i = gVar;
        this.f15778j = gVar2;
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
        f fVar = this.f15773e;
        if (fVar == null) {
            this.f15778j.serialize(this.f15776h, jsonGenerator, lVar);
        } else {
            this.f15778j.serializeWithType(this.f15776h, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        this.f15777i.serialize(this.f15775g, jsonGenerator, lVar);
        f fVar = this.f15773e;
        if (fVar == null) {
            this.f15778j.serialize(this.f15776h, jsonGenerator, lVar);
        } else {
            this.f15778j.serializeWithType(this.f15776h, jsonGenerator, lVar, fVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsOmittedField(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
        if (jsonGenerator.q()) {
            return;
        }
        jsonGenerator.t1(getName());
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsPlaceholder(Object obj, JsonGenerator jsonGenerator, l lVar) throws Exception {
        jsonGenerator.W0();
    }

    public void setValue(Object obj) {
        this.f15776h = obj;
    }

    @Deprecated
    public void reset(Object obj, g<Object> gVar, g<Object> gVar2) {
        reset(obj, this.f15776h, gVar, gVar2);
    }
}
