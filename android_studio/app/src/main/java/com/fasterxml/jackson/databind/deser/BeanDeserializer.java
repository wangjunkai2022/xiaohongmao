package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanDeserializer extends BeanDeserializerBase implements Serializable {
    private static final long D = 1;
    protected transient Exception B;
    private volatile transient NameTransformer C;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14588a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14589b;

        static {
            int[] iArr = new int[CoercionAction.values().length];
            f14589b = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14589b[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14589b[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            f14588a = iArr2;
            try {
                iArr2[JsonToken.VALUE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14588a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14588a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14588a[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14588a[JsonToken.VALUE_TRUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14588a[JsonToken.VALUE_FALSE.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14588a[JsonToken.VALUE_NULL.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14588a[JsonToken.START_ARRAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14588a[JsonToken.FIELD_NAME.ordinal()] = 9;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14588a[JsonToken.END_OBJECT.ordinal()] = 10;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends j.a {

        /* renamed from: c  reason: collision with root package name */
        private final DeserializationContext f14590c;

        /* renamed from: d  reason: collision with root package name */
        private final SettableBeanProperty f14591d;

        /* renamed from: e  reason: collision with root package name */
        private Object f14592e;

        b(DeserializationContext deserializationContext, UnresolvedForwardReference unresolvedForwardReference, JavaType javaType, com.fasterxml.jackson.databind.deser.impl.i iVar, SettableBeanProperty settableBeanProperty) {
            super(unresolvedForwardReference, javaType);
            this.f14590c = deserializationContext;
            this.f14591d = settableBeanProperty;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.j.a
        public void c(Object obj, Object obj2) throws IOException {
            if (this.f14592e == null) {
                DeserializationContext deserializationContext = this.f14590c;
                SettableBeanProperty settableBeanProperty = this.f14591d;
                deserializationContext.reportInputMismatch(settableBeanProperty, "Cannot resolve ObjectId forward reference using property '%s' (of type %s): Bean not yet resolved", settableBeanProperty.getName(), this.f14591d.e().getName());
            }
            this.f14591d.set(this.f14592e, obj2);
        }

        public void e(Object obj) {
            this.f14592e = obj;
        }
    }

    @Deprecated
    public BeanDeserializer(com.fasterxml.jackson.databind.deser.a aVar, com.fasterxml.jackson.databind.b bVar, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z9, boolean z10) {
        super(aVar, bVar, beanPropertyMap, map, hashSet, z9, null, z10);
    }

    private b o1(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty, com.fasterxml.jackson.databind.deser.impl.i iVar, UnresolvedForwardReference unresolvedForwardReference) throws JsonMappingException {
        b bVar = new b(deserializationContext, unresolvedForwardReference, settableBeanProperty.getType(), iVar, settableBeanProperty);
        unresolvedForwardReference.getRoid().a(bVar);
        return bVar;
    }

    private final Object p1(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        jsonParser.O1(createUsingDefault);
        if (jsonParser.l1(5)) {
            String M = jsonParser.M();
            do {
                jsonParser.y1();
                SettableBeanProperty find = this.f14602n.find(M);
                if (find != null) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                    }
                } else {
                    X0(jsonParser, deserializationContext, createUsingDefault, M);
                }
                M = jsonParser.t1();
            } while (M != null);
            return createUsingDefault;
        }
        return createUsingDefault;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object E0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object obj;
        Object a12;
        com.fasterxml.jackson.databind.deser.impl.g gVar = this.f14599k;
        com.fasterxml.jackson.databind.deser.impl.i h4 = gVar.h(jsonParser, deserializationContext, this.f14613y);
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        JsonToken W = jsonParser.W();
        ArrayList<b> arrayList = null;
        t tVar = null;
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (!h4.l(M) || f10 != null) {
                if (f10 != null) {
                    if (activeView != null && !f10.visibleInView(activeView)) {
                        jsonParser.U1();
                    } else if (h4.b(f10, d1(jsonParser, deserializationContext, f10))) {
                        jsonParser.y1();
                        try {
                            a12 = gVar.a(deserializationContext, h4);
                        } catch (Exception e4) {
                            a12 = a1(e4, deserializationContext);
                        }
                        if (a12 == null) {
                            return deserializationContext.handleInstantiationProblem(handledType(), null, b1());
                        }
                        jsonParser.O1(a12);
                        if (a12.getClass() != this.f14594f.getRawClass()) {
                            return V0(jsonParser, deserializationContext, a12, tVar);
                        }
                        if (tVar != null) {
                            a12 = W0(deserializationContext, a12, tVar);
                        }
                        return deserialize(jsonParser, deserializationContext, a12);
                    }
                } else {
                    SettableBeanProperty find = this.f14602n.find(M);
                    if (find != null) {
                        try {
                            h4.e(find, d1(jsonParser, deserializationContext, find));
                        } catch (UnresolvedForwardReference e10) {
                            b o12 = o1(deserializationContext, find, h4, e10);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(o12);
                        }
                    } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                        U0(jsonParser, deserializationContext, handledType(), M);
                    } else {
                        SettableAnyProperty settableAnyProperty = this.f14604p;
                        if (settableAnyProperty != null) {
                            try {
                                h4.c(settableAnyProperty, M, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                            } catch (Exception e11) {
                                wrapAndThrow(e11, this.f14594f.getRawClass(), M, deserializationContext);
                            }
                        } else if (this.f14607s) {
                            jsonParser.U1();
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
            obj = gVar.a(deserializationContext, h4);
        } catch (Exception e12) {
            a1(e12, deserializationContext);
            obj = null;
        }
        if (this.f14603o != null) {
            Y0(deserializationContext, obj);
        }
        if (arrayList != null) {
            for (b bVar : arrayList) {
                bVar.e(obj);
            }
        }
        if (tVar != null) {
            if (obj.getClass() != this.f14594f.getRawClass()) {
                return V0(null, deserializationContext, obj, tVar);
            }
            return W0(deserializationContext, obj, tVar);
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected BeanDeserializerBase P0() {
        return new BeanAsArrayDeserializer(this, this.f14602n.getPropertiesInInsertionOrder());
    }

    protected Exception b1() {
        if (this.B == null) {
            this.B = new NullPointerException("JSON Creator returned null");
        }
        return this.B;
    }

    protected final Object c1(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        if (jsonToken != null) {
            switch (a.f14588a[jsonToken.ordinal()]) {
                case 1:
                    return deserializeFromString(jsonParser, deserializationContext);
                case 2:
                    return deserializeFromNumber(jsonParser, deserializationContext);
                case 3:
                    return deserializeFromDouble(jsonParser, deserializationContext);
                case 4:
                    return deserializeFromEmbedded(jsonParser, deserializationContext);
                case 5:
                case 6:
                    return deserializeFromBoolean(jsonParser, deserializationContext);
                case 7:
                    return g1(jsonParser, deserializationContext);
                case 8:
                    return q(jsonParser, deserializationContext);
                case 9:
                case 10:
                    if (this.f14601m) {
                        return p1(jsonParser, deserializationContext, jsonToken);
                    }
                    if (this.f14613y != null) {
                        return S0(jsonParser, deserializationContext);
                    }
                    return deserializeFromObject(jsonParser, deserializationContext);
            }
        }
        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
    }

    protected final Object d1(JsonParser jsonParser, DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws IOException {
        try {
            return settableBeanProperty.deserialize(jsonParser, deserializationContext);
        } catch (Exception e4) {
            wrapAndThrow(e4, this.f14594f.getRawClass(), settableBeanProperty.getName(), deserializationContext);
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.q1()) {
            if (this.f14601m) {
                return p1(jsonParser, deserializationContext, jsonParser.y1());
            }
            jsonParser.y1();
            if (this.f14613y != null) {
                return S0(jsonParser, deserializationContext);
            }
            return deserializeFromObject(jsonParser, deserializationContext);
        }
        return c1(jsonParser, deserializationContext, jsonParser.W());
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Class<?> activeView;
        Object M0;
        ObjectIdReader objectIdReader = this.f14613y;
        if (objectIdReader != null && objectIdReader.maySerializeAsObject() && jsonParser.l1(5) && this.f14613y.isValidReferencePropertyName(jsonParser.M(), jsonParser)) {
            return Q0(jsonParser, deserializationContext);
        }
        if (this.f14600l) {
            if (this.f14611w != null) {
                return l1(jsonParser, deserializationContext);
            }
            if (this.f14612x != null) {
                return j1(jsonParser, deserializationContext);
            }
            return R0(jsonParser, deserializationContext);
        }
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        jsonParser.O1(createUsingDefault);
        if (jsonParser.G() && (M0 = jsonParser.M0()) != null) {
            J0(jsonParser, deserializationContext, createUsingDefault, M0);
        }
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingDefault);
        }
        if (this.f14608t && (activeView = deserializationContext.getActiveView()) != null) {
            return n1(jsonParser, deserializationContext, createUsingDefault, activeView);
        }
        if (jsonParser.l1(5)) {
            String M = jsonParser.M();
            do {
                jsonParser.y1();
                SettableBeanProperty find = this.f14602n.find(M);
                if (find != null) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                    }
                } else {
                    X0(jsonParser, deserializationContext, createUsingDefault, M);
                }
                M = jsonParser.t1();
            } while (M != null);
            return createUsingDefault;
        }
        return createUsingDefault;
    }

    protected Object e1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, com.fasterxml.jackson.databind.deser.impl.d dVar) throws IOException {
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            JsonToken y12 = jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                if (y12.isScalarValue()) {
                    dVar.h(jsonParser, deserializationContext, M, obj);
                }
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, obj, M);
            } else if (!dVar.g(jsonParser, deserializationContext, M, obj)) {
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
        return dVar.f(jsonParser, deserializationContext, obj);
    }

    @Deprecated
    protected Object f1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.endOfInputException(handledType());
    }

    protected Object g1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.M1()) {
            t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
            bufferForInputBuffering.S0();
            JsonParser j22 = bufferForInputBuffering.j2(jsonParser);
            j22.y1();
            Object p12 = this.f14601m ? p1(j22, deserializationContext, JsonToken.END_OBJECT) : deserializeFromObject(j22, deserializationContext);
            j22.close();
            return p12;
        }
        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
    }

    protected Object h1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.deser.impl.d i4 = this.f14612x.i();
        com.fasterxml.jackson.databind.deser.impl.g gVar = this.f14599k;
        com.fasterxml.jackson.databind.deser.impl.i h4 = gVar.h(jsonParser, deserializationContext, this.f14613y);
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        JsonToken W = jsonParser.W();
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            JsonToken y12 = jsonParser.y1();
            SettableBeanProperty f10 = gVar.f(M);
            if (!h4.l(M) || f10 != null) {
                if (f10 != null) {
                    if (!i4.g(jsonParser, deserializationContext, M, null) && h4.b(f10, d1(jsonParser, deserializationContext, f10))) {
                        jsonParser.y1();
                        try {
                            Object a10 = gVar.a(deserializationContext, h4);
                            if (a10.getClass() != this.f14594f.getRawClass()) {
                                JavaType javaType = this.f14594f;
                                return deserializationContext.reportBadDefinition(javaType, String.format("Cannot create polymorphic instances with external type ids (%s -> %s)", javaType, a10.getClass()));
                            }
                            return e1(jsonParser, deserializationContext, a10, i4);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, this.f14594f.getRawClass(), M, deserializationContext);
                        }
                    }
                } else {
                    SettableBeanProperty find = this.f14602n.find(M);
                    if (find != null) {
                        if (y12.isScalarValue()) {
                            i4.h(jsonParser, deserializationContext, M, null);
                        }
                        if (activeView != null && !find.visibleInView(activeView)) {
                            jsonParser.U1();
                        } else {
                            h4.e(find, find.deserialize(jsonParser, deserializationContext));
                        }
                    } else if (!i4.g(jsonParser, deserializationContext, M, null)) {
                        if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                            U0(jsonParser, deserializationContext, handledType(), M);
                        } else {
                            SettableAnyProperty settableAnyProperty = this.f14604p;
                            if (settableAnyProperty != null) {
                                h4.c(settableAnyProperty, M, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                            } else {
                                z0(jsonParser, deserializationContext, this.f14988a, M);
                            }
                        }
                    }
                }
            }
            W = jsonParser.y1();
        }
        try {
            return i4.e(jsonParser, deserializationContext, h4, gVar);
        } catch (Exception e10) {
            return a1(e10, deserializationContext);
        }
    }

    protected Object i1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object a12;
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
                    if (h4.b(f10, d1(jsonParser, deserializationContext, f10))) {
                        JsonToken y12 = jsonParser.y1();
                        try {
                            a12 = gVar.a(deserializationContext, h4);
                        } catch (Exception e4) {
                            a12 = a1(e4, deserializationContext);
                        }
                        jsonParser.O1(a12);
                        while (y12 == JsonToken.FIELD_NAME) {
                            bufferForInputBuffering.H(jsonParser);
                            y12 = jsonParser.y1();
                        }
                        JsonToken jsonToken = JsonToken.END_OBJECT;
                        if (y12 != jsonToken) {
                            deserializationContext.reportWrongTokenException(this, jsonToken, "Attempted to unwrap '%s' value", handledType().getName());
                        }
                        bufferForInputBuffering.S0();
                        if (a12.getClass() != this.f14594f.getRawClass()) {
                            deserializationContext.reportInputMismatch(f10, "Cannot create polymorphic instances with unwrapped values", new Object[0]);
                            return null;
                        }
                        return this.f14611w.b(jsonParser, deserializationContext, a12, bufferForInputBuffering);
                    }
                } else {
                    SettableBeanProperty find = this.f14602n.find(M);
                    if (find != null) {
                        h4.e(find, d1(jsonParser, deserializationContext, find));
                    } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                        U0(jsonParser, deserializationContext, handledType(), M);
                    } else if (this.f14604p == null) {
                        bufferForInputBuffering.V0(M);
                        bufferForInputBuffering.H(jsonParser);
                    } else {
                        t bufferAsCopyOfValue = deserializationContext.bufferAsCopyOfValue(jsonParser);
                        bufferForInputBuffering.V0(M);
                        bufferForInputBuffering.g2(bufferAsCopyOfValue);
                        try {
                            SettableAnyProperty settableAnyProperty = this.f14604p;
                            h4.c(settableAnyProperty, M, settableAnyProperty.deserialize(bufferAsCopyOfValue.l2(), deserializationContext));
                        } catch (Exception e10) {
                            wrapAndThrow(e10, this.f14594f.getRawClass(), M, deserializationContext);
                        }
                    }
                }
            }
            W = jsonParser.y1();
        }
        try {
            return this.f14611w.b(jsonParser, deserializationContext, gVar.a(deserializationContext, h4), bufferForInputBuffering);
        } catch (Exception e11) {
            a1(e11, deserializationContext);
            return null;
        }
    }

    protected Object j1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14599k != null) {
            return h1(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14597i;
        if (dVar != null) {
            return this.f14596h.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        return k1(jsonParser, deserializationContext, this.f14596h.createUsingDefault(deserializationContext));
    }

    protected Object k1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return e1(jsonParser, deserializationContext, obj, this.f14612x.i());
    }

    protected Object l1(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14597i;
        if (dVar != null) {
            return this.f14596h.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        if (this.f14599k != null) {
            return i1(jsonParser, deserializationContext);
        }
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.K1();
        Object createUsingDefault = this.f14596h.createUsingDefault(deserializationContext);
        jsonParser.O1(createUsingDefault);
        if (this.f14603o != null) {
            Y0(deserializationContext, createUsingDefault);
        }
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        String M = jsonParser.l1(5) ? jsonParser.M() : null;
        while (M != null) {
            jsonParser.y1();
            SettableBeanProperty find = this.f14602n.find(M);
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, createUsingDefault, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, createUsingDefault, M);
            } else if (this.f14604p == null) {
                bufferForInputBuffering.V0(M);
                bufferForInputBuffering.H(jsonParser);
            } else {
                t bufferAsCopyOfValue = deserializationContext.bufferAsCopyOfValue(jsonParser);
                bufferForInputBuffering.V0(M);
                bufferForInputBuffering.g2(bufferAsCopyOfValue);
                try {
                    this.f14604p.deserializeAndSet(bufferAsCopyOfValue.l2(), deserializationContext, createUsingDefault, M);
                } catch (Exception e10) {
                    wrapAndThrow(e10, createUsingDefault, M, deserializationContext);
                }
            }
            M = jsonParser.t1();
        }
        bufferForInputBuffering.S0();
        this.f14611w.b(jsonParser, deserializationContext, createUsingDefault, bufferForInputBuffering);
        return createUsingDefault;
    }

    protected Object m1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_OBJECT) {
            W = jsonParser.y1();
        }
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        bufferForInputBuffering.K1();
        Class<?> activeView = this.f14608t ? deserializationContext.getActiveView() : null;
        while (W == JsonToken.FIELD_NAME) {
            String M = jsonParser.M();
            SettableBeanProperty find = this.f14602n.find(M);
            jsonParser.y1();
            if (find != null) {
                if (activeView != null && !find.visibleInView(activeView)) {
                    jsonParser.U1();
                } else {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                }
            } else if (IgnorePropertiesUtil.c(M, this.f14605q, this.f14606r)) {
                U0(jsonParser, deserializationContext, obj, M);
            } else if (this.f14604p == null) {
                bufferForInputBuffering.V0(M);
                bufferForInputBuffering.H(jsonParser);
            } else {
                t bufferAsCopyOfValue = deserializationContext.bufferAsCopyOfValue(jsonParser);
                bufferForInputBuffering.V0(M);
                bufferForInputBuffering.g2(bufferAsCopyOfValue);
                try {
                    this.f14604p.deserializeAndSet(bufferAsCopyOfValue.l2(), deserializationContext, obj, M);
                } catch (Exception e10) {
                    wrapAndThrow(e10, obj, M, deserializationContext);
                }
            }
            W = jsonParser.y1();
        }
        bufferForInputBuffering.S0();
        this.f14611w.b(jsonParser, deserializationContext, obj, bufferForInputBuffering);
        return obj;
    }

    protected final Object n1(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Class<?> cls) throws IOException {
        if (jsonParser.l1(5)) {
            String M = jsonParser.M();
            do {
                jsonParser.y1();
                SettableBeanProperty find = this.f14602n.find(M);
                if (find != null) {
                    if (!find.visibleInView(cls)) {
                        jsonParser.U1();
                    } else {
                        try {
                            find.deserializeAndSet(jsonParser, deserializationContext, obj);
                        } catch (Exception e4) {
                            wrapAndThrow(e4, obj, M, deserializationContext);
                        }
                    }
                } else {
                    X0(jsonParser, deserializationContext, obj, M);
                }
                M = jsonParser.t1();
            } while (M != null);
            return obj;
        }
        return obj;
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
                    int i4 = a.f14589b[x9.ordinal()];
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
        return createUsingArrayDelegate;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        if (getClass() == BeanDeserializer.class && this.C != nameTransformer) {
            this.C = nameTransformer;
            try {
                return new BeanDeserializer(this, nameTransformer);
            } finally {
                this.C = null;
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        return new BeanDeserializer(this, beanPropertyMap);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public /* bridge */ /* synthetic */ BeanDeserializerBase withByNameInclusion(Set set, Set set2) {
        return withByNameInclusion((Set<String>) set, (Set<String>) set2);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withIgnoreAllUnknown(boolean z9) {
        return new BeanDeserializer(this, z9);
    }

    public BeanDeserializer(com.fasterxml.jackson.databind.deser.a aVar, com.fasterxml.jackson.databind.b bVar, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z9, Set<String> set, boolean z10) {
        super(aVar, bVar, beanPropertyMap, map, hashSet, z9, set, z10);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withByNameInclusion(Set<String> set, Set<String> set2) {
        return new BeanDeserializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BeanDeserializer(this, objectIdReader);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase) {
        super(beanDeserializerBase, beanDeserializerBase.f14607s);
    }

    protected BeanDeserializer(BeanDeserializerBase beanDeserializerBase, boolean z9) {
        super(beanDeserializerBase, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase, nameTransformer);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase, objectIdReader);
    }

    @Deprecated
    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, Set<String> set) {
        super(beanDeserializerBase, set);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, Set<String> set, Set<String> set2) {
        super(beanDeserializerBase, set, set2);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, BeanPropertyMap beanPropertyMap) {
        super(beanDeserializerBase, beanPropertyMap);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        String M;
        Class<?> activeView;
        jsonParser.O1(obj);
        if (this.f14603o != null) {
            Y0(deserializationContext, obj);
        }
        if (this.f14611w != null) {
            return m1(jsonParser, deserializationContext, obj);
        }
        if (this.f14612x != null) {
            return k1(jsonParser, deserializationContext, obj);
        }
        if (jsonParser.q1()) {
            M = jsonParser.t1();
            if (M == null) {
                return obj;
            }
        } else if (!jsonParser.l1(5)) {
            return obj;
        } else {
            M = jsonParser.M();
        }
        if (!this.f14608t || (activeView = deserializationContext.getActiveView()) == null) {
            do {
                jsonParser.y1();
                SettableBeanProperty find = this.f14602n.find(M);
                if (find != null) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e4) {
                        wrapAndThrow(e4, obj, M, deserializationContext);
                    }
                } else {
                    X0(jsonParser, deserializationContext, obj, M);
                }
                M = jsonParser.t1();
            } while (M != null);
            return obj;
        }
        return n1(jsonParser, deserializationContext, obj, activeView);
    }
}
