package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;

/* compiled from: AsWrapperTypeSerializer.java */
/* loaded from: classes.dex */
public class e extends l {
    public e(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty) {
        super(cVar, beanProperty);
    }

    protected String D(String str) {
        return com.fasterxml.jackson.databind.util.g.l0(str);
    }

    protected final void E(JsonGenerator jsonGenerator, String str) throws IOException {
        if (str != null) {
            jsonGenerator.T1(str);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    /* renamed from: F */
    public e b(BeanProperty beanProperty) {
        return this.f15471b == beanProperty ? this : new e(this.f15470a, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public JsonTypeInfo.As e() {
        return JsonTypeInfo.As.WRAPPER_OBJECT;
    }
}
