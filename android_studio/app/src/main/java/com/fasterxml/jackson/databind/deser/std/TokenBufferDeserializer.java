package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;

@c2.a
/* loaded from: classes.dex */
public class TokenBufferDeserializer extends StdScalarDeserializer<t> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15044g = 1;

    public TokenBufferDeserializer() {
        super(t.class);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Untyped;
    }

    @Override // com.fasterxml.jackson.databind.d
    public t deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.bufferForInputBuffering(jsonParser).m2(jsonParser, deserializationContext);
    }
}
