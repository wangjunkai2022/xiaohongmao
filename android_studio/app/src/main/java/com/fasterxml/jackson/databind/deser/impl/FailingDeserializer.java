package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import java.io.IOException;

/* loaded from: classes.dex */
public class FailingDeserializer extends StdDeserializer<Object> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14698g = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final String f14699f;

    public FailingDeserializer(String str) {
        this(Object.class, str);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportInputMismatch(this, this.f14699f, new Object[0]);
        return null;
    }

    public FailingDeserializer(Class<?> cls, String str) {
        super(cls);
        this.f14699f = str;
    }
}
