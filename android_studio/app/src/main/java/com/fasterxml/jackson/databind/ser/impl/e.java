package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

/* compiled from: TypeWrappedSerializer.java */
/* loaded from: classes.dex */
public final class e extends g<Object> implements com.fasterxml.jackson.databind.ser.e {

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.f f15721a;

    /* renamed from: b  reason: collision with root package name */
    protected final g<Object> f15722b;

    public e(com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar) {
        this.f15721a = fVar;
        this.f15722b = gVar;
    }

    public com.fasterxml.jackson.databind.jsontype.f a() {
        return this.f15721a;
    }

    public g<Object> b() {
        return this.f15722b;
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<?> gVar = this.f15722b;
        if (gVar instanceof com.fasterxml.jackson.databind.ser.e) {
            gVar = lVar.handleSecondaryContextualization(gVar, beanProperty);
        }
        return gVar == this.f15722b ? this : new e(this.f15721a, gVar);
    }

    @Override // com.fasterxml.jackson.databind.g
    public Class<Object> handledType() {
        return Object.class;
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        this.f15722b.serializeWithType(obj, jsonGenerator, lVar, this.f15721a);
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        this.f15722b.serializeWithType(obj, jsonGenerator, lVar, fVar);
    }
}
