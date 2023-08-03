package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class AtomicLongDeserializer extends StdScalarDeserializer<AtomicLong> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14847g = 1;

    public AtomicLongDeserializer() {
        super(AtomicLong.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return new AtomicLong();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Integer;
    }

    @Override // com.fasterxml.jackson.databind.d
    public AtomicLong deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.o1()) {
            return new AtomicLong(jsonParser.H0());
        }
        Long d02 = d0(jsonParser, deserializationContext, AtomicLong.class);
        if (d02 == null) {
            return null;
        }
        return new AtomicLong(d02.intValue());
    }
}
