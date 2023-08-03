package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayBuilderDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class BuilderBasedDeserializer extends BeanDeserializerBase {
    private static final long D = 1;
    protected final AnnotatedMethod B;
    protected final JavaType C;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14616a;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14616a = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14616a[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14616a[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public BuilderBasedDeserializer(com.fasterxml.jackson.databind.deser.a aVar, com.fasterxml.jackson.databind.b bVar, JavaType javaType, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z9, boolean z10) {
        this(aVar, bVar, javaType, beanPropertyMap, map, set, z9, null, z10);
    }

    private final Object k1(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        while (jsonParser.W() == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                try {
                    createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                }
            } else {
                X0(jsonParser, deserializationContext, createUsingDefault, M);
            }
            jsonParser.y1();
        }
        return createUsingDefault;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected Object E0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object a12;
        com.fasterxml.jackson.databind.deser.impl.g gVar = this.f14599k;
        com.fasterxml.jackson.databind.deser.impl.i h4 = gVar.h(jsonParser, deserializationContext, this.f14613y);
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        JsonToken W = jsonParser.W();
        t tVar = null;
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (!h4.l(M) || f10 != null) {
                if (f10 != null) {
                    if (activeView != null && !f10.visibleInView(activeView)) {
                        jsonParser.U1();
                    } else if (h4.b(f10, f10.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.y1();
                        try {
                            Object a10 = gVar.a(deserializationContext, h4);
                            if (a10.getClass() != this.f14594f.getRawClass()) {
                                return V0(jsonParser, deserializationContext, a10, tVar);
                            }
                            if (tVar != null) {
                                a10 = W0(deserializationContext, a10, tVar);
                            }
                            return b1(jsonParser, deserializationContext, a10);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, this.f14594f.getRawClass(), M, deserializationContext);
                        }
                    } else {
                        continue;
                    }
                } else {
                    SettableBeanProperty find = this.f14602n.find(M);
                    if (find != null) {
                        h4.e(find, find.deserialize(jsonParser, deserializationContext));
                    } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                        U0(jsonParser, deserializationContext, handledType(), M);
                    } else {
                        SettableAnyProperty settableAnyProperty = this.f14604p;
                        if (settableAnyProperty != null) {
                            h4.c(settableAnyProperty, M, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                        } else {
                            if (tVar == null) {
                                tVar = deserializationContext.bufferForInputBuffering(jsonParser);
                            }
                            tVar.V0(M);
                            tVar.H(jsonParser);
                        }
                    }
                }
            }
            W = jsonParser.y1();
        }
        try {
            a12 = gVar.a(deserializationContext, h4);
        } catch (Exception e10) {
            a12 = a1(e10, deserializationContext);
        }
        if (tVar != null) {
            if (a12.getClass() != this.f14594f.getRawClass()) {
                return V0(null, deserializationContext, a12, tVar);
            }
            return W0(deserializationContext, a12, tVar);
        }
        return a12;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected BeanDeserializerBase P0() {
        return new BeanAsArrayBuilderDeserializer(this, this.C, this.f14602n.getPropertiesInInsertionOrder(), this.B);
    }

    protected final Object b1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Class<?> activeView;
        if (this.f14603o != null) {
            Y0(deserializationContext, obj);
        }
        if (this.f14611w != null) {
            if (jsonParser.k1(JsonToken.START_OBJECT)) {
                jsonParser.y1();
            }
            t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
            bufferForInputBuffering.K1();
            return h1(jsonParser, deserializationContext, obj, bufferForInputBuffering);
        } else if (this.f14612x != null) {
            return f1(jsonParser, deserializationContext, obj);
        } else {
            if (this.f14608t && (activeView = deserializationContext.getActiveView()) != null) {
                return i1(jsonParser, deserializationContext, obj, activeView);
            }
            JsonToken W = jsonParser.W();
            if (W == JsonToken.START_OBJECT) {
                W = jsonParser.y1();
            }
            while (W == JsonToken.FIELD_NAME) {
                String M = jsonParser.M();
                jsonParser.y1();
                SettableBeanProperty find = this.f14602n.find(M);
                if (find != null) {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                } else {
                    X0(jsonParser, deserializationContext, obj, M);
                }
                W = jsonParser.y1();
            }
            return obj;
        }
    }

    protected Object c1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JavaType javaType = this.C;
        return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization (of %s) with Builder, External type id, @JsonCreator not yet implemented", javaType));
    }

    protected Object d1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.deser.impl.g gVar = this.f14599k;
        com.fasterxml.jackson.databind.deser.impl.i h4 = gVar.h(jsonParser, deserializationContext, this.f14613y);
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.K1();
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (!h4.l(M) || f10 != null) {
                if (f10 != null) {
                    if (h4.b(f10, f10.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.y1();
                        try {
                            Object a10 = gVar.a(deserializationContext, h4);
                            if (a10.getClass() != this.f14594f.getRawClass()) {
                                return V0(jsonParser, deserializationContext, a10, bufferForInputBuffering);
                            }
                            return h1(jsonParser, deserializationContext, a10, bufferForInputBuffering);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, this.f14594f.getRawClass(), M, deserializationContext);
                        }
                    } else {
                        continue;
                    }
                } else {
                    SettableBeanProperty find = this.f14602n.find(M);
                    if (find != null) {
                        h4.e(find, find.deserialize(jsonParser, deserializationContext));
                    } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                        U0(jsonParser, deserializationContext, handledType(), M);
                    } else {
                        bufferForInputBuffering.V0(M);
                        bufferForInputBuffering.H(jsonParser);
                        SettableAnyProperty settableAnyProperty = this.f14604p;
                        if (settableAnyProperty != null) {
                            h4.c(settableAnyProperty, M, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                        }
                    }
                }
            }
            W = jsonParser.y1();
        }
        bufferForInputBuffering.S0();
        try {
            return this.f14611w.b(jsonParser, deserializationContext, gVar.a(deserializationContext, h4), bufferForInputBuffering);
        } catch (Exception e10) {
            return a1(e10, deserializationContext);
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.q1()) {
            JsonToken y12 = jsonParser.y1();
            if (this.f14601m) {
                return j1(deserializationContext, k1(jsonParser, deserializationContext, y12));
            }
            return j1(deserializationContext, deserializeFromObject(jsonParser, deserializationContext));
        }
        switch (jsonParser.X()) {
            case 2:
            case 5:
                return j1(deserializationContext, deserializeFromObject(jsonParser, deserializationContext));
            case 3:
                return q(jsonParser, deserializationContext);
            case 4:
            case 11:
            default:
                return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
            case 6:
                return j1(deserializationContext, deserializeFromString(jsonParser, deserializationContext));
            case 7:
                return j1(deserializationContext, deserializeFromNumber(jsonParser, deserializationContext));
            case 8:
                return j1(deserializationContext, deserializeFromDouble(jsonParser, deserializationContext));
            case 9:
            case 10:
                return j1(deserializationContext, deserializeFromBoolean(jsonParser, deserializationContext));
            case 12:
                return jsonParser.A0();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Class<?> activeView;
        if (this.f14600l) {
            if (this.f14611w != null) {
                return g1(jsonParser, deserializationContext);
            }
            if (this.f14612x != null) {
                return e1(jsonParser, deserializationContext);
            }
            return R0(jsonParser, deserializationContext);
        }
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingDefault);
        }
        if (this.f14608t && (activeView = deserializationContext.getActiveView()) != null) {
            return i1(jsonParser, deserializationContext, createUsingDefault, activeView);
        }
        while (jsonParser.W() == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                try {
                    createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e4) {
                    wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                }
            } else {
                X0(jsonParser, deserializationContext, createUsingDefault, M);
            }
            jsonParser.y1();
        }
        return createUsingDefault;
    }

    protected Object e1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14599k != null) {
            return c1(jsonParser, deserializationContext);
        }
        return f1(jsonParser, deserializationContext, this.f14596h.createUsingDefault(deserializationContext));
    }

    protected Object f1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        com.fasterxml.jackson.databind.deser.impl.d i4 = this.f14612x.i();
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            JsonToken y12 = jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                if (y12.isScalarValue()) {
                    i4.h(jsonParser, deserializationContext, M, obj);
                }
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, obj, M);
            } else if (!i4.g(jsonParser, deserializationContext, M, obj)) {
                SettableAnyProperty settableAnyProperty = this.f14604p;
                if (settableAnyProperty != null) {
                    try {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, M);
                    } catch (Exception e10) {
                        wrapAndThrow(e10, obj, M, deserializationContext);
                    }
                } else {
                    z0(jsonParser, deserializationContext, obj, M);
                }
            }
            W = jsonParser.y1();
        }
        return i4.f(jsonParser, deserializationContext, obj);
    }

    protected Object g1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14597i;
        if (dVar != null) {
            return this.f14596h.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        if (this.f14599k != null) {
            return d1(jsonParser, deserializationContext);
        }
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.K1();
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingDefault);
        }
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        while (jsonParser.W() == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        createUsingDefault = find.deserializeSetAndReturn(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, createUsingDefault, M);
            } else {
                bufferForInputBuffering.V0(M);
                bufferForInputBuffering.H(jsonParser);
                SettableAnyProperty settableAnyProperty = this.f14604p;
                if (settableAnyProperty != null) {
                    try {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault, M);
                    } catch (Exception e10) {
                        wrapAndThrow(e10, createUsingDefault, M, deserializationContext);
                    }
                }
            }
            jsonParser.y1();
        }
        bufferForInputBuffering.S0();
        return this.f14611w.b(jsonParser, deserializationContext, createUsingDefault, bufferForInputBuffering);
    }

    protected Object h1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, t tVar) throws IOException {
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            SettableBeanProperty find = this.f14602n.find(M);
            jsonParser.y1();
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, obj, M);
            } else {
                tVar.V0(M);
                tVar.H(jsonParser);
                SettableAnyProperty settableAnyProperty = this.f14604p;
                if (settableAnyProperty != null) {
                    settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, M);
                }
            }
            W = jsonParser.y1();
        }
        tVar.S0();
        return this.f14611w.b(jsonParser, deserializationContext, obj, tVar);
    }

    protected final Object i1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Class<?> cls) throws IOException {
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                if (!find.visibleInView(cls)) {
                    jsonParser.U1();
                } else {
                    try {
                        obj = find.deserializeSetAndReturn(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                }
            } else {
                X0(jsonParser, deserializationContext, obj, M);
            }
            W = jsonParser.y1();
        }
        return obj;
    }

    protected Object j1(DeserializationContext deserializationContext, Object obj) throws IOException {
        AnnotatedMethod annotatedMethod = this.B;
        if (annotatedMethod == null) {
            return obj;
        }
        try {
            return annotatedMethod.getMember().invoke(obj, null);
        } catch (Exception e4) {
            return a1(e4, deserializationContext);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public Object q(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14598j;
        if (dVar == null && (dVar = this.f14597i) == null) {
            CoercionAction x9 = x(deserializationContext);
            boolean isEnabled = deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS);
            if (isEnabled || x9 != CoercionAction.Fail) {
                JsonToken y12 = jsonParser.y1();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (y12 == jsonToken) {
                    int i4 = a.f14616a[x9.ordinal()];
                    if (i4 != 1) {
                        if (i4 != 2 && i4 != 3) {
                            return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), JsonToken.START_ARRAY, jsonParser, (String) null, new Object[0]);
                        }
                        return getNullValue(deserializationContext);
                    }
                    return getEmptyValue(deserializationContext);
                } else if (isEnabled) {
                    Object deserialize = deserialize(jsonParser, deserializationContext);
                    if (jsonParser.y1() != jsonToken) {
                        y0(jsonParser, deserializationContext);
                    }
                    return deserialize;
                }
            }
            return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
        }
        Object createUsingArrayDelegate = this.f14596h.createUsingArrayDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingArrayDelegate);
        }
        return j1(deserializationContext, createUsingArrayDelegate);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.FALSE;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return new BuilderBasedDeserializer(this, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        return new BuilderBasedDeserializer(this, beanPropertyMap);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withByNameInclusion(Set<String> set, Set<String> set2) {
        return new BuilderBasedDeserializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withIgnoreAllUnknown(boolean z9) {
        return new BuilderBasedDeserializer(this, z9);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BuilderBasedDeserializer(this, objectIdReader);
    }

    public BuilderBasedDeserializer(com.fasterxml.jackson.databind.deser.a aVar, com.fasterxml.jackson.databind.b bVar, JavaType javaType, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z9, Set<String> set2, boolean z10) {
        super(aVar, bVar, beanPropertyMap, map, set, z9, set2, z10);
        this.C = javaType;
        this.B = aVar.t();
        if (this.f14613y == null) {
            return;
        }
        throw new IllegalArgumentException("Cannot use Object Id with Builder-based deserialization (type " + bVar.H() + ")");
    }

    @Deprecated
    public BuilderBasedDeserializer(com.fasterxml.jackson.databind.deser.a aVar, com.fasterxml.jackson.databind.b bVar, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z9, boolean z10) {
        this(aVar, bVar, bVar.H(), beanPropertyMap, map, set, z9, z10);
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer) {
        this(builderBasedDeserializer, builderBasedDeserializer.f14607s);
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, boolean z9) {
        super(builderBasedDeserializer, z9);
        this.B = builderBasedDeserializer.B;
        this.C = builderBasedDeserializer.C;
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, NameTransformer nameTransformer) {
        super(builderBasedDeserializer, nameTransformer);
        this.B = builderBasedDeserializer.B;
        this.C = builderBasedDeserializer.C;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JavaType javaType = this.C;
        Class<?> handledType = handledType();
        Class<?> cls = obj.getClass();
        if (handledType.isAssignableFrom(cls)) {
            return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization of %s by passing existing Builder (%s) instance not supported", javaType, handledType.getName()));
        }
        return deserializationContext.reportBadDefinition(javaType, String.format("Deserialization of %s by passing existing instance (of %s) not supported", javaType, cls.getName()));
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, ObjectIdReader objectIdReader) {
        super(builderBasedDeserializer, objectIdReader);
        this.B = builderBasedDeserializer.B;
        this.C = builderBasedDeserializer.C;
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, Set<String> set) {
        this(builderBasedDeserializer, set, builderBasedDeserializer.f14606r);
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, Set<String> set, Set<String> set2) {
        super(builderBasedDeserializer, set, set2);
        this.B = builderBasedDeserializer.B;
        this.C = builderBasedDeserializer.C;
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderBasedDeserializer, BeanPropertyMap beanPropertyMap) {
        super(builderBasedDeserializer, beanPropertyMap);
        this.B = builderBasedDeserializer.B;
        this.C = builderBasedDeserializer.C;
    }
}
