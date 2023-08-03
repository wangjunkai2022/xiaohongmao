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
public class AsWrapperTypeDeserializer extends TypeDeserializerBase implements Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f15432j = 1;

    public AsWrapperTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2) {
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
        return beanProperty == this.f15439c ? this : new AsWrapperTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.WRAPPER_OBJECT;
    }

    protected Object i(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object X0;
        if (jsonParser.H() && (X0 = jsonParser.X0()) != null) {
            return b(jsonParser, deserializationContext, X0);
        }
        JsonToken W = jsonParser.W();
        JsonToken jsonToken = JsonToken.START_OBJECT;
        if (W == jsonToken) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken2 = JsonToken.FIELD_NAME;
            if (y12 != jsonToken2) {
                JavaType baseType = baseType();
                deserializationContext.reportWrongTokenException(baseType, jsonToken2, "need JSON String that contains type id (for subtype of " + baseTypeName() + ")", new Object[0]);
            }
        } else if (W != JsonToken.FIELD_NAME) {
            JavaType baseType2 = baseType();
            deserializationContext.reportWrongTokenException(baseType2, jsonToken, "need JSON Object to contain As.WRAPPER_OBJECT type information for class " + baseTypeName(), new Object[0]);
        }
        String S0 = jsonParser.S0();
        com.fasterxml.jackson.databind.d<Object> d4 = d(deserializationContext, S0);
        jsonParser.y1();
        if (this.f15442f && jsonParser.k1(jsonToken)) {
            t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
            bufferForInputBuffering.K1();
            bufferForInputBuffering.V0(this.f15441e);
            bufferForInputBuffering.P1(S0);
            jsonParser.J();
            jsonParser = com.fasterxml.jackson.core.util.i.Z1(false, bufferForInputBuffering.j2(jsonParser), jsonParser);
            jsonParser.y1();
        }
        Object deserialize = d4.deserialize(jsonParser, deserializationContext);
        JsonToken y13 = jsonParser.y1();
        JsonToken jsonToken3 = JsonToken.END_OBJECT;
        if (y13 != jsonToken3) {
            deserializationContext.reportWrongTokenException(baseType(), jsonToken3, "expected closing END_OBJECT after type information and deserialized value", new Object[0]);
        }
        return deserialize;
    }

    protected AsWrapperTypeDeserializer(AsWrapperTypeDeserializer asWrapperTypeDeserializer, BeanProperty beanProperty) {
        super(asWrapperTypeDeserializer, beanProperty);
    }
}
