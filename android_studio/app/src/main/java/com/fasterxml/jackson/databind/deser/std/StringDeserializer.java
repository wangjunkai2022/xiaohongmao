package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;

@c2.a
/* loaded from: classes.dex */
public class StringDeserializer extends StdScalarDeserializer<String> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15043g = 1;
    public static final StringDeserializer instance = new StringDeserializer();

    public StringDeserializer() {
        super(String.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Textual;
    }

    @Override // com.fasterxml.jackson.databind.d
    public String deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String g12;
        if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return jsonParser.S0();
        }
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_ARRAY) {
            return q(jsonParser, deserializationContext);
        }
        if (W == JsonToken.VALUE_EMBEDDED_OBJECT) {
            Object A0 = jsonParser.A0();
            if (A0 == null) {
                return null;
            }
            if (A0 instanceof byte[]) {
                return deserializationContext.getBase64Variant().encode((byte[]) A0, false);
            }
            return A0.toString();
        } else if (W == JsonToken.START_OBJECT) {
            return deserializationContext.extractScalarFromObject(jsonParser, this, this.f14988a);
        } else {
            return (!W.isScalarValue() || (g12 = jsonParser.g1()) == null) ? (String) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser) : g12;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public String deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return deserialize(jsonParser, deserializationContext);
    }
}
