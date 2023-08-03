package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AsArrayTypeDeserializer extends TypeDeserializerBase implements Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f15423j = 1;

    public AsArrayTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2) {
        super(javaType, cVar, str, z9, javaType2);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return i(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return i(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return i(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return i(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public com.fasterxml.jackson.databind.jsontype.b forProperty(BeanProperty beanProperty) {
        return beanProperty == this.f15439c ? this : new AsArrayTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.WRAPPER_ARRAY;
    }

    protected Object i(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object X0;
        if (jsonParser.H() && (X0 = jsonParser.X0()) != null) {
            return b(jsonParser, deserializationContext, X0);
        }
        boolean p12 = jsonParser.p1();
        String j4 = j(jsonParser, deserializationContext);
        com.fasterxml.jackson.databind.d<Object> d4 = d(deserializationContext, j4);
        if (this.f15442f && !k() && jsonParser.k1(JsonToken.START_OBJECT)) {
            t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
            bufferForInputBuffering.K1();
            bufferForInputBuffering.V0(this.f15441e);
            bufferForInputBuffering.P1(j4);
            jsonParser.J();
            jsonParser = com.fasterxml.jackson.core.util.i.Z1(false, bufferForInputBuffering.j2(jsonParser), jsonParser);
            jsonParser.y1();
        }
        if (p12 && jsonParser.W() == JsonToken.END_ARRAY) {
            return d4.getNullValue(deserializationContext);
        }
        Object deserialize = d4.deserialize(jsonParser, deserializationContext);
        if (p12) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (y12 != jsonToken) {
                deserializationContext.reportWrongTokenException(baseType(), jsonToken, "expected closing END_ARRAY after type information and deserialized value", new Object[0]);
            }
        }
        return deserialize;
    }

    protected String j(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.p1()) {
            if (this.f15440d != null) {
                return this.f15437a.f();
            }
            JavaType baseType = baseType();
            JsonToken jsonToken = JsonToken.START_ARRAY;
            deserializationContext.reportWrongTokenException(baseType, jsonToken, "need JSON Array to contain As.WRAPPER_ARRAY type information for class " + baseTypeName(), new Object[0]);
            return null;
        }
        JsonToken y12 = jsonParser.y1();
        JsonToken jsonToken2 = JsonToken.VALUE_STRING;
        if (y12 == jsonToken2) {
            String S0 = jsonParser.S0();
            jsonParser.y1();
            return S0;
        }
        deserializationContext.reportWrongTokenException(baseType(), jsonToken2, "need JSON String that contains type id (for subtype of %s)", baseTypeName());
        return null;
    }

    protected boolean k() {
        return false;
    }

    public AsArrayTypeDeserializer(AsArrayTypeDeserializer asArrayTypeDeserializer, BeanProperty beanProperty) {
        super(asArrayTypeDeserializer, beanProperty);
    }
}
