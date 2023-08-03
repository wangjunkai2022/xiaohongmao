package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.f;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferDeserializer extends StdScalarDeserializer<ByteBuffer> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14849g = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBufferDeserializer() {
        super(ByteBuffer.class);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Binary;
    }

    @Override // com.fasterxml.jackson.databind.d
    public ByteBuffer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return ByteBuffer.wrap(jsonParser.o0());
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public ByteBuffer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, ByteBuffer byteBuffer) throws IOException {
        f fVar = new f(byteBuffer);
        jsonParser.D1(deserializationContext.getBase64Variant(), fVar);
        fVar.close();
        return byteBuffer;
    }
}
