package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.BeanDeserializerBase;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanAsArrayDeserializer extends BeanDeserializerBase {
    private static final long D = 1;
    protected final BeanDeserializerBase B;
    protected final SettableBeanProperty[] C;

    public BeanAsArrayDeserializer(BeanDeserializerBase beanDeserializerBase, SettableBeanProperty[] settableBeanPropertyArr) {
        super(beanDeserializerBase);
        this.B = beanDeserializerBase;
        this.C = settableBeanPropertyArr;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected final Object E0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        g gVar = this.f14599k;
        i h4 = gVar.h(jsonParser, deserializationContext, this.f14613y);
        SettableBeanProperty[] settableBeanPropertyArr = this.C;
        int length = settableBeanPropertyArr.length;
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        Object obj = null;
        int i4 = 0;
        while (jsonParser.y1() != JsonToken.END_ARRAY) {
            SettableBeanProperty settableBeanProperty = i4 < length ? settableBeanPropertyArr[i4] : null;
            if (settableBeanProperty == null) {
                jsonParser.U1();
            } else if (activeView != null && !settableBeanProperty.visibleInView(activeView)) {
                jsonParser.U1();
            } else if (obj != null) {
                try {
                    settableBeanProperty.deserializeAndSet(jsonParser, deserializationContext, obj);
                } catch (Exception e4) {
                    wrapAndThrow(e4, obj, settableBeanProperty.getName(), deserializationContext);
                }
            } else {
                String name = settableBeanProperty.getName();
                SettableBeanProperty f10 = gVar.f(name);
                if (!h4.l(name) || f10 != null) {
                    if (f10 != null) {
                        if (h4.b(f10, f10.deserialize(jsonParser, deserializationContext))) {
                            try {
                                obj = gVar.a(deserializationContext, h4);
                                jsonParser.O1(obj);
                                if (obj.getClass() != this.f14594f.getRawClass()) {
                                    JavaType javaType = this.f14594f;
                                    deserializationContext.reportBadDefinition(javaType, String.format("Cannot support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type %s, actual type %s", com.fasterxml.jackson.databind.util.g.P(javaType), com.fasterxml.jackson.databind.util.g.D(obj)));
                                }
                            } catch (Exception e10) {
                                wrapAndThrow(e10, this.f14594f.getRawClass(), name, deserializationContext);
                            }
                        }
                    } else {
                        h4.e(settableBeanProperty, settableBeanProperty.deserialize(jsonParser, deserializationContext));
                    }
                }
            }
            i4++;
        }
        if (obj == null) {
            try {
                return gVar.a(deserializationContext, h4);
            } catch (Exception e11) {
                return a1(e11, deserializationContext);
            }
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected BeanDeserializerBase P0() {
        return this;
    }

    protected Object b1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser.W(), jsonParser, "Cannot deserialize a POJO (of type %s) from non-Array representation (token: %s): type/property designed to be serialized as JSON Array", com.fasterxml.jackson.databind.util.g.P(this.f14594f), jsonParser.W());
    }

    protected Object c1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14600l) {
            return R0(jsonParser, deserializationContext);
        }
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        jsonParser.O1(createUsingDefault);
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingDefault);
        }
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        SettableBeanProperty[] settableBeanPropertyArr = this.C;
        int length = settableBeanPropertyArr.length;
        int i4 = 0;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (y12 == jsonToken) {
                return createUsingDefault;
            }
            if (i4 == length) {
                if (!this.f14607s) {
                    deserializationContext.reportWrongTokenException(this, jsonToken, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length));
                }
                do {
                    jsonParser.U1();
                } while (jsonParser.y1() != JsonToken.END_ARRAY);
                return createUsingDefault;
            }
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
            i4++;
            if (settableBeanProperty != null && (activeView == null || settableBeanProperty.visibleInView(activeView))) {
                try {
                    settableBeanProperty.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, settableBeanProperty.getName(), deserializationContext);
                }
            } else {
                jsonParser.U1();
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.p1()) {
            return b1(jsonParser, deserializationContext);
        }
        if (!this.f14601m) {
            return c1(jsonParser, deserializationContext);
        }
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        jsonParser.O1(createUsingDefault);
        SettableBeanProperty[] settableBeanPropertyArr = this.C;
        int length = settableBeanPropertyArr.length;
        int i4 = 0;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (y12 == jsonToken) {
                return createUsingDefault;
            }
            if (i4 == length) {
                if (!this.f14607s && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
                    deserializationContext.reportWrongTokenException(this, jsonToken, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length));
                }
                do {
                    jsonParser.U1();
                } while (jsonParser.y1() != JsonToken.END_ARRAY);
                return createUsingDefault;
            }
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
            if (settableBeanProperty != null) {
                try {
                    settableBeanProperty.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, settableBeanProperty.getName(), deserializationContext);
                }
            } else {
                jsonParser.U1();
            }
            i4++;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return b1(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return this.B.unwrappingDeserializer(nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        return new BeanAsArrayDeserializer(this.B.withBeanProperties(beanPropertyMap), this.C);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withByNameInclusion(Set<String> set, Set<String> set2) {
        return new BeanAsArrayDeserializer(this.B.withByNameInclusion(set, set2), this.C);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withIgnoreAllUnknown(boolean z9) {
        return new BeanAsArrayDeserializer(this.B.withIgnoreAllUnknown(z9), this.C);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BeanAsArrayDeserializer(this.B.withObjectIdReader(objectIdReader), this.C);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        jsonParser.O1(obj);
        if (!jsonParser.p1()) {
            return b1(jsonParser, deserializationContext);
        }
        if (this.f14603o != null) {
            Y0(deserializationContext, obj);
        }
        SettableBeanProperty[] settableBeanPropertyArr = this.C;
        int length = settableBeanPropertyArr.length;
        int i4 = 0;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (y12 == jsonToken) {
                return obj;
            }
            if (i4 == length) {
                if (!this.f14607s && deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
                    deserializationContext.reportWrongTokenException(this, jsonToken, "Unexpected JSON values; expected at most %d properties (in JSON Array)", Integer.valueOf(length));
                }
                do {
                    jsonParser.U1();
                } while (jsonParser.y1() != JsonToken.END_ARRAY);
                return obj;
            }
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i4];
            if (settableBeanProperty != null) {
                try {
                    settableBeanProperty.deserializeAndSet(jsonParser, deserializationContext, obj);
                } catch (Exception e4) {
                    wrapAndThrow(e4, obj, settableBeanProperty.getName(), deserializationContext);
                }
            } else {
                jsonParser.U1();
            }
            i4++;
        }
    }
}
