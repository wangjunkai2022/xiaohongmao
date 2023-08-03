package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;

/* compiled from: AsExistingPropertyTypeSerializer.java */
/* loaded from: classes.dex */
public class b extends d {
    public b(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty, String str) {
        super(cVar, beanProperty, str);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.d, com.fasterxml.jackson.databind.jsontype.impl.a, com.fasterxml.jackson.databind.jsontype.f
    /* renamed from: F */
    public b b(BeanProperty beanProperty) {
        return this.f15471b == beanProperty ? this : new b(this.f15470a, beanProperty, this.f15446c);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.d, com.fasterxml.jackson.databind.jsontype.impl.a, com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public JsonTypeInfo.As e() {
        return JsonTypeInfo.As.EXISTING_PROPERTY;
    }
}
