package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;

/* compiled from: JSONWrappedObject.java */
/* loaded from: classes2.dex */
public class k implements com.fasterxml.jackson.databind.f {

    /* renamed from: a  reason: collision with root package name */
    protected final String f16027a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f16028b;

    /* renamed from: c  reason: collision with root package name */
    protected final Object f16029c;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f16030d;

    public k(String str, String str2, Object obj) {
        this(str, str2, obj, null);
    }

    public String a() {
        return this.f16027a;
    }

    public JavaType b() {
        return this.f16030d;
    }

    public String c() {
        return this.f16028b;
    }

    public Object d() {
        return this.f16029c;
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws IOException {
        String str = this.f16027a;
        if (str != null) {
            jsonGenerator.y1(str);
        }
        Object obj = this.f16029c;
        if (obj == null) {
            lVar.defaultSerializeNull(jsonGenerator);
        } else {
            JavaType javaType = this.f16030d;
            if (javaType != null) {
                lVar.findTypedValueSerializer(javaType, true, (BeanProperty) null).serialize(this.f16029c, jsonGenerator, lVar);
            } else {
                lVar.findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null).serialize(this.f16029c, jsonGenerator, lVar);
            }
        }
        String str2 = this.f16028b;
        if (str2 != null) {
            jsonGenerator.y1(str2);
        }
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        serialize(jsonGenerator, lVar);
    }

    public k(String str, String str2, Object obj, JavaType javaType) {
        this.f16027a = str;
        this.f16028b = str2;
        this.f16029c = obj;
        this.f16030d = javaType;
    }
}
