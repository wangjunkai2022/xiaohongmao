package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.g;
import com.fasterxml.jackson.databind.deser.impl.i;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;

/* compiled from: FactoryBasedEnumDeserializer.java */
/* loaded from: classes.dex */
class b extends StdDeserializer<Object> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: m  reason: collision with root package name */
    private static final long f15063m = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f15064f;

    /* renamed from: g  reason: collision with root package name */
    protected final AnnotatedMethod f15065g;

    /* renamed from: h  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<?> f15066h;

    /* renamed from: i  reason: collision with root package name */
    protected final ValueInstantiator f15067i;

    /* renamed from: j  reason: collision with root package name */
    protected final SettableBeanProperty[] f15068j;

    /* renamed from: k  reason: collision with root package name */
    protected final boolean f15069k;

    /* renamed from: l  reason: collision with root package name */
    private transient g f15070l;

    public b(Class<?> cls, AnnotatedMethod annotatedMethod, JavaType javaType, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        super(cls);
        this.f15065g = annotatedMethod;
        this.f15069k = true;
        this.f15064f = (javaType.hasRawClass(String.class) || javaType.hasRawClass(CharSequence.class)) ? null : javaType;
        this.f15066h = null;
        this.f15067i = valueInstantiator;
        this.f15068j = settableBeanPropertyArr;
    }

    private Throwable E0(Throwable th, DeserializationContext deserializationContext) throws IOException {
        Throwable O = com.fasterxml.jackson.databind.util.g.O(th);
        com.fasterxml.jackson.databind.util.g.t0(O);
        boolean z9 = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (O instanceof IOException) {
            if (!z9 || !(O instanceof JacksonException)) {
                throw ((IOException) O);
            }
        } else if (!z9) {
            com.fasterxml.jackson.databind.util.g.v0(O);
        }
        return O;
    }

    protected final Object C0(JsonParser jsonParser, DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws IOException {
        try {
            return settableBeanProperty.deserialize(jsonParser, deserializationContext);
        } catch (Exception e4) {
            return F0(e4, handledType(), settableBeanProperty.getName(), deserializationContext);
        }
    }

    protected Object D0(JsonParser jsonParser, DeserializationContext deserializationContext, g gVar) throws IOException {
        i h4 = gVar.h(jsonParser, deserializationContext, null);
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (!h4.l(M) || f10 != null) {
                if (f10 != null) {
                    h4.b(f10, C0(jsonParser, deserializationContext, f10));
                } else {
                    jsonParser.U1();
                }
            }
            W = jsonParser.y1();
        }
        return gVar.a(deserializationContext, h4);
    }

    protected Object F0(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        throw JsonMappingException.wrapWithPath(E0(th, deserializationContext), obj, str);
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JavaType javaType;
        return (this.f15066h == null && (javaType = this.f15064f) != null && this.f15068j == null) ? new b(this, deserializationContext.findContextualValueDeserializer(javaType, beanProperty)) : this;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object g12;
        com.fasterxml.jackson.databind.d<?> dVar = this.f15066h;
        if (dVar != null) {
            g12 = dVar.deserialize(jsonParser, deserializationContext);
        } else if (this.f15069k) {
            if (this.f15068j != null) {
                if (!jsonParser.q1()) {
                    JavaType valueType = getValueType(deserializationContext);
                    deserializationContext.reportInputMismatch(valueType, "Input mismatch reading Enum %s: properties-based `@JsonCreator` (%s) expects JSON Object (JsonToken.START_OBJECT), got JsonToken.%s", com.fasterxml.jackson.databind.util.g.P(valueType), this.f15065g, jsonParser.W());
                }
                if (this.f15070l == null) {
                    this.f15070l = g.d(deserializationContext, this.f15067i, this.f15068j, deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
                }
                jsonParser.y1();
                return D0(jsonParser, deserializationContext, this.f15070l);
            }
            JsonToken W = jsonParser.W();
            if (W != null && !W.isScalarValue()) {
                jsonParser.U1();
                g12 = "";
            } else {
                g12 = jsonParser.g1();
            }
        } else {
            jsonParser.U1();
            try {
                return this.f15065g.call();
            } catch (Exception e4) {
                return deserializationContext.handleInstantiationProblem(this.f14988a, null, com.fasterxml.jackson.databind.util.g.w0(e4));
            }
        }
        try {
            return this.f15065g.callOnWith(this.f14988a, g12);
        } catch (Exception e10) {
            Throwable w02 = com.fasterxml.jackson.databind.util.g.w0(e10);
            if ((w02 instanceof IllegalArgumentException) && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            return deserializationContext.handleInstantiationProblem(this.f14988a, g12, w02);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        if (this.f15066h == null) {
            return deserialize(jsonParser, deserializationContext);
        }
        return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f15067i;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Enum;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.FALSE;
    }

    public b(Class<?> cls, AnnotatedMethod annotatedMethod) {
        super(cls);
        this.f15065g = annotatedMethod;
        this.f15069k = false;
        this.f15064f = null;
        this.f15066h = null;
        this.f15067i = null;
        this.f15068j = null;
    }

    protected b(b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        super(bVar.f14988a);
        this.f15064f = bVar.f15064f;
        this.f15065g = bVar.f15065g;
        this.f15069k = bVar.f15069k;
        this.f15067i = bVar.f15067i;
        this.f15068j = bVar.f15068j;
        this.f15066h = dVar;
    }
}
