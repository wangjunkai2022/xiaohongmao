package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.impl.NullsConstantProvider;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class EnumSetDeserializer extends StdDeserializer<EnumSet<?>> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: k  reason: collision with root package name */
    private static final long f14887k = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14888f;

    /* renamed from: g  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Enum<?>> f14889g;

    /* renamed from: h  reason: collision with root package name */
    protected final l f14890h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f14891i;

    /* renamed from: j  reason: collision with root package name */
    protected final Boolean f14892j;

    /* JADX WARN: Multi-variable type inference failed */
    public EnumSetDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<?> dVar) {
        super(EnumSet.class);
        this.f14888f = javaType;
        if (javaType.isEnumType()) {
            this.f14889g = dVar;
            this.f14892j = null;
            this.f14890h = null;
            this.f14891i = false;
            return;
        }
        throw new IllegalArgumentException("Type " + javaType + " not Java Enum type");
    }

    private EnumSet D0() {
        return EnumSet.noneOf(this.f14888f.getRawClass());
    }

    protected final EnumSet<?> C0(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet enumSet) throws IOException {
        Enum<?> deserialize;
        while (true) {
            try {
                JsonToken y12 = jsonParser.y1();
                if (y12 == JsonToken.END_ARRAY) {
                    return enumSet;
                }
                if (y12 == JsonToken.VALUE_NULL) {
                    if (!this.f14891i) {
                        deserialize = (Enum) this.f14890h.getNullValue(deserializationContext);
                    }
                } else {
                    deserialize = this.f14889g.deserialize(jsonParser, deserializationContext);
                }
                if (deserialize != null) {
                    enumSet.add(deserialize);
                }
            } catch (Exception e4) {
                throw JsonMappingException.wrapWithPath(e4, enumSet, enumSet.size());
            }
        }
    }

    protected EnumSet<?> E0(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet enumSet) throws IOException {
        Boolean bool = this.f14892j;
        if (!(bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return (EnumSet) deserializationContext.handleUnexpectedToken(EnumSet.class, jsonParser);
        }
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            return (EnumSet) deserializationContext.handleUnexpectedToken(this.f14888f, jsonParser);
        }
        try {
            Enum<?> deserialize = this.f14889g.deserialize(jsonParser, deserializationContext);
            if (deserialize != null) {
                enumSet.add(deserialize);
            }
            return enumSet;
        } catch (Exception e4) {
            throw JsonMappingException.wrapWithPath(e4, enumSet, enumSet.size());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        Boolean v02 = v0(deserializationContext, beanProperty, EnumSet.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        com.fasterxml.jackson.databind.d<Enum<?>> dVar = this.f14889g;
        if (dVar == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(this.f14888f, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, beanProperty, this.f14888f);
        }
        return withResolved(handleSecondaryContextualization, r0(deserializationContext, beanProperty, handleSecondaryContextualization), v02);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return D0();
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14888f.getValueHandler() == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Collection;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    public EnumSetDeserializer withDeserializer(com.fasterxml.jackson.databind.d<?> dVar) {
        return this.f14889g == dVar ? this : new EnumSetDeserializer(this, dVar, this.f14890h, this.f14892j);
    }

    @Deprecated
    public EnumSetDeserializer withResolved(com.fasterxml.jackson.databind.d<?> dVar, Boolean bool) {
        return withResolved(dVar, this.f14890h, bool);
    }

    public EnumSetDeserializer withResolved(com.fasterxml.jackson.databind.d<?> dVar, l lVar, Boolean bool) {
        return (Objects.equals(this.f14892j, bool) && this.f14889g == dVar && this.f14890h == dVar) ? this : new EnumSetDeserializer(this, dVar, lVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.d
    public EnumSet<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        EnumSet D0 = D0();
        if (!jsonParser.p1()) {
            return E0(jsonParser, deserializationContext, D0);
        }
        return C0(jsonParser, deserializationContext, D0);
    }

    @Override // com.fasterxml.jackson.databind.d
    public EnumSet<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, EnumSet<?> enumSet) throws IOException {
        if (!jsonParser.p1()) {
            return E0(jsonParser, deserializationContext, enumSet);
        }
        return C0(jsonParser, deserializationContext, enumSet);
    }

    @Deprecated
    protected EnumSetDeserializer(EnumSetDeserializer enumSetDeserializer, com.fasterxml.jackson.databind.d<?> dVar, Boolean bool) {
        this(enumSetDeserializer, dVar, enumSetDeserializer.f14890h, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected EnumSetDeserializer(EnumSetDeserializer enumSetDeserializer, com.fasterxml.jackson.databind.d<?> dVar, l lVar, Boolean bool) {
        super(enumSetDeserializer);
        this.f14888f = enumSetDeserializer.f14888f;
        this.f14889g = dVar;
        this.f14890h = lVar;
        this.f14891i = NullsConstantProvider.isSkipper(lVar);
        this.f14892j = bool;
    }
}
