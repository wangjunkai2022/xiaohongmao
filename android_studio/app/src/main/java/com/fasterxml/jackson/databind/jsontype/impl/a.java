package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;

/* compiled from: AsArrayTypeSerializer.java */
/* loaded from: classes.dex */
public class a extends l {
    public a(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty) {
        super(cVar, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    /* renamed from: D */
    public a b(BeanProperty beanProperty) {
        return this.f15471b == beanProperty ? this : new a(this.f15470a, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public JsonTypeInfo.As e() {
        return JsonTypeInfo.As.WRAPPER_ARRAY;
    }
}
