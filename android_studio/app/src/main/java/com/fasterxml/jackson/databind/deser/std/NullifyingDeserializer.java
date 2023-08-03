package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import java.io.IOException;

/* loaded from: classes.dex */
public class NullifyingDeserializer extends StdDeserializer<Object> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f14924f = 1;
    public static final NullifyingDeserializer instance = new NullifyingDeserializer();

    public NullifyingDeserializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.k1(JsonToken.FIELD_NAME)) {
            jsonParser.U1();
            return null;
        }
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == null || y12 == JsonToken.END_OBJECT) {
                return null;
            }
            jsonParser.U1();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        int X = jsonParser.X();
        if (X == 1 || X == 3 || X == 5) {
            return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.FALSE;
    }
}
