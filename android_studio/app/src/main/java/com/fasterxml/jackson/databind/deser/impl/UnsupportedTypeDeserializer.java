package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import java.io.IOException;

/* loaded from: classes.dex */
public class UnsupportedTypeDeserializer extends StdDeserializer<Object> {

    /* renamed from: h  reason: collision with root package name */
    private static final long f14743h = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14744f;

    /* renamed from: g  reason: collision with root package name */
    protected final String f14745g;

    public UnsupportedTypeDeserializer(JavaType javaType, String str) {
        super(javaType);
        this.f14744f = javaType;
        this.f14745g = str;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object A0;
        if (jsonParser.W() == JsonToken.VALUE_EMBEDDED_OBJECT && ((A0 = jsonParser.A0()) == null || this.f14744f.getRawClass().isAssignableFrom(A0.getClass()))) {
            return A0;
        }
        deserializationContext.reportBadDefinition(this.f14744f, this.f14745g);
        return null;
    }
}
