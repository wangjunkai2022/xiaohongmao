package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;

/* compiled from: TypeSerializerBase.java */
/* loaded from: classes.dex */
public abstract class l extends com.fasterxml.jackson.databind.jsontype.f {

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.c f15470a;

    /* renamed from: b  reason: collision with root package name */
    protected final BeanProperty f15471b;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(com.fasterxml.jackson.databind.jsontype.c cVar, BeanProperty beanProperty) {
        this.f15470a = cVar;
        this.f15471b = beanProperty;
    }

    protected void A(Object obj) {
    }

    protected String B(Object obj) {
        String a10 = this.f15470a.a(obj);
        if (a10 == null) {
            A(obj);
        }
        return a10;
    }

    protected String C(Object obj, Class<?> cls) {
        String e4 = this.f15470a.e(obj, cls);
        if (e4 == null) {
            A(obj);
        }
        return e4;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    public String c() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    public com.fasterxml.jackson.databind.jsontype.c d() {
        return this.f15470a;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    public abstract JsonTypeInfo.As e();

    @Override // com.fasterxml.jackson.databind.jsontype.f
    public WritableTypeId o(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
        z(writableTypeId);
        return jsonGenerator.U1(writableTypeId);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.f
    public WritableTypeId v(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
        return jsonGenerator.V1(writableTypeId);
    }

    protected void z(WritableTypeId writableTypeId) {
        String C;
        if (writableTypeId.f14224c == null) {
            Object obj = writableTypeId.f14222a;
            Class<?> cls = writableTypeId.f14223b;
            if (cls == null) {
                C = B(obj);
            } else {
                C = C(obj, cls);
            }
            writableTypeId.f14224c = C;
        }
    }
}
