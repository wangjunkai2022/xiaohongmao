package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.BeanProperty;

/* compiled from: AsPropertyTypeSerializer.java */
/* loaded from: classes.dex */
public class d extends a {

    /* renamed from: c  reason: collision with root package name */
    protected final String f15446c;

    public d(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty, String str) {
        super(cVar, beanProperty);
        this.f15446c = str;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.a, com.fasterxml.jackson.databind.jsontype.f
    /* renamed from: E */
    public d b(BeanProperty beanProperty) {
        return this.f15471b == beanProperty ? this : new d(this.f15470a, beanProperty, this.f15446c);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public String c() {
        return this.f15446c;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.a, com.fasterxml.jackson.databind.jsontype.impl.l, com.fasterxml.jackson.databind.jsontype.f
    public JsonTypeInfo.As e() {
        return JsonTypeInfo.As.PROPERTY;
    }
}
