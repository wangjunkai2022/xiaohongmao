package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

@c2.a
/* loaded from: classes.dex */
public class MapEntryDeserializer extends ContainerDeserializerBase<Map.Entry<Object, Object>> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: m  reason: collision with root package name */
    private static final long f14920m = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final h f14921j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14922k;

    /* renamed from: l  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14923l;

    public MapEntryDeserializer(JavaType javaType, h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        super(javaType);
        if (javaType.containedTypeCount() == 2) {
            this.f14921j = hVar;
            this.f14922k = dVar;
            this.f14923l = bVar;
            return;
        }
        throw new IllegalArgumentException("Missing generic type information for " + javaType);
    }

    protected MapEntryDeserializer E0(h hVar, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return (this.f14921j == hVar && this.f14922k == dVar && this.f14923l == bVar) ? this : new MapEntryDeserializer(this, hVar, dVar, bVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        h hVar = this.f14921j;
        if (hVar == null) {
            hVar = deserializationContext.findKeyDeserializer(this.f14860f.containedType(0), beanProperty);
        } else if (hVar instanceof com.fasterxml.jackson.databind.deser.d) {
            hVar = ((com.fasterxml.jackson.databind.deser.d) hVar).createContextual(deserializationContext, beanProperty);
        }
        com.fasterxml.jackson.databind.d<?> t02 = t0(deserializationContext, beanProperty, this.f14922k);
        JavaType containedType = this.f14860f.containedType(1);
        if (t02 == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(containedType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(t02, beanProperty, containedType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14923l;
        if (bVar != null) {
            bVar = bVar.forProperty(beanProperty);
        }
        return E0(hVar, bVar, handleSecondaryContextualization);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f14922k;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this.f14860f.containedType(1);
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Map;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Map.Entry<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object obj;
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_OBJECT) {
            W = jsonParser.y1();
        } else if (W != JsonToken.FIELD_NAME && W != JsonToken.END_OBJECT) {
            if (W == JsonToken.START_ARRAY) {
                return q(jsonParser, deserializationContext);
            }
            return (Map.Entry) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
        }
        if (W != JsonToken.FIELD_NAME) {
            if (W == JsonToken.END_OBJECT) {
                return (Map.Entry) deserializationContext.reportInputMismatch(this, "Cannot deserialize a Map.Entry out of empty JSON Object", new Object[0]);
            }
            return (Map.Entry) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        }
        h hVar = this.f14921j;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14922k;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14923l;
        String M = jsonParser.M();
        Object deserializeKey = hVar.deserializeKey(M, deserializationContext);
        try {
            if (jsonParser.y1() == JsonToken.VALUE_NULL) {
                obj = dVar.getNullValue(deserializationContext);
            } else if (bVar == null) {
                obj = dVar.deserialize(jsonParser, deserializationContext);
            } else {
                obj = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        } catch (Exception e4) {
            C0(deserializationContext, e4, Map.Entry.class, M);
            obj = null;
        }
        JsonToken y12 = jsonParser.y1();
        if (y12 != JsonToken.END_OBJECT) {
            if (y12 == JsonToken.FIELD_NAME) {
                deserializationContext.reportInputMismatch(this, "Problem binding JSON into Map.Entry: more than one entry in JSON (second field: '%s')", jsonParser.M());
            } else {
                deserializationContext.reportInputMismatch(this, "Problem binding JSON into Map.Entry: unexpected content after JSON Object entry: " + y12, new Object[0]);
            }
            return null;
        }
        return new AbstractMap.SimpleEntry(deserializeKey, obj);
    }

    protected MapEntryDeserializer(MapEntryDeserializer mapEntryDeserializer) {
        super(mapEntryDeserializer);
        this.f14921j = mapEntryDeserializer.f14921j;
        this.f14922k = mapEntryDeserializer.f14922k;
        this.f14923l = mapEntryDeserializer.f14923l;
    }

    protected MapEntryDeserializer(MapEntryDeserializer mapEntryDeserializer, h hVar, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        super(mapEntryDeserializer);
        this.f14921j = hVar;
        this.f14922k = dVar;
        this.f14923l = bVar;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Map.Entry<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Map.Entry<Object, Object> entry) throws IOException {
        throw new IllegalStateException("Cannot update Map.Entry values");
    }
}
