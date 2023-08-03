package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;

/* compiled from: AsExternalTypeSerializer.java */
/* loaded from: classes.dex */
public class c extends l {

    /* renamed from: c  reason: collision with root package name */
    protected final String f15445c;

    public c(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty, String str) {
        super(cVar, beanProperty);
        this.f15445c = str;
    }

    protected final void D(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.G1();
    }

    protected final void E(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        jsonGenerator.R0();
        if (str != null) {
            jsonGenerator.R1(this.f15445c, str);
        }
    }

    protected final void F(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.K1();
    }

    protected final void G(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        jsonGenerator.S0();
        if (str != null) {
            jsonGenerator.R1(this.f15445c, str);
        }
    }

    protected final void H(Object obj, JsonGenerator jsonGenerator) throws IOException {
    }

    protected final void I(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (str != null) {
            jsonGenerator.R1(this.f15445c, str);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    /* renamed from: J */
    public c b(BeanProperty beanProperty) {
        return this.f15471b == beanProperty ? this : new c(this.f15470a, beanProperty, this.f15445c);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public String c() {
        return this.f15445c;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public JsonTypeInfo.As e() {
        return JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }
}
