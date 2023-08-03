package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import java.util.Map;

/* compiled from: AnyGetterWriter.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected final BeanProperty f15624a;

    /* renamed from: b  reason: collision with root package name */
    protected final AnnotatedMember f15625b;

    /* renamed from: c  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.g<Object> f15626c;

    /* renamed from: d  reason: collision with root package name */
    protected MapSerializer f15627d;

    public a(BeanProperty beanProperty, AnnotatedMember annotatedMember, com.fasterxml.jackson.databind.g<?> gVar) {
        this.f15625b = annotatedMember;
        this.f15624a = beanProperty;
        this.f15626c = gVar;
        if (gVar instanceof MapSerializer) {
            this.f15627d = (MapSerializer) gVar;
        }
    }

    public void a(SerializationConfig serializationConfig) {
        this.f15625b.fixAccess(serializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
    }

    public void b(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, h hVar) throws Exception {
        Object value = this.f15625b.getValue(obj);
        if (value == null) {
            return;
        }
        if (!(value instanceof Map)) {
            lVar.reportBadDefinition(this.f15624a.getType(), String.format("Value returned by 'any-getter' (%s()) not java.util.Map but %s", this.f15625b.getName(), value.getClass().getName()));
        }
        MapSerializer mapSerializer = this.f15627d;
        if (mapSerializer != null) {
            mapSerializer.serializeFilteredAnyProperties(lVar, jsonGenerator, obj, (Map) value, hVar, null);
        } else {
            this.f15626c.serialize(value, jsonGenerator, lVar);
        }
    }

    public void c(Object obj, JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws Exception {
        Object value = this.f15625b.getValue(obj);
        if (value == null) {
            return;
        }
        if (!(value instanceof Map)) {
            lVar.reportBadDefinition(this.f15624a.getType(), String.format("Value returned by 'any-getter' %s() not java.util.Map but %s", this.f15625b.getName(), value.getClass().getName()));
        }
        MapSerializer mapSerializer = this.f15627d;
        if (mapSerializer != null) {
            mapSerializer.serializeWithoutTypeInfo((Map) value, jsonGenerator, lVar);
        } else {
            this.f15626c.serialize(value, jsonGenerator, lVar);
        }
    }

    public void d(com.fasterxml.jackson.databind.l lVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.g<?> gVar = this.f15626c;
        if (gVar instanceof e) {
            com.fasterxml.jackson.databind.g<?> handlePrimaryContextualization = lVar.handlePrimaryContextualization(gVar, this.f15624a);
            this.f15626c = handlePrimaryContextualization;
            if (handlePrimaryContextualization instanceof MapSerializer) {
                this.f15627d = (MapSerializer) handlePrimaryContextualization;
            }
        }
    }
}
