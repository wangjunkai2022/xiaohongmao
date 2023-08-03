package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonpCharacterEscapes;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import java.io.IOException;

/* compiled from: JSONPObject.java */
/* loaded from: classes2.dex */
public class j implements com.fasterxml.jackson.databind.f {

    /* renamed from: a  reason: collision with root package name */
    protected final String f16024a;

    /* renamed from: b  reason: collision with root package name */
    protected final Object f16025b;

    /* renamed from: c  reason: collision with root package name */
    protected final JavaType f16026c;

    public j(String str, Object obj) {
        this(str, obj, null);
    }

    public String a() {
        return this.f16024a;
    }

    public JavaType b() {
        return this.f16026c;
    }

    public Object c() {
        return this.f16025b;
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serialize(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar) throws IOException {
        jsonGenerator.y1(this.f16024a);
        jsonGenerator.w1('(');
        if (this.f16025b == null) {
            lVar.defaultSerializeNull(jsonGenerator);
        } else {
            boolean z9 = jsonGenerator.L() == null;
            if (z9) {
                jsonGenerator.u0(JsonpCharacterEscapes.instance());
            }
            try {
                JavaType javaType = this.f16026c;
                if (javaType != null) {
                    lVar.findTypedValueSerializer(javaType, true, (BeanProperty) null).serialize(this.f16025b, jsonGenerator, lVar);
                } else {
                    lVar.findTypedValueSerializer(this.f16025b.getClass(), true, (BeanProperty) null).serialize(this.f16025b, jsonGenerator, lVar);
                }
            } finally {
                if (z9) {
                    jsonGenerator.u0(null);
                }
            }
        }
        jsonGenerator.w1(')');
    }

    @Override // com.fasterxml.jackson.databind.f
    public void serializeWithType(JsonGenerator jsonGenerator, com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        serialize(jsonGenerator, lVar);
    }

    public j(String str, Object obj, JavaType javaType) {
        this.f16024a = str;
        this.f16025b = obj;
        this.f16026c = javaType;
    }
}
