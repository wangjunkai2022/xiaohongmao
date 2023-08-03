package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.b;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;
import java.lang.reflect.Type;

@a
/* loaded from: classes2.dex */
public class ByteArraySerializer extends StdSerializer<byte[]> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15753d = 1;

    public ByteArraySerializer() {
        super(byte[].class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (o9 != null) {
            o9.d(JsonFormatTypes.INTEGER);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public e getSchema(l lVar, Type type) {
        return d("array", true).set("items", c(io.sentry.profilemeasurements.a.f83541m));
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, byte[] bArr) {
        return bArr.length == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(byte[] bArr, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.K0(lVar.getConfig().getBase64Variant(), bArr, 0, bArr.length);
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(byte[] bArr, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(bArr, JsonToken.VALUE_EMBEDDED_OBJECT));
        jsonGenerator.K0(lVar.getConfig().getBase64Variant(), bArr, 0, bArr.length);
        fVar.v(jsonGenerator, o9);
    }
}
