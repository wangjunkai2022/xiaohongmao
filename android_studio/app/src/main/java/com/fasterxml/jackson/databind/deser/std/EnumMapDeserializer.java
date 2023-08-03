package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.g;
import com.fasterxml.jackson.databind.deser.impl.i;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.EnumMap;

/* loaded from: classes.dex */
public class EnumMapDeserializer extends ContainerDeserializerBase<EnumMap<?, ?>> implements com.fasterxml.jackson.databind.deser.c, m {

    /* renamed from: q  reason: collision with root package name */
    private static final long f14879q = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final Class<?> f14880j;

    /* renamed from: k  reason: collision with root package name */
    protected h f14881k;

    /* renamed from: l  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14882l;

    /* renamed from: m  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14883m;

    /* renamed from: n  reason: collision with root package name */
    protected final ValueInstantiator f14884n;

    /* renamed from: o  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14885o;

    /* renamed from: p  reason: collision with root package name */
    protected g f14886p;

    public EnumMapDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, h hVar, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar) {
        super(javaType, lVar, (Boolean) null);
        this.f14880j = javaType.getKeyType().getRawClass();
        this.f14881k = hVar;
        this.f14882l = dVar;
        this.f14883m = bVar;
        this.f14884n = valueInstantiator;
    }

    protected EnumMap<?, ?> E0(DeserializationContext deserializationContext) throws JsonMappingException {
        ValueInstantiator valueInstantiator = this.f14884n;
        if (valueInstantiator == null) {
            return new EnumMap<>(this.f14880j);
        }
        try {
            if (!valueInstantiator.canCreateUsingDefault()) {
                return (EnumMap) deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), null, "no default constructor found", new Object[0]);
            }
            return (EnumMap) this.f14884n.createUsingDefault(deserializationContext);
        } catch (IOException e4) {
            return (EnumMap) com.fasterxml.jackson.databind.util.g.s0(deserializationContext, e4);
        }
    }

    public EnumMap<?, ?> _deserializeUsingProperties(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String M;
        Object deserializeWithType;
        g gVar = this.f14886p;
        i h4 = gVar.h(jsonParser, deserializationContext, null);
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            M = jsonParser.k1(JsonToken.FIELD_NAME) ? jsonParser.M() : null;
        }
        while (M != null) {
            JsonToken y12 = jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (f10 != null) {
                if (h4.b(f10, f10.deserialize(jsonParser, deserializationContext))) {
                    jsonParser.y1();
                    try {
                        return deserialize(jsonParser, deserializationContext, (EnumMap) gVar.a(deserializationContext, h4));
                    } catch (Exception e4) {
                        return (EnumMap) C0(deserializationContext, e4, this.f14860f.getRawClass(), M);
                    }
                }
            } else {
                Enum r52 = (Enum) this.f14881k.deserializeKey(M, deserializationContext);
                if (r52 == null) {
                    if (!deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                        return (EnumMap) deserializationContext.handleWeirdStringValue(this.f14880j, M, "value not one of declared Enum instance names for %s", this.f14860f.getKeyType());
                    }
                    jsonParser.y1();
                    jsonParser.U1();
                } else {
                    try {
                        if (y12 == JsonToken.VALUE_NULL) {
                            if (!this.f14862h) {
                                deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                            }
                        } else {
                            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14883m;
                            if (bVar == null) {
                                deserializeWithType = this.f14882l.deserialize(jsonParser, deserializationContext);
                            } else {
                                deserializeWithType = this.f14882l.deserializeWithType(jsonParser, deserializationContext, bVar);
                            }
                        }
                        h4.d(r52, deserializeWithType);
                    } catch (Exception e10) {
                        C0(deserializationContext, e10, this.f14860f.getRawClass(), M);
                        return null;
                    }
                }
            }
            M = jsonParser.t1();
        }
        try {
            return (EnumMap) gVar.a(deserializationContext, h4);
        } catch (Exception e11) {
            C0(deserializationContext, e11, this.f14860f.getRawClass(), M);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        h hVar = this.f14881k;
        if (hVar == null) {
            hVar = deserializationContext.findKeyDeserializer(this.f14860f.getKeyType(), beanProperty);
        }
        com.fasterxml.jackson.databind.d<?> dVar = this.f14882l;
        JavaType contentType = this.f14860f.getContentType();
        if (dVar == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(contentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, beanProperty, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14883m;
        if (bVar != null) {
            bVar = bVar.forProperty(beanProperty);
        }
        return withResolved(hVar, handleSecondaryContextualization, bVar, r0(deserializationContext, beanProperty, handleSecondaryContextualization));
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f14882l;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase, com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return E0(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f14884n;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14882l == null && this.f14881k == null && this.f14883m == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Map;
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        ValueInstantiator valueInstantiator = this.f14884n;
        if (valueInstantiator != null) {
            if (valueInstantiator.canCreateUsingDelegate()) {
                JavaType delegateType = this.f14884n.getDelegateType(deserializationContext.getConfig());
                if (delegateType == null) {
                    JavaType javaType = this.f14860f;
                    deserializationContext.reportBadDefinition(javaType, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", javaType, this.f14884n.getClass().getName()));
                }
                this.f14885o = u0(deserializationContext, delegateType, null);
            } else if (this.f14884n.canCreateUsingArrayDelegate()) {
                JavaType arrayDelegateType = this.f14884n.getArrayDelegateType(deserializationContext.getConfig());
                if (arrayDelegateType == null) {
                    JavaType javaType2 = this.f14860f;
                    deserializationContext.reportBadDefinition(javaType2, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", javaType2, this.f14884n.getClass().getName()));
                }
                this.f14885o = u0(deserializationContext, arrayDelegateType, null);
            } else if (this.f14884n.canCreateFromObjectWith()) {
                this.f14886p = g.d(deserializationContext, this.f14884n, this.f14884n.getFromObjectArguments(deserializationContext.getConfig()), deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
            }
        }
    }

    public EnumMapDeserializer withResolved(h hVar, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar) {
        return (hVar == this.f14881k && lVar == this.f14861g && dVar == this.f14882l && bVar == this.f14883m) ? this : new EnumMapDeserializer(this, hVar, dVar, bVar, lVar);
    }

    @Override // com.fasterxml.jackson.databind.d
    public EnumMap<?, ?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14886p != null) {
            return _deserializeUsingProperties(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14885o;
        if (dVar != null) {
            return (EnumMap) this.f14884n.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        int X = jsonParser.X();
        if (X != 1 && X != 2) {
            if (X == 3) {
                return q(jsonParser, deserializationContext);
            }
            if (X != 5) {
                if (X != 6) {
                    return (EnumMap) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
                }
                return t(jsonParser, deserializationContext);
            }
        }
        return deserialize(jsonParser, deserializationContext, (EnumMap) E0(deserializationContext));
    }

    protected EnumMapDeserializer(EnumMapDeserializer enumMapDeserializer, h hVar, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar) {
        super(enumMapDeserializer, lVar, enumMapDeserializer.f14863i);
        this.f14880j = enumMapDeserializer.f14880j;
        this.f14881k = hVar;
        this.f14882l = dVar;
        this.f14883m = bVar;
        this.f14884n = enumMapDeserializer.f14884n;
        this.f14885o = enumMapDeserializer.f14885o;
        this.f14886p = enumMapDeserializer.f14886p;
    }

    @Override // com.fasterxml.jackson.databind.d
    public EnumMap<?, ?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, EnumMap enumMap) throws IOException {
        String M;
        Object deserializeWithType;
        jsonParser.O1(enumMap);
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14882l;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14883m;
        if (jsonParser.q1()) {
            M = jsonParser.t1();
        } else {
            JsonToken W = jsonParser.W();
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (W != jsonToken) {
                if (W == JsonToken.END_OBJECT) {
                    return enumMap;
                }
                deserializationContext.reportWrongTokenException(this, jsonToken, (String) null, new Object[0]);
            }
            M = jsonParser.M();
        }
        while (M != null) {
            Enum r42 = (Enum) this.f14881k.deserializeKey(M, deserializationContext);
            JsonToken y12 = jsonParser.y1();
            if (r42 == null) {
                if (!deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    return (EnumMap) deserializationContext.handleWeirdStringValue(this.f14880j, M, "value not one of declared Enum instance names for %s", this.f14860f.getKeyType());
                }
                jsonParser.U1();
            } else {
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                        }
                    } else if (bVar == null) {
                        deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                    } else {
                        deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                    }
                    enumMap.put((EnumMap) r42, (Enum) deserializeWithType);
                } catch (Exception e4) {
                    return (EnumMap) C0(deserializationContext, e4, enumMap, M);
                }
            }
            M = jsonParser.t1();
        }
        return enumMap;
    }

    @Deprecated
    public EnumMapDeserializer(JavaType javaType, h hVar, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        this(javaType, null, hVar, dVar, bVar, null);
    }
}
