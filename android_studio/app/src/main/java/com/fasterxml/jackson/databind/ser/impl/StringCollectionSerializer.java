package com.fasterxml.jackson.databind.ser.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase;
import java.io.IOException;
import java.util.Collection;

@c2.a
/* loaded from: classes.dex */
public class StringCollectionSerializer extends StaticListSerializerBase<Collection<String>> {
    public static final StringCollectionSerializer instance = new StringCollectionSerializer();

    protected StringCollectionSerializer() {
        super(Collection.class);
    }

    private final void serializeContents(Collection<String> collection, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int i4 = 0;
        try {
            for (String str : collection) {
                if (str == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonGenerator.P1(str);
                }
                i4++;
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, collection, i4);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new StringCollectionSerializer(this, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected void v(com.fasterxml.jackson.databind.jsonFormatVisitors.b bVar) throws JsonMappingException {
        bVar.d(JsonFormatTypes.STRING);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected com.fasterxml.jackson.databind.e w() {
        return d(TypedValues.Custom.S_STRING, true);
    }

    protected StringCollectionSerializer(StringCollectionSerializer stringCollectionSerializer, Boolean bool) {
        super(stringCollectionSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Collection<String> collection, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int size = collection.size();
        if (size == 1 && ((this.f15823d == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15823d == Boolean.TRUE)) {
            serializeContents(collection, jsonGenerator, lVar);
            return;
        }
        jsonGenerator.J1(collection, size);
        serializeContents(collection, jsonGenerator, lVar);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase, com.fasterxml.jackson.databind.g
    public void serializeWithType(Collection<String> collection, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(collection, JsonToken.START_ARRAY));
        jsonGenerator.w0(collection);
        serializeContents(collection, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
