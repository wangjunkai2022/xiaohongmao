package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class AtomicBooleanDeserializer extends StdScalarDeserializer<AtomicBoolean> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14845g = 1;

    public AtomicBooleanDeserializer() {
        super(AtomicBoolean.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return new AtomicBoolean(false);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Boolean;
    }

    @Override // com.fasterxml.jackson.databind.d
    public AtomicBoolean deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken W = jsonParser.W();
        if (W == JsonToken.VALUE_TRUE) {
            return new AtomicBoolean(true);
        }
        if (W == JsonToken.VALUE_FALSE) {
            return new AtomicBoolean(false);
        }
        Boolean M = M(jsonParser, deserializationContext, AtomicBoolean.class);
        if (M == null) {
            return null;
        }
        return new AtomicBoolean(M.booleanValue());
    }
}
