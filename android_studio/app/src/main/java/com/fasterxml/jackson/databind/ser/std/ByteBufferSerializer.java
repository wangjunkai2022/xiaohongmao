package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.b;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.util.e;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class ByteBufferSerializer extends StdScalarSerializer<ByteBuffer> {
    public ByteBufferSerializer() {
        super(ByteBuffer.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        b o9 = fVar.o(javaType);
        if (o9 != null) {
            o9.d(JsonFormatTypes.INTEGER);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(ByteBuffer byteBuffer, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (byteBuffer.hasArray()) {
            int position = byteBuffer.position();
            jsonGenerator.M0(byteBuffer.array(), byteBuffer.arrayOffset() + position, byteBuffer.limit() - position);
            return;
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        if (asReadOnlyBuffer.position() > 0) {
            asReadOnlyBuffer.rewind();
        }
        e eVar = new e(asReadOnlyBuffer);
        jsonGenerator.J0(eVar, asReadOnlyBuffer.remaining());
        eVar.close();
    }
}
