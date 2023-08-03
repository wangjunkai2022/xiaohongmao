package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public class AbstractDeserializer extends com.fasterxml.jackson.databind.d<Object> implements c, Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final long f14558i = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final JavaType f14559a;

    /* renamed from: b  reason: collision with root package name */
    protected final ObjectIdReader f14560b;

    /* renamed from: c  reason: collision with root package name */
    protected final Map<String, SettableBeanProperty> f14561c;

    /* renamed from: d  reason: collision with root package name */
    protected transient Map<String, SettableBeanProperty> f14562d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f14563e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f14564f;

    /* renamed from: g  reason: collision with root package name */
    protected final boolean f14565g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f14566h;

    public AbstractDeserializer(a aVar, com.fasterxml.jackson.databind.b bVar, Map<String, SettableBeanProperty> map, Map<String, SettableBeanProperty> map2) {
        JavaType H = bVar.H();
        this.f14559a = H;
        this.f14560b = aVar.w();
        this.f14561c = map;
        this.f14562d = map2;
        Class<?> rawClass = H.getRawClass();
        this.f14563e = rawClass.isAssignableFrom(String.class);
        boolean z9 = false;
        this.f14564f = rawClass == Boolean.TYPE || rawClass.isAssignableFrom(Boolean.class);
        this.f14565g = rawClass == Integer.TYPE || rawClass.isAssignableFrom(Integer.class);
        this.f14566h = (rawClass == Double.TYPE || rawClass.isAssignableFrom(Double.class)) ? true : true;
    }

    public static AbstractDeserializer constructForNonPOJO(com.fasterxml.jackson.databind.b bVar) {
        return new AbstractDeserializer(bVar);
    }

    protected Object a(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this.f14560b.readObjectReference(jsonParser, deserializationContext);
        ObjectIdReader objectIdReader = this.f14560b;
        com.fasterxml.jackson.databind.deser.impl.j findObjectId = deserializationContext.findObjectId(readObjectReference, objectIdReader.generator, objectIdReader.resolver);
        Object g4 = findObjectId.g();
        if (g4 != null) {
            return g4;
        }
        throw new UnresolvedForwardReference(jsonParser, "Could not resolve Object Id [" + readObjectReference + "] -- unresolved forward-reference?", jsonParser.t0(), findObjectId);
    }

    protected Object b(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.X()) {
            case 6:
                if (this.f14563e) {
                    return jsonParser.S0();
                }
                return null;
            case 7:
                if (this.f14565g) {
                    return Integer.valueOf(jsonParser.F0());
                }
                return null;
            case 8:
                if (this.f14566h) {
                    return Double.valueOf(jsonParser.z0());
                }
                return null;
            case 9:
                if (this.f14564f) {
                    return Boolean.TRUE;
                }
                return null;
            case 10:
                if (this.f14564f) {
                    return Boolean.FALSE;
                }
                return null;
            default:
                return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        AnnotatedMember member;
        p findObjectIdInfo;
        ObjectIdGenerator<?> objectIdGeneratorInstance;
        SettableBeanProperty settableBeanProperty;
        JavaType javaType;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (beanProperty == null || annotationIntrospector == null || (member = beanProperty.getMember()) == null || (findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member)) == null) {
            return this.f14562d == null ? this : new AbstractDeserializer(this, this.f14560b, (Map<String, SettableBeanProperty>) null);
        }
        c0 objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectIdInfo);
        p findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
        Class<? extends ObjectIdGenerator<?>> c10 = findObjectReferenceInfo.c();
        if (c10 == ObjectIdGenerators.PropertyGenerator.class) {
            PropertyName d4 = findObjectReferenceInfo.d();
            Map<String, SettableBeanProperty> map = this.f14562d;
            SettableBeanProperty settableBeanProperty2 = map == null ? null : map.get(d4.getSimpleName());
            if (settableBeanProperty2 == null) {
                deserializationContext.reportBadDefinition(this.f14559a, String.format("Invalid Object Id definition for %s: cannot find property with name %s", com.fasterxml.jackson.databind.util.g.j0(handledType()), com.fasterxml.jackson.databind.util.g.g0(d4)));
            }
            JavaType type = settableBeanProperty2.getType();
            objectIdGeneratorInstance = new PropertyBasedObjectIdGenerator(findObjectReferenceInfo.f());
            javaType = type;
            settableBeanProperty = settableBeanProperty2;
        } else {
            objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectReferenceInfo);
            JavaType javaType2 = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) c10), ObjectIdGenerator.class)[0];
            objectIdGeneratorInstance = deserializationContext.objectIdGeneratorInstance(member, findObjectReferenceInfo);
            settableBeanProperty = null;
            javaType = javaType2;
        }
        return new AbstractDeserializer(this, ObjectIdReader.construct(javaType, findObjectReferenceInfo.d(), objectIdGeneratorInstance, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance), (Map<String, SettableBeanProperty>) null);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializationContext.handleMissingInstantiator(this.f14559a.getRawClass(), new ValueInstantiator.Base(this.f14559a), jsonParser, "abstract types either need to be mapped to concrete types, have custom deserializer, or contain additional type information", new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        JsonToken W;
        if (this.f14560b != null && (W = jsonParser.W()) != null) {
            if (W.isScalarValue()) {
                return a(jsonParser, deserializationContext);
            }
            if (W == JsonToken.START_OBJECT) {
                W = jsonParser.y1();
            }
            if (W == JsonToken.FIELD_NAME && this.f14560b.maySerializeAsObject() && this.f14560b.isValidReferencePropertyName(jsonParser.M(), jsonParser)) {
                return a(jsonParser, deserializationContext);
            }
        }
        Object b10 = b(jsonParser, deserializationContext);
        return b10 != null ? b10 : bVar.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public SettableBeanProperty findBackReference(String str) {
        Map<String, SettableBeanProperty> map = this.f14561c;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // com.fasterxml.jackson.databind.d
    public ObjectIdReader getObjectIdReader() {
        return this.f14560b;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Class<?> handledType() {
        return this.f14559a.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.POJO;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return null;
    }

    @Deprecated
    public AbstractDeserializer(a aVar, com.fasterxml.jackson.databind.b bVar, Map<String, SettableBeanProperty> map) {
        this(aVar, bVar, map, null);
    }

    protected AbstractDeserializer(com.fasterxml.jackson.databind.b bVar) {
        JavaType H = bVar.H();
        this.f14559a = H;
        this.f14560b = null;
        this.f14561c = null;
        Class<?> rawClass = H.getRawClass();
        this.f14563e = rawClass.isAssignableFrom(String.class);
        boolean z9 = false;
        this.f14564f = rawClass == Boolean.TYPE || rawClass.isAssignableFrom(Boolean.class);
        this.f14565g = rawClass == Integer.TYPE || rawClass.isAssignableFrom(Integer.class);
        this.f14566h = (rawClass == Double.TYPE || rawClass.isAssignableFrom(Double.class)) ? true : true;
    }

    protected AbstractDeserializer(AbstractDeserializer abstractDeserializer, ObjectIdReader objectIdReader, Map<String, SettableBeanProperty> map) {
        this.f14559a = abstractDeserializer.f14559a;
        this.f14561c = abstractDeserializer.f14561c;
        this.f14563e = abstractDeserializer.f14563e;
        this.f14564f = abstractDeserializer.f14564f;
        this.f14565g = abstractDeserializer.f14565g;
        this.f14566h = abstractDeserializer.f14566h;
        this.f14560b = objectIdReader;
        this.f14562d = map;
    }
}
