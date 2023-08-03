package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.o;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Objects;

@c2.a
/* loaded from: classes.dex */
public class ObjectArrayDeserializer extends ContainerDeserializerBase<Object[]> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: o  reason: collision with root package name */
    private static final long f14956o = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final boolean f14957j;

    /* renamed from: k  reason: collision with root package name */
    protected final Class<?> f14958k;

    /* renamed from: l  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14959l;

    /* renamed from: m  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14960m;

    /* renamed from: n  reason: collision with root package name */
    protected final Object[] f14961n;

    public ObjectArrayDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar) {
        super(javaType, (l) null, (Boolean) null);
        ArrayType arrayType = (ArrayType) javaType;
        Class<?> rawClass = arrayType.getContentType().getRawClass();
        this.f14958k = rawClass;
        this.f14957j = rawClass == Object.class;
        this.f14959l = dVar;
        this.f14960m = bVar;
        this.f14961n = arrayType.getEmptyArray();
    }

    protected Byte[] E0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        byte[] p02 = jsonParser.p0(deserializationContext.getBase64Variant());
        Byte[] bArr = new Byte[p02.length];
        int length = p02.length;
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = Byte.valueOf(p02[i4]);
        }
        return bArr;
    }

    protected Object[] F0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object deserializeWithType;
        Boolean bool = this.f14863i;
        if (!(bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            if (jsonParser.k1(JsonToken.VALUE_STRING)) {
                if (this.f14958k == Byte.class) {
                    return E0(jsonParser, deserializationContext);
                }
                return t(jsonParser, deserializationContext);
            }
            return (Object[]) deserializationContext.handleUnexpectedToken(this.f14860f, jsonParser);
        }
        if (jsonParser.k1(JsonToken.VALUE_NULL)) {
            if (this.f14862h) {
                return this.f14961n;
            }
            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
        } else {
            com.fasterxml.jackson.databind.jsontype.b bVar = this.f14960m;
            if (bVar == null) {
                deserializeWithType = this.f14959l.deserialize(jsonParser, deserializationContext);
            } else {
                deserializeWithType = this.f14959l.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
        }
        Object[] objArr = this.f14957j ? new Object[1] : (Object[]) Array.newInstance(this.f14958k, 1);
        objArr[0] = deserializeWithType;
        return objArr;
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        com.fasterxml.jackson.databind.d<?> dVar = this.f14959l;
        Boolean v02 = v0(deserializationContext, beanProperty, this.f14860f.getRawClass(), JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        com.fasterxml.jackson.databind.d<?> t02 = t0(deserializationContext, beanProperty, dVar);
        JavaType contentType = this.f14860f.getContentType();
        if (t02 == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(contentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(t02, beanProperty, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14960m;
        if (bVar != null) {
            bVar = bVar.forProperty(beanProperty);
        }
        return withResolved(bVar, handleSecondaryContextualization, r0(deserializationContext, beanProperty, handleSecondaryContextualization), v02);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f14959l;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase, com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.CONSTANT;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase, com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this.f14961n;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14959l == null && this.f14960m == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Array;
    }

    public ObjectArrayDeserializer withDeserializer(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return withResolved(bVar, dVar, this.f14861g, this.f14863i);
    }

    public ObjectArrayDeserializer withResolved(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar, l lVar, Boolean bool) {
        return (Objects.equals(bool, this.f14863i) && lVar == this.f14861g && dVar == this.f14959l && bVar == this.f14960m) ? this : new ObjectArrayDeserializer(this, dVar, bVar, lVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object[] deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return (Object[]) bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object[] g4;
        Object deserializeWithType;
        int i4;
        if (!jsonParser.p1()) {
            return F0(jsonParser, deserializationContext);
        }
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] i10 = leaseObjectBuffer.i();
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14960m;
        int i11 = 0;
        while (true) {
            try {
                JsonToken y12 = jsonParser.y1();
                if (y12 == JsonToken.END_ARRAY) {
                    break;
                }
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                        }
                    } else if (bVar == null) {
                        deserializeWithType = this.f14959l.deserialize(jsonParser, deserializationContext);
                    } else {
                        deserializeWithType = this.f14959l.deserializeWithType(jsonParser, deserializationContext, bVar);
                    }
                    i10[i11] = deserializeWithType;
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
        if (this.f14957j) {
            g4 = leaseObjectBuffer.f(i10, i11);
        } else {
            g4 = leaseObjectBuffer.g(i10, i11, this.f14958k);
        }
        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
        return g4;
    }

    protected ObjectArrayDeserializer(ObjectArrayDeserializer objectArrayDeserializer, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar, Boolean bool) {
        super(objectArrayDeserializer, lVar, bool);
        this.f14958k = objectArrayDeserializer.f14958k;
        this.f14957j = objectArrayDeserializer.f14957j;
        this.f14961n = objectArrayDeserializer.f14961n;
        this.f14959l = dVar;
        this.f14960m = bVar;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        Object[] g4;
        Object deserializeWithType;
        int i4;
        if (!jsonParser.p1()) {
            Object[] F0 = F0(jsonParser, deserializationContext);
            if (F0 == null) {
                return objArr;
            }
            int length = objArr.length;
            Object[] objArr2 = new Object[F0.length + length];
            System.arraycopy(objArr, 0, objArr2, 0, length);
            System.arraycopy(F0, 0, objArr2, length, F0.length);
            return objArr2;
        }
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        int length2 = objArr.length;
        Object[] j4 = leaseObjectBuffer.j(objArr, length2);
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14960m;
        while (true) {
            try {
                JsonToken y12 = jsonParser.y1();
                if (y12 == JsonToken.END_ARRAY) {
                    break;
                }
                try {
                    if (y12 == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                        }
                    } else if (bVar == null) {
                        deserializeWithType = this.f14959l.deserialize(jsonParser, deserializationContext);
                    } else {
                        deserializeWithType = this.f14959l.deserializeWithType(jsonParser, deserializationContext, bVar);
                    }
                    j4[length2] = deserializeWithType;
                    length2 = i4;
                } catch (Exception e4) {
                    e = e4;
                    length2 = i4;
                    throw JsonMappingException.wrapWithPath(e, j4, leaseObjectBuffer.d() + length2);
                }
                if (length2 >= j4.length) {
                    j4 = leaseObjectBuffer.c(j4);
                    length2 = 0;
                }
                i4 = length2 + 1;
            } catch (Exception e10) {
                e = e10;
            }
        }
        if (this.f14957j) {
            g4 = leaseObjectBuffer.f(j4, length2);
        } else {
            g4 = leaseObjectBuffer.g(j4, length2, this.f14958k);
        }
        deserializationContext.returnObjectBuffer(leaseObjectBuffer);
        return g4;
    }
}
