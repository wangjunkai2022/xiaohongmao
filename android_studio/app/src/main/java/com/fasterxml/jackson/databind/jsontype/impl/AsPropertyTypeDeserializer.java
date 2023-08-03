package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;

/* loaded from: classes.dex */
public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer {

    /* renamed from: m  reason: collision with root package name */
    private static final long f15429m = 1;

    /* renamed from: k  reason: collision with root package name */
    protected final JsonTypeInfo.As f15430k;

    /* renamed from: l  reason: collision with root package name */
    protected final String f15431l;

    public AsPropertyTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2) {
        this(javaType, cVar, str, z9, javaType2, JsonTypeInfo.As.PROPERTY);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.k1(JsonToken.START_ARRAY)) {
            return super.deserializeTypedFromArray(jsonParser, deserializationContext);
        }
        return deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.b
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String g12;
        Object X0;
        if (jsonParser.H() && (X0 = jsonParser.X0()) != null) {
            return b(jsonParser, deserializationContext, X0);
        }
        JsonToken W = jsonParser.W();
        t tVar = null;
        if (W == JsonToken.START_OBJECT) {
            W = jsonParser.y1();
        } else if (W != JsonToken.FIELD_NAME) {
            return n(jsonParser, deserializationContext, null, this.f15431l);
        }
        boolean isEnabled = deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            if ((M.equals(this.f15441e) || (isEnabled && M.equalsIgnoreCase(this.f15441e))) && (g12 = jsonParser.g1()) != null) {
                return l(jsonParser, deserializationContext, tVar, g12);
            }
            if (tVar == null) {
                tVar = deserializationContext.bufferForInputBuffering(jsonParser);
            }
            tVar.V0(M);
            tVar.H(jsonParser);
            W = jsonParser.y1();
        }
        return n(jsonParser, deserializationContext, tVar, this.f15431l);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public com.fasterxml.jackson.databind.jsontype.b forProperty(BeanProperty beanProperty) {
        return beanProperty == this.f15439c ? this : new AsPropertyTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.b
    public JsonTypeInfo.As getTypeInclusion() {
        return this.f15430k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object l(JsonParser jsonParser, DeserializationContext deserializationContext, t tVar, String str) throws IOException {
        com.fasterxml.jackson.databind.d<Object> d4 = d(deserializationContext, str);
        if (this.f15442f) {
            if (tVar == null) {
                tVar = deserializationContext.bufferForInputBuffering(jsonParser);
            }
            tVar.V0(jsonParser.M());
            tVar.P1(str);
        }
        if (tVar != null) {
            jsonParser.J();
            jsonParser = com.fasterxml.jackson.core.util.i.Z1(false, tVar.j2(jsonParser), jsonParser);
        }
        if (jsonParser.W() != JsonToken.END_OBJECT) {
            jsonParser.y1();
        }
        return d4.deserialize(jsonParser, deserializationContext);
    }

    @Deprecated
    protected Object m(JsonParser jsonParser, DeserializationContext deserializationContext, t tVar) throws IOException {
        return n(jsonParser, deserializationContext, tVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object n(JsonParser jsonParser, DeserializationContext deserializationContext, t tVar, String str) throws IOException {
        if (!hasDefaultImpl()) {
            Object deserializeIfNatural = com.fasterxml.jackson.databind.jsontype.b.deserializeIfNatural(jsonParser, deserializationContext, this.f15438b);
            if (deserializeIfNatural != null) {
                return deserializeIfNatural;
            }
            if (jsonParser.p1()) {
                return super.deserializeTypedFromAny(jsonParser, deserializationContext);
            }
            if (jsonParser.k1(JsonToken.VALUE_STRING) && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.S0().trim().isEmpty()) {
                return null;
            }
        }
        com.fasterxml.jackson.databind.d<Object> c10 = c(deserializationContext);
        if (c10 == null) {
            JavaType e4 = e(deserializationContext, str);
            if (e4 == null) {
                return null;
            }
            c10 = deserializationContext.findContextualValueDeserializer(e4, this.f15439c);
        }
        if (tVar != null) {
            tVar.S0();
            jsonParser = tVar.j2(jsonParser);
            jsonParser.y1();
        }
        return c10.deserialize(jsonParser, deserializationContext);
    }

    public AsPropertyTypeDeserializer(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2, JsonTypeInfo.As as) {
        super(javaType, cVar, str, z9, javaType2);
        BeanProperty beanProperty = this.f15439c;
        this.f15431l = beanProperty == null ? String.format("missing type id property '%s'", this.f15441e) : String.format("missing type id property '%s' (for POJO property '%s')", this.f15441e, beanProperty.getName());
        this.f15430k = as;
    }

    public AsPropertyTypeDeserializer(AsPropertyTypeDeserializer asPropertyTypeDeserializer, BeanProperty beanProperty) {
        super(asPropertyTypeDeserializer, beanProperty);
        BeanProperty beanProperty2 = this.f15439c;
        this.f15431l = beanProperty2 == null ? String.format("missing type id property '%s'", this.f15441e) : String.format("missing type id property '%s' (for POJO property '%s')", this.f15441e, beanProperty2.getName());
        this.f15430k = asPropertyTypeDeserializer.f15430k;
    }
}
