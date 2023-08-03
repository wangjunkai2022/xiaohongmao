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
import java.util.List;

@c2.a
/* loaded from: classes.dex */
public final class IndexedStringListSerializer extends StaticListSerializerBase<List<String>> {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15651e = 1;
    public static final IndexedStringListSerializer instance = new IndexedStringListSerializer();

    protected IndexedStringListSerializer() {
        super(List.class);
    }

    private final void x(List<String> list, JsonGenerator jsonGenerator, l lVar, int i4) throws IOException {
        for (int i10 = 0; i10 < i4; i10++) {
            try {
                String str = list.get(i10);
                if (str == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else {
                    jsonGenerator.P1(str);
                }
            } catch (Exception e4) {
                wrapAndThrow(lVar, e4, list, i10);
                return;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    public g<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new IndexedStringListSerializer(this, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected void v(com.fasterxml.jackson.databind.jsonFormatVisitors.b bVar) throws JsonMappingException {
        bVar.d(JsonFormatTypes.STRING);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    protected com.fasterxml.jackson.databind.e w() {
        return d(TypedValues.Custom.S_STRING, true);
    }

    public IndexedStringListSerializer(IndexedStringListSerializer indexedStringListSerializer, Boolean bool) {
        super(indexedStringListSerializer, bool);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(List<String> list, JsonGenerator jsonGenerator, l lVar) throws IOException {
        int size = list.size();
        if (size == 1 && ((this.f15823d == null && lVar.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this.f15823d == Boolean.TRUE)) {
            x(list, jsonGenerator, lVar, 1);
            return;
        }
        jsonGenerator.J1(list, size);
        x(list, jsonGenerator, lVar, size);
        jsonGenerator.R0();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase
    public void serializeWithType(List<String> list, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(list, JsonToken.START_ARRAY));
        jsonGenerator.w0(list);
        x(list, jsonGenerator, lVar, list.size());
        fVar.v(jsonGenerator, o9);
    }
}
