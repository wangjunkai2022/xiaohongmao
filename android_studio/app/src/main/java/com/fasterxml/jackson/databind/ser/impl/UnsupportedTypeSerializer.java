package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;

/* loaded from: classes.dex */
public class UnsupportedTypeSerializer extends StdSerializer<Object> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f15678f = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15679d;

    /* renamed from: e  reason: collision with root package name */
    protected final String f15680e;

    public UnsupportedTypeSerializer(JavaType javaType, String str) {
        super(Object.class);
        this.f15679d = javaType;
        this.f15680e = str;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        lVar.reportBadDefinition(this.f15679d, this.f15680e);
    }
}
