package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.std.NullifyingDeserializer;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class TypeDeserializerBase extends com.fasterxml.jackson.databind.jsontype.b implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final long f15436i = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.c f15437a;

    /* renamed from: b  reason: collision with root package name */
    protected final JavaType f15438b;

    /* renamed from: c  reason: collision with root package name */
    protected final BeanProperty f15439c;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15440d;

    /* renamed from: e  reason: collision with root package name */
    protected final String f15441e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15442f;

    /* renamed from: g  reason: collision with root package name */
    protected final Map<String, com.fasterxml.jackson.databind.d<Object>> f15443g;

    /* renamed from: h  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15444h;

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeDeserializerBase(JavaType javaType, com.fasterxml.jackson.databind.jsontype.c cVar, String str, boolean z9, JavaType javaType2) {
        this.f15438b = javaType;
        this.f15437a = cVar;
        this.f15441e = com.fasterxml.jackson.databind.util.g.l0(str);
        this.f15442f = z9;
        this.f15443g = new ConcurrentHashMap(16, 0.75f, 2);
        this.f15440d = javaType2;
        this.f15439c = null;
    }

    @Deprecated
    protected Object a(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return b(jsonParser, deserializationContext, jsonParser.X0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object b(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        com.fasterxml.jackson.databind.d<Object> d4;
        if (obj == null) {
            d4 = c(deserializationContext);
            if (d4 == null) {
                return deserializationContext.reportInputMismatch(baseType(), "No (native) type id found when one was expected for polymorphic type handling", new Object[0]);
            }
        } else {
            d4 = d(deserializationContext, obj instanceof String ? (String) obj : String.valueOf(obj));
        }
        return d4.deserialize(jsonParser, deserializationContext);
    }

    public JavaType baseType() {
        return this.f15438b;
    }

    public String baseTypeName() {
        return this.f15438b.getRawClass().getName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.d<Object> c(DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar;
        JavaType javaType = this.f15440d;
        if (javaType == null) {
            if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)) {
                return null;
            }
            return NullifyingDeserializer.instance;
        } else if (com.fasterxml.jackson.databind.util.g.T(javaType.getRawClass())) {
            return NullifyingDeserializer.instance;
        } else {
            synchronized (this.f15440d) {
                if (this.f15444h == null) {
                    this.f15444h = deserializationContext.findContextualValueDeserializer(this.f15440d, this.f15439c);
                }
                dVar = this.f15444h;
            }
            return dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.d<Object> d(DeserializationContext deserializationContext, String str) throws IOException {
        com.fasterxml.jackson.databind.d<Object> findContextualValueDeserializer;
        com.fasterxml.jackson.databind.d<Object> dVar = this.f15443g.get(str);
        if (dVar == null) {
            JavaType d4 = this.f15437a.d(deserializationContext, str);
            if (d4 == null) {
                dVar = c(deserializationContext);
                if (dVar == null) {
                    JavaType h4 = h(deserializationContext, str);
                    if (h4 == null) {
                        return NullifyingDeserializer.instance;
                    }
                    findContextualValueDeserializer = deserializationContext.findContextualValueDeserializer(h4, this.f15439c);
                }
                this.f15443g.put(str, dVar);
            } else {
                JavaType javaType = this.f15438b;
                if (javaType != null && javaType.getClass() == d4.getClass() && !d4.hasGenericTypes()) {
                    try {
                        d4 = deserializationContext.constructSpecializedType(this.f15438b, d4.getRawClass());
                    } catch (IllegalArgumentException e4) {
                        throw deserializationContext.invalidTypeIdException(this.f15438b, str, e4.getMessage());
                    }
                }
                findContextualValueDeserializer = deserializationContext.findContextualValueDeserializer(d4, this.f15439c);
            }
            dVar = findContextualValueDeserializer;
            this.f15443g.put(str, dVar);
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType e(DeserializationContext deserializationContext, String str) throws IOException {
        return deserializationContext.handleMissingTypeId(this.f15438b, this.f15437a, str);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public abstract com.fasterxml.jackson.databind.jsontype.b forProperty(BeanProperty beanProperty);

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public Class<?> getDefaultImpl() {
        return com.fasterxml.jackson.databind.util.g.p0(this.f15440d);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public final String getPropertyName() {
        return this.f15441e;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public com.fasterxml.jackson.databind.jsontype.c getTypeIdResolver() {
        return this.f15437a;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public abstract JsonTypeInfo.As getTypeInclusion();

    protected JavaType h(DeserializationContext deserializationContext, String str) throws IOException {
        String str2;
        String b10 = this.f15437a.b();
        if (b10 == null) {
            str2 = "type ids are not statically known";
        } else {
            str2 = "known type ids = " + b10;
        }
        BeanProperty beanProperty = this.f15439c;
        if (beanProperty != null) {
            str2 = String.format("%s (for POJO property '%s')", str2, beanProperty.getName());
        }
        return deserializationContext.handleUnknownTypeId(this.f15438b, str, this.f15437a, str2);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.b
    public boolean hasDefaultImpl() {
        return this.f15440d != null;
    }

    public String toString() {
        return '[' + getClass().getName() + "; base-type:" + this.f15438b + "; id-resolver: " + this.f15437a + ']';
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeDeserializerBase(TypeDeserializerBase typeDeserializerBase, BeanProperty beanProperty) {
        this.f15438b = typeDeserializerBase.f15438b;
        this.f15437a = typeDeserializerBase.f15437a;
        this.f15441e = typeDeserializerBase.f15441e;
        this.f15442f = typeDeserializerBase.f15442f;
        this.f15443g = typeDeserializerBase.f15443g;
        this.f15440d = typeDeserializerBase.f15440d;
        this.f15444h = typeDeserializerBase.f15444h;
        this.f15439c = beanProperty;
    }
}
