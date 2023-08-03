package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class AtomicIntegerDeserializer extends StdScalarDeserializer<AtomicInteger> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14846g = 1;

    public AtomicIntegerDeserializer() {
        super(AtomicInteger.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return new AtomicInteger();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Integer;
    }

    @Override // com.fasterxml.jackson.databind.d
    public AtomicInteger deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.o1()) {
            return new AtomicInteger(jsonParser.F0());
        }
        Integer b02 = b0(jsonParser, deserializationContext, AtomicInteger.class);
        if (b02 == null) {
            return null;
        }
        return new AtomicInteger(b02.intValue());
    }
}
