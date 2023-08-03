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
import com.fasterxml.jackson.databind.util.o;
import java.io.IOException;
import java.util.Objects;

@c2.a
/* loaded from: classes.dex */
public final class StringArrayDeserializer extends StdDeserializer<String[]> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: j  reason: collision with root package name */
    private static final long f15033j = 2;

    /* renamed from: f  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<String> f15035f;

    /* renamed from: g  reason: collision with root package name */
    protected final l f15036g;

    /* renamed from: h  reason: collision with root package name */
    protected final Boolean f15037h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f15038i;

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f15034k = new String[0];
    public static final StringArrayDeserializer instance = new StringArrayDeserializer();

    public StringArrayDeserializer() {
        this(null, null, null);
    }

    private final String[] D0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String i02;
        Boolean bool = this.f15037h;
        if (bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            if (jsonParser.k1(JsonToken.VALUE_NULL)) {
                i02 = (String) this.f15036g.getNullValue(deserializationContext);
            } else {
                i02 = i0(jsonParser, deserializationContext);
            }
            return new String[]{i02};
        } else if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return t(jsonParser, deserializationContext);
        } else {
            return (String[]) deserializationContext.handleUnexpectedToken(this.f14988a, jsonParser);
        }
    }

    protected final String[] C0(JsonParser jsonParser, DeserializationContext deserializationContext, String[] strArr) throws IOException {
        int length;
        Object[] j4;
        String deserialize;
        int i4;
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        if (strArr == null) {
            j4 = leaseObjectBuffer.i();
            length = 0;
        } else {
            length = strArr.length;
            j4 = leaseObjectBuffer.j(strArr, length);
        }
        com.fasterxml.jackson.databind.d<String> dVar = this.f15035f;
        while (true) {
            try {
                try {
                    if (jsonParser.x1() == null) {
                        JsonToken W = jsonParser.W();
                        if (W == JsonToken.END_ARRAY) {
                            String[] strArr2 = (String[]) leaseObjectBuffer.g(j4, length, String.class);
                            deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                            return strArr2;
                        } else if (W == JsonToken.VALUE_NULL) {
                            if (!this.f15038i) {
                                deserialize = (String) this.f15036g.getNullValue(deserializationContext);
                            }
                        } else {
                            deserialize = dVar.deserialize(jsonParser, deserializationContext);
                        }
                    } else {
                        deserialize = dVar.deserialize(jsonParser, deserializationContext);
                    }
                    j4[length] = deserialize;
                    length = i4;
                } catch (Exception e4) {
                    e = e4;
                    length = i4;
                    throw JsonMappingException.wrapWithPath(e, String.class, length);
                }
                if (length >= j4.length) {
                    j4 = leaseObjectBuffer.c(j4);
                    length = 0;
                }
                i4 = length + 1;
            } catch (Exception e10) {
                e = e10;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        com.fasterxml.jackson.databind.d<?> t02 = t0(deserializationContext, beanProperty, this.f15035f);
        JavaType constructType = deserializationContext.constructType(String.class);
        if (t02 == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(constructType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(t02, beanProperty, constructType);
        }
        Boolean v02 = v0(deserializationContext, beanProperty, String[].class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        l r02 = r0(deserializationContext, beanProperty, handleSecondaryContextualization);
        if (handleSecondaryContextualization != null && A0(handleSecondaryContextualization)) {
            handleSecondaryContextualization = null;
        }
        return (this.f15035f == handleSecondaryContextualization && Objects.equals(this.f15037h, v02) && this.f15036g == r02) ? this : new StringArrayDeserializer(handleSecondaryContextualization, r02, v02);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return f15034k;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Array;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringArrayDeserializer(com.fasterxml.jackson.databind.d<?> dVar, l lVar, Boolean bool) {
        super(String[].class);
        this.f15035f = dVar;
        this.f15036g = lVar;
        this.f15037h = bool;
        this.f15038i = NullsConstantProvider.isSkipper(lVar);
    }

    @Override // com.fasterxml.jackson.databind.d
    public String[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i4;
        if (!jsonParser.p1()) {
            return D0(jsonParser, deserializationContext);
        }
        if (this.f15035f != null) {
            return C0(jsonParser, deserializationContext, null);
        }
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] i10 = leaseObjectBuffer.i();
        int i11 = 0;
        while (true) {
            try {
                String x12 = jsonParser.x1();
                try {
                    if (x12 == null) {
                        JsonToken W = jsonParser.W();
                        if (W == JsonToken.END_ARRAY) {
                            String[] strArr = (String[]) leaseObjectBuffer.g(i10, i11, String.class);
                            deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                            return strArr;
                        } else if (W == JsonToken.VALUE_NULL) {
                            if (!this.f15038i) {
                                x12 = (String) this.f15036g.getNullValue(deserializationContext);
                            }
                        } else {
                            x12 = i0(jsonParser, deserializationContext);
                        }
                    }
                    i10[i11] = x12;
                    i11 = i4;
                } catch (Exception e4) {
                    e = e4;
                    i11 = i4;
                    throw JsonMappingException.wrapWithPath(e, i10, leaseObjectBuffer.d() + i11);
                }
                if (i11 >= i10.length) {
                    i10 = leaseObjectBuffer.c(i10);
                    i11 = 0;
                }
                i4 = i11 + 1;
            } catch (Exception e10) {
                e = e10;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public String[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, String[] strArr) throws IOException {
        if (!jsonParser.p1()) {
            String[] D0 = D0(jsonParser, deserializationContext);
            if (D0 == null) {
                return strArr;
            }
            int length = strArr.length;
            String[] strArr2 = new String[D0.length + length];
            System.arraycopy(strArr, 0, strArr2, 0, length);
            System.arraycopy(D0, 0, strArr2, length, D0.length);
            return strArr2;
        } else if (this.f15035f != null) {
            return C0(jsonParser, deserializationContext, strArr);
        } else {
            o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            int length2 = strArr.length;
            Object[] j4 = leaseObjectBuffer.j(strArr, length2);
            while (true) {
                try {
                    String x12 = jsonParser.x1();
                    if (x12 == null) {
                        JsonToken W = jsonParser.W();
                        if (W == JsonToken.END_ARRAY) {
                            String[] strArr3 = (String[]) leaseObjectBuffer.g(j4, length2, String.class);
                            deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                            return strArr3;
                        } else if (W == JsonToken.VALUE_NULL) {
                            if (this.f15038i) {
                                return f15034k;
                            }
                            x12 = (String) this.f15036g.getNullValue(deserializationContext);
                        } else {
                            x12 = i0(jsonParser, deserializationContext);
                        }
                    }
                    if (length2 >= j4.length) {
                        j4 = leaseObjectBuffer.c(j4);
                        length2 = 0;
                    }
                    int i4 = length2 + 1;
                    try {
                        j4[length2] = x12;
                        length2 = i4;
                    } catch (Exception e4) {
                        e = e4;
                        length2 = i4;
                        throw JsonMappingException.wrapWithPath(e, j4, leaseObjectBuffer.d() + length2);
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            }
        }
    }
}
