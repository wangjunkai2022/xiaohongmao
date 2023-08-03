package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.InnerClassProperty;
import com.fasterxml.jackson.databind.deser.impl.ManagedReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.MergingSettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.SetterlessProperty;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.deser.impl.d;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.fasterxml.jackson.databind.exc.IgnoredPropertyException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.AccessPattern;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.t;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class BeanDeserializerBase extends StdDeserializer<Object> implements c, m, ValueInstantiator.a, Serializable {
    protected static final PropertyName A = new PropertyName("#temporary-name");

    /* renamed from: z  reason: collision with root package name */
    private static final long f14593z = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f14594f;

    /* renamed from: g  reason: collision with root package name */
    protected final JsonFormat.Shape f14595g;

    /* renamed from: h  reason: collision with root package name */
    protected final ValueInstantiator f14596h;

    /* renamed from: i  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14597i;

    /* renamed from: j  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f14598j;

    /* renamed from: k  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.deser.impl.g f14599k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f14600l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f14601m;

    /* renamed from: n  reason: collision with root package name */
    protected final BeanPropertyMap f14602n;

    /* renamed from: o  reason: collision with root package name */
    protected final ValueInjector[] f14603o;

    /* renamed from: p  reason: collision with root package name */
    protected SettableAnyProperty f14604p;

    /* renamed from: q  reason: collision with root package name */
    protected final Set<String> f14605q;

    /* renamed from: r  reason: collision with root package name */
    protected final Set<String> f14606r;

    /* renamed from: s  reason: collision with root package name */
    protected final boolean f14607s;

    /* renamed from: t  reason: collision with root package name */
    protected final boolean f14608t;

    /* renamed from: u  reason: collision with root package name */
    protected final Map<String, SettableBeanProperty> f14609u;

    /* renamed from: v  reason: collision with root package name */
    protected transient HashMap<ClassKey, com.fasterxml.jackson.databind.d<Object>> f14610v;

    /* renamed from: w  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.deser.impl.k f14611w;

    /* renamed from: x  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.deser.impl.d f14612x;

    /* renamed from: y  reason: collision with root package name */
    protected final ObjectIdReader f14613y;

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(a aVar, com.fasterxml.jackson.databind.b bVar, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z9, Set<String> set2, boolean z10) {
        super(bVar.H());
        this.f14594f = bVar.H();
        ValueInstantiator y9 = aVar.y();
        this.f14596h = y9;
        this.f14597i = null;
        this.f14598j = null;
        this.f14599k = null;
        this.f14602n = beanPropertyMap;
        this.f14609u = map;
        this.f14605q = set;
        this.f14607s = z9;
        this.f14606r = set2;
        this.f14604p = aVar.s();
        List<ValueInjector> v9 = aVar.v();
        ValueInjector[] valueInjectorArr = (v9 == null || v9.isEmpty()) ? null : (ValueInjector[]) v9.toArray(new ValueInjector[v9.size()]);
        this.f14603o = valueInjectorArr;
        ObjectIdReader w9 = aVar.w();
        this.f14613y = w9;
        boolean z11 = false;
        this.f14600l = this.f14611w != null || y9.canCreateUsingDelegate() || y9.canCreateFromObjectWith() || !y9.canCreateUsingDefault();
        this.f14595g = bVar.l(null).getShape();
        this.f14608t = z10;
        if (!this.f14600l && valueInjectorArr == null && !z10 && w9 == null) {
            z11 = true;
        }
        this.f14601m = z11;
    }

    private com.fasterxml.jackson.databind.d<Object> F0(DeserializationContext deserializationContext, JavaType javaType, AnnotatedWithParams annotatedWithParams) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization;
        BeanProperty.Std std = new BeanProperty.Std(A, javaType, null, annotatedWithParams, PropertyMetadata.STD_OPTIONAL);
        com.fasterxml.jackson.databind.jsontype.b bVar = (com.fasterxml.jackson.databind.jsontype.b) javaType.getTypeHandler();
        if (bVar == null) {
            bVar = deserializationContext.getConfig().findTypeDeserializer(javaType);
        }
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) javaType.getValueHandler();
        if (dVar == null) {
            handleSecondaryContextualization = u0(deserializationContext, javaType, std);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, std, javaType);
        }
        return bVar != null ? new TypeWrappedDeserializer(bVar.forProperty(std), handleSecondaryContextualization) : handleSecondaryContextualization;
    }

    private Throwable Z0(Throwable th, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        com.fasterxml.jackson.databind.util.g.t0(th);
        boolean z9 = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z9 || !(th instanceof JacksonException)) {
                throw ((IOException) th);
            }
        } else if (!z9) {
            com.fasterxml.jackson.databind.util.g.v0(th);
        }
        return th;
    }

    protected Object C0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, com.fasterxml.jackson.databind.d<Object> dVar) throws IOException {
        t bufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        if (obj instanceof String) {
            bufferForInputBuffering.P1((String) obj);
        } else if (obj instanceof Long) {
            bufferForInputBuffering.b1(((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            bufferForInputBuffering.a1(((Integer) obj).intValue());
        } else {
            bufferForInputBuffering.o1(obj);
        }
        JsonParser i22 = bufferForInputBuffering.i2();
        i22.y1();
        return dVar.deserialize(i22, deserializationContext);
    }

    protected final com.fasterxml.jackson.databind.d<Object> D0() {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14597i;
        return dVar == null ? this.f14598j : dVar;
    }

    protected abstract Object E0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    protected NameTransformer G0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        NameTransformer findUnwrappingNameTransformer;
        AnnotatedMember member = settableBeanProperty.getMember();
        if (member == null || (findUnwrappingNameTransformer = deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(member)) == null) {
            return null;
        }
        if (settableBeanProperty instanceof CreatorProperty) {
            deserializationContext.reportBadDefinition(getValueType(), String.format("Cannot define Creator property \"%s\" as `@JsonUnwrapped`: combination not yet supported", settableBeanProperty.getName()));
        }
        return findUnwrappingNameTransformer;
    }

    protected com.fasterxml.jackson.databind.d<Object> H0(DeserializationContext deserializationContext, Object obj, t tVar) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar;
        synchronized (this) {
            HashMap<ClassKey, com.fasterxml.jackson.databind.d<Object>> hashMap = this.f14610v;
            dVar = hashMap == null ? null : hashMap.get(new ClassKey(obj.getClass()));
        }
        if (dVar != null) {
            return dVar;
        }
        com.fasterxml.jackson.databind.d<Object> findRootValueDeserializer = deserializationContext.findRootValueDeserializer(deserializationContext.constructType(obj.getClass()));
        if (findRootValueDeserializer != null) {
            synchronized (this) {
                if (this.f14610v == null) {
                    this.f14610v = new HashMap<>();
                }
                this.f14610v.put(new ClassKey(obj.getClass()), findRootValueDeserializer);
            }
        }
        return findRootValueDeserializer;
    }

    protected BeanDeserializerBase I0(DeserializationContext deserializationContext, AnnotationIntrospector annotationIntrospector, BeanDeserializerBase beanDeserializerBase, AnnotatedMember annotatedMember) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JsonIgnoreProperties.Value findPropertyIgnoralByName = annotationIntrospector.findPropertyIgnoralByName(config, annotatedMember);
        if (findPropertyIgnoralByName.getIgnoreUnknown() && !this.f14607s) {
            beanDeserializerBase = beanDeserializerBase.withIgnoreAllUnknown(true);
        }
        Set<String> findIgnoredForDeserialization = findPropertyIgnoralByName.findIgnoredForDeserialization();
        Set<String> set = beanDeserializerBase.f14605q;
        if (findIgnoredForDeserialization.isEmpty()) {
            findIgnoredForDeserialization = set;
        } else if (set != null && !set.isEmpty()) {
            HashSet hashSet = new HashSet(set);
            hashSet.addAll(findIgnoredForDeserialization);
            findIgnoredForDeserialization = hashSet;
        }
        Set<String> set2 = beanDeserializerBase.f14606r;
        Set<String> b10 = IgnorePropertiesUtil.b(set2, annotationIntrospector.findPropertyInclusionByName(config, annotatedMember).getIncluded());
        return (findIgnoredForDeserialization == set && b10 == set2) ? beanDeserializerBase : beanDeserializerBase.withByNameInclusion(findIgnoredForDeserialization, b10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object J0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Object obj2) throws IOException {
        com.fasterxml.jackson.databind.d<Object> deserializer = this.f14613y.getDeserializer();
        if (deserializer.handledType() != obj2.getClass()) {
            obj2 = C0(jsonParser, deserializationContext, obj2, deserializer);
        }
        ObjectIdReader objectIdReader = this.f14613y;
        deserializationContext.findObjectId(obj2, objectIdReader.generator, objectIdReader.resolver).b(obj);
        SettableBeanProperty settableBeanProperty = this.f14613y.idProperty;
        return settableBeanProperty != null ? settableBeanProperty.setAndReturn(obj, obj2) : obj;
    }

    protected void K0(BeanPropertyMap beanPropertyMap, SettableBeanProperty[] settableBeanPropertyArr, SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        beanPropertyMap.replace(settableBeanProperty, settableBeanProperty2);
        if (settableBeanPropertyArr != null) {
            int length = settableBeanPropertyArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (settableBeanPropertyArr[i4] == settableBeanProperty) {
                    settableBeanPropertyArr[i4] = settableBeanProperty2;
                    return;
                }
            }
        }
    }

    protected SettableBeanProperty L0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        Class<?> rawClass;
        Class<?> M;
        Constructor<?>[] constructors;
        com.fasterxml.jackson.databind.d<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        if ((valueDeserializer instanceof BeanDeserializerBase) && !((BeanDeserializerBase) valueDeserializer).getValueInstantiator().canCreateUsingDefault() && (M = com.fasterxml.jackson.databind.util.g.M((rawClass = settableBeanProperty.getType().getRawClass()))) != null && M == this.f14594f.getRawClass()) {
            for (Constructor<?> constructor : rawClass.getConstructors()) {
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length == 1 && M.equals(parameterTypes[0])) {
                    if (deserializationContext.canOverrideAccessModifiers()) {
                        com.fasterxml.jackson.databind.util.g.i(constructor, deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    return new InnerClassProperty(settableBeanProperty, constructor);
                }
            }
        }
        return settableBeanProperty;
    }

    protected SettableBeanProperty M0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        String managedReferenceName = settableBeanProperty.getManagedReferenceName();
        if (managedReferenceName == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty findBackReference = settableBeanProperty.getValueDeserializer().findBackReference(managedReferenceName);
        if (findBackReference == null) {
            return (SettableBeanProperty) deserializationContext.reportBadDefinition(this.f14594f, String.format("Cannot handle managed/back reference %s: no back reference property found from type %s", com.fasterxml.jackson.databind.util.g.h0(managedReferenceName), com.fasterxml.jackson.databind.util.g.P(settableBeanProperty.getType())));
        }
        JavaType javaType = this.f14594f;
        JavaType type = findBackReference.getType();
        boolean isContainerType = settableBeanProperty.getType().isContainerType();
        if (!type.getRawClass().isAssignableFrom(javaType.getRawClass())) {
            deserializationContext.reportBadDefinition(this.f14594f, String.format("Cannot handle managed/back reference %s: back reference type (%s) not compatible with managed type (%s)", com.fasterxml.jackson.databind.util.g.h0(managedReferenceName), com.fasterxml.jackson.databind.util.g.P(type), javaType.getRawClass().getName()));
        }
        return new ManagedReferenceProperty(settableBeanProperty, managedReferenceName, findBackReference, isContainerType);
    }

    protected SettableBeanProperty N0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty, PropertyMetadata propertyMetadata) throws JsonMappingException {
        PropertyMetadata.a mergeInfo = propertyMetadata.getMergeInfo();
        if (mergeInfo != null) {
            com.fasterxml.jackson.databind.d<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
            Boolean supportsUpdate = valueDeserializer.supportsUpdate(deserializationContext.getConfig());
            if (supportsUpdate == null) {
                if (mergeInfo.f14433b) {
                    return settableBeanProperty;
                }
            } else if (!supportsUpdate.booleanValue()) {
                if (!mergeInfo.f14433b) {
                    deserializationContext.handleBadMerge(valueDeserializer);
                }
                return settableBeanProperty;
            }
            AnnotatedMember annotatedMember = mergeInfo.f14432a;
            annotatedMember.fixAccess(deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            if (!(settableBeanProperty instanceof SetterlessProperty)) {
                settableBeanProperty = MergingSettableBeanProperty.construct(settableBeanProperty, annotatedMember);
            }
        }
        l x02 = x0(deserializationContext, settableBeanProperty, propertyMetadata);
        return x02 != null ? settableBeanProperty.withNullProvider(x02) : settableBeanProperty;
    }

    protected SettableBeanProperty O0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        p objectIdInfo = settableBeanProperty.getObjectIdInfo();
        com.fasterxml.jackson.databind.d<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        return (objectIdInfo == null && (valueDeserializer == null ? null : valueDeserializer.getObjectIdReader()) == null) ? settableBeanProperty : new ObjectIdReferenceProperty(settableBeanProperty, objectIdInfo);
    }

    protected abstract BeanDeserializerBase P0();

    /* JADX INFO: Access modifiers changed from: protected */
    public Object Q0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this.f14613y.readObjectReference(jsonParser, deserializationContext);
        ObjectIdReader objectIdReader = this.f14613y;
        com.fasterxml.jackson.databind.deser.impl.j findObjectId = deserializationContext.findObjectId(readObjectReference, objectIdReader.generator, objectIdReader.resolver);
        Object g4 = findObjectId.g();
        if (g4 != null) {
            return g4;
        }
        throw new UnresolvedForwardReference(jsonParser, "Could not resolve Object Id [" + readObjectReference + "] (for " + this.f14594f + ").", jsonParser.t0(), findObjectId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object R0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> D0 = D0();
        if (D0 != null) {
            Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
            if (this.f14603o != null) {
                Y0(deserializationContext, createUsingDelegate);
            }
            return createUsingDelegate;
        } else if (this.f14599k != null) {
            return E0(jsonParser, deserializationContext);
        } else {
            Class<?> rawClass = this.f14594f.getRawClass();
            if (com.fasterxml.jackson.databind.util.g.c0(rawClass)) {
                return deserializationContext.handleMissingInstantiator(rawClass, null, jsonParser, "non-static inner classes like this can only by instantiated using default, no-argument constructor", new Object[0]);
            }
            return deserializationContext.handleMissingInstantiator(rawClass, getValueInstantiator(), jsonParser, "cannot deserialize from Object value (no delegate- or property-based Creator)", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object S0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializeFromObject(jsonParser, deserializationContext);
    }

    protected com.fasterxml.jackson.databind.d<Object> T0(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        Object findDeserializationConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializationConverter = annotationIntrospector.findDeserializationConverter(settableBeanProperty.getMember())) == null) {
            return null;
        }
        com.fasterxml.jackson.databind.util.h<Object, Object> converterInstance = deserializationContext.converterInstance(settableBeanProperty.getMember(), findDeserializationConverter);
        JavaType a10 = converterInstance.a(deserializationContext.getTypeFactory());
        return new StdDelegatingDeserializer(converterInstance, a10, deserializationContext.findNonContextualValueDeserializer(a10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_IGNORED_PROPERTIES)) {
            jsonParser.U1();
            return;
        }
        throw IgnoredPropertyException.from(jsonParser, obj, str, getKnownPropertyNames());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object V0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, t tVar) throws IOException {
        com.fasterxml.jackson.databind.d<Object> H0 = H0(deserializationContext, obj, tVar);
        if (H0 == null) {
            if (tVar != null) {
                obj = W0(deserializationContext, obj, tVar);
            }
            return jsonParser != null ? deserialize(jsonParser, deserializationContext, obj) : obj;
        }
        if (tVar != null) {
            tVar.S0();
            JsonParser i22 = tVar.i2();
            i22.y1();
            obj = H0.deserialize(i22, deserializationContext, obj);
        }
        return jsonParser != null ? H0.deserialize(jsonParser, deserializationContext, obj) : obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object W0(DeserializationContext deserializationContext, Object obj, t tVar) throws IOException {
        tVar.S0();
        JsonParser i22 = tVar.i2();
        while (i22.y1() != JsonToken.END_OBJECT) {
            String M = i22.M();
            i22.y1();
            z0(i22, deserializationContext, obj, M);
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void X0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (IgnorePropertiesUtil.c(str, this.f14605q, this.f14606r)) {
            U0(jsonParser, deserializationContext, obj, str);
            return;
        }
        SettableAnyProperty settableAnyProperty = this.f14604p;
        if (settableAnyProperty != null) {
            try {
                settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, str);
                return;
            } catch (Exception e4) {
                wrapAndThrow(e4, obj, str, deserializationContext);
                return;
            }
        }
        z0(jsonParser, deserializationContext, obj, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Y0(DeserializationContext deserializationContext, Object obj) throws IOException {
        for (ValueInjector valueInjector : this.f14603o) {
            valueInjector.inject(deserializationContext, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object a1(Throwable th, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        com.fasterxml.jackson.databind.util.g.t0(th);
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (deserializationContext != null) {
            if (!deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) {
                com.fasterxml.jackson.databind.util.g.v0(th);
            }
            return deserializationContext.handleInstantiationProblem(this.f14594f.getRawClass(), null, th);
        }
        throw new IllegalArgumentException(th.getMessage(), th);
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        BeanPropertyMap beanPropertyMap;
        BeanPropertyMap withCaseInsensitivity;
        p findObjectIdInfo;
        JavaType javaType;
        SettableBeanProperty settableBeanProperty;
        PropertyBasedObjectIdGenerator objectIdGeneratorInstance;
        ObjectIdReader objectIdReader = this.f14613y;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        AnnotatedMember member = StdDeserializer.K(beanProperty, annotationIntrospector) ? beanProperty.getMember() : null;
        if (member != null && (findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member)) != null) {
            p findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
            Class<? extends ObjectIdGenerator<?>> c10 = findObjectReferenceInfo.c();
            c0 objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectReferenceInfo);
            if (c10 == ObjectIdGenerators.PropertyGenerator.class) {
                PropertyName d4 = findObjectReferenceInfo.d();
                SettableBeanProperty findProperty = findProperty(d4);
                if (findProperty == null) {
                    return (com.fasterxml.jackson.databind.d) deserializationContext.reportBadDefinition(this.f14594f, String.format("Invalid Object Id definition for %s: cannot find property with name %s", com.fasterxml.jackson.databind.util.g.j0(handledType()), com.fasterxml.jackson.databind.util.g.g0(d4)));
                }
                javaType = findProperty.getType();
                settableBeanProperty = findProperty;
                objectIdGeneratorInstance = new PropertyBasedObjectIdGenerator(findObjectReferenceInfo.f());
            } else {
                javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) c10), ObjectIdGenerator.class)[0];
                settableBeanProperty = null;
                objectIdGeneratorInstance = deserializationContext.objectIdGeneratorInstance(member, findObjectReferenceInfo);
            }
            JavaType javaType2 = javaType;
            objectIdReader = ObjectIdReader.construct(javaType2, findObjectReferenceInfo.d(), objectIdGeneratorInstance, deserializationContext.findRootValueDeserializer(javaType2), settableBeanProperty, objectIdResolverInstance);
        }
        BeanDeserializerBase withObjectIdReader = (objectIdReader == null || objectIdReader == this.f14613y) ? this : withObjectIdReader(objectIdReader);
        if (member != null) {
            withObjectIdReader = I0(deserializationContext, annotationIntrospector, withObjectIdReader, member);
        }
        JsonFormat.Value w02 = w0(deserializationContext, beanProperty, handledType());
        if (w02 != null) {
            r3 = w02.hasShape() ? w02.getShape() : null;
            Boolean feature = w02.getFeature(JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
            if (feature != null && (withCaseInsensitivity = (beanPropertyMap = this.f14602n).withCaseInsensitivity(feature.booleanValue())) != beanPropertyMap) {
                withObjectIdReader = withObjectIdReader.withBeanProperties(withCaseInsensitivity);
            }
        }
        if (r3 == null) {
            r3 = this.f14595g;
        }
        return r3 == JsonFormat.Shape.ARRAY ? withObjectIdReader.P0() : withObjectIdReader;
    }

    public Iterator<SettableBeanProperty> creatorProperties() {
        com.fasterxml.jackson.databind.deser.impl.g gVar = this.f14599k;
        if (gVar == null) {
            return Collections.emptyList().iterator();
        }
        return gVar.g().iterator();
    }

    @Deprecated
    public Object deserializeFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return q(jsonParser, deserializationContext);
    }

    public Object deserializeFromBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> D0 = D0();
        if (D0 != null && !this.f14596h.canCreateFromBoolean()) {
            Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
            if (this.f14603o != null) {
                Y0(deserializationContext, createUsingDelegate);
            }
            return createUsingDelegate;
        }
        return this.f14596h.createFromBoolean(deserializationContext, jsonParser.W() == JsonToken.VALUE_TRUE);
    }

    public Object deserializeFromDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonParser.NumberType J0 = jsonParser.J0();
        if (J0 != JsonParser.NumberType.DOUBLE && J0 != JsonParser.NumberType.FLOAT) {
            if (J0 == JsonParser.NumberType.BIG_DECIMAL) {
                com.fasterxml.jackson.databind.d<Object> D0 = D0();
                if (D0 != null && !this.f14596h.canCreateFromBigDecimal()) {
                    Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
                    if (this.f14603o != null) {
                        Y0(deserializationContext, createUsingDelegate);
                    }
                    return createUsingDelegate;
                }
                return this.f14596h.createFromBigDecimal(deserializationContext, jsonParser.y0());
            }
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "no suitable creator method found to deserialize from Number value (%s)", jsonParser.K0());
        }
        com.fasterxml.jackson.databind.d<Object> D02 = D0();
        if (D02 != null && !this.f14596h.canCreateFromDouble()) {
            Object createUsingDelegate2 = this.f14596h.createUsingDelegate(deserializationContext, D02.deserialize(jsonParser, deserializationContext));
            if (this.f14603o != null) {
                Y0(deserializationContext, createUsingDelegate2);
            }
            return createUsingDelegate2;
        }
        return this.f14596h.createFromDouble(deserializationContext, jsonParser.z0());
    }

    public Object deserializeFromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14613y != null) {
            return Q0(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> D0 = D0();
        if (D0 != null && !this.f14596h.canCreateFromString()) {
            Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
            if (this.f14603o != null) {
                Y0(deserializationContext, createUsingDelegate);
            }
            return createUsingDelegate;
        }
        Object A0 = jsonParser.A0();
        return (A0 == null || this.f14594f.isTypeOrSuperTypeOf(A0.getClass())) ? A0 : deserializationContext.handleWeirdNativeValue(this.f14594f, A0, jsonParser);
    }

    public Object deserializeFromNumber(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14613y != null) {
            return Q0(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> D0 = D0();
        JsonParser.NumberType J0 = jsonParser.J0();
        if (J0 == JsonParser.NumberType.INT) {
            if (D0 != null && !this.f14596h.canCreateFromInt()) {
                Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
                if (this.f14603o != null) {
                    Y0(deserializationContext, createUsingDelegate);
                }
                return createUsingDelegate;
            }
            return this.f14596h.createFromInt(deserializationContext, jsonParser.F0());
        } else if (J0 == JsonParser.NumberType.LONG) {
            if (D0 != null && !this.f14596h.canCreateFromInt()) {
                Object createUsingDelegate2 = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
                if (this.f14603o != null) {
                    Y0(deserializationContext, createUsingDelegate2);
                }
                return createUsingDelegate2;
            }
            return this.f14596h.createFromLong(deserializationContext, jsonParser.H0());
        } else if (J0 == JsonParser.NumberType.BIG_INTEGER) {
            if (D0 != null && !this.f14596h.canCreateFromBigInteger()) {
                Object createUsingDelegate3 = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
                if (this.f14603o != null) {
                    Y0(deserializationContext, createUsingDelegate3);
                }
                return createUsingDelegate3;
            }
            return this.f14596h.createFromBigInteger(deserializationContext, jsonParser.n0());
        } else {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "no suitable creator method found to deserialize from Number value (%s)", jsonParser.K0());
        }
    }

    public abstract Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public Object deserializeFromString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this.f14613y != null) {
            return Q0(jsonParser, deserializationContext);
        }
        com.fasterxml.jackson.databind.d<Object> D0 = D0();
        if (D0 != null && !this.f14596h.canCreateFromString()) {
            Object createUsingDelegate = this.f14596h.createUsingDelegate(deserializationContext, D0.deserialize(jsonParser, deserializationContext));
            if (this.f14603o != null) {
                Y0(deserializationContext, createUsingDelegate);
            }
            return createUsingDelegate;
        }
        return t(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        Object M0;
        if (this.f14613y != null) {
            if (jsonParser.G() && (M0 = jsonParser.M0()) != null) {
                return J0(jsonParser, deserializationContext, bVar.deserializeTypedFromObject(jsonParser, deserializationContext), M0);
            }
            JsonToken W = jsonParser.W();
            if (W != null) {
                if (W.isScalarValue()) {
                    return Q0(jsonParser, deserializationContext);
                }
                if (W == JsonToken.START_OBJECT) {
                    W = jsonParser.y1();
                }
                if (W == JsonToken.FIELD_NAME && this.f14613y.maySerializeAsObject() && this.f14613y.isValidReferencePropertyName(jsonParser.M(), jsonParser)) {
                    return Q0(jsonParser, deserializationContext);
                }
            }
        }
        return bVar.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public SettableBeanProperty findBackReference(String str) {
        Map<String, SettableBeanProperty> map = this.f14609u;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return findProperty(propertyName.getSimpleName());
    }

    @Deprecated
    public final Class<?> getBeanClass() {
        return this.f14594f.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.d
    public AccessPattern getEmptyAccessPattern() {
        return AccessPattern.DYNAMIC;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        try {
            return this.f14596h.createUsingDefault(deserializationContext);
        } catch (IOException e4) {
            return com.fasterxml.jackson.databind.util.g.s0(deserializationContext, e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<Object> getKnownPropertyNames() {
        ArrayList arrayList = new ArrayList();
        Iterator<SettableBeanProperty> it = this.f14602n.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public AccessPattern getNullAccessPattern() {
        return AccessPattern.ALWAYS_NULL;
    }

    @Override // com.fasterxml.jackson.databind.d
    public ObjectIdReader getObjectIdReader() {
        return this.f14613y;
    }

    public int getPropertyCount() {
        return this.f14602n.size();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f14596h;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this.f14594f;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Class<?> handledType() {
        return this.f14594f.getRawClass();
    }

    public boolean hasProperty(String str) {
        return this.f14602n.find(str) != null;
    }

    public boolean hasViews() {
        return this.f14608t;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    public boolean isCaseInsensitive() {
        return this.f14602n.isCaseInsensitive();
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.POJO;
    }

    public Iterator<SettableBeanProperty> properties() {
        BeanPropertyMap beanPropertyMap = this.f14602n;
        if (beanPropertyMap != null) {
            return beanPropertyMap.iterator();
        }
        throw new IllegalStateException("Can only call after BeanDeserializer has been resolved");
    }

    public void replaceProperty(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        this.f14602n.replace(settableBeanProperty, settableBeanProperty2);
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        SettableBeanProperty[] settableBeanPropertyArr;
        com.fasterxml.jackson.databind.d<Object> valueDeserializer;
        com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer;
        d.a aVar = null;
        boolean z9 = false;
        if (this.f14596h.canCreateFromObjectWith()) {
            settableBeanPropertyArr = this.f14596h.getFromObjectArguments(deserializationContext.getConfig());
            if (this.f14605q != null || this.f14606r != null) {
                int length = settableBeanPropertyArr.length;
                for (int i4 = 0; i4 < length; i4++) {
                    if (IgnorePropertiesUtil.c(settableBeanPropertyArr[i4].getName(), this.f14605q, this.f14606r)) {
                        settableBeanPropertyArr[i4].markAsIgnorable();
                    }
                }
            }
        } else {
            settableBeanPropertyArr = null;
        }
        Iterator<SettableBeanProperty> it = this.f14602n.iterator();
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            if (!next.hasValueDeserializer()) {
                com.fasterxml.jackson.databind.d<Object> T0 = T0(deserializationContext, next);
                if (T0 == null) {
                    T0 = deserializationContext.findNonContextualValueDeserializer(next.getType());
                }
                K0(this.f14602n, settableBeanPropertyArr, next, next.withValueDeserializer(T0));
            }
        }
        Iterator<SettableBeanProperty> it2 = this.f14602n.iterator();
        com.fasterxml.jackson.databind.deser.impl.k kVar = null;
        while (it2.hasNext()) {
            SettableBeanProperty next2 = it2.next();
            SettableBeanProperty M0 = M0(deserializationContext, next2.withValueDeserializer(deserializationContext.handlePrimaryContextualization(next2.getValueDeserializer(), next2, next2.getType())));
            if (!(M0 instanceof ManagedReferenceProperty)) {
                M0 = O0(deserializationContext, M0);
            }
            NameTransformer G0 = G0(deserializationContext, M0);
            if (G0 != null && (unwrappingDeserializer = (valueDeserializer = M0.getValueDeserializer()).unwrappingDeserializer(G0)) != valueDeserializer && unwrappingDeserializer != null) {
                SettableBeanProperty withValueDeserializer = M0.withValueDeserializer(unwrappingDeserializer);
                if (kVar == null) {
                    kVar = new com.fasterxml.jackson.databind.deser.impl.k();
                }
                kVar.a(withValueDeserializer);
                this.f14602n.remove(withValueDeserializer);
            } else {
                SettableBeanProperty L0 = L0(deserializationContext, N0(deserializationContext, M0, M0.getMetadata()));
                if (L0 != next2) {
                    K0(this.f14602n, settableBeanPropertyArr, next2, L0);
                }
                if (L0.hasValueTypeDeserializer()) {
                    com.fasterxml.jackson.databind.jsontype.b valueTypeDeserializer = L0.getValueTypeDeserializer();
                    if (valueTypeDeserializer.getTypeInclusion() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                        if (aVar == null) {
                            aVar = com.fasterxml.jackson.databind.deser.impl.d.d(this.f14594f);
                        }
                        aVar.b(L0, valueTypeDeserializer);
                        this.f14602n.remove(L0);
                    }
                }
            }
        }
        SettableAnyProperty settableAnyProperty = this.f14604p;
        if (settableAnyProperty != null && !settableAnyProperty.hasValueDeserializer()) {
            SettableAnyProperty settableAnyProperty2 = this.f14604p;
            this.f14604p = settableAnyProperty2.withValueDeserializer(u0(deserializationContext, settableAnyProperty2.getType(), this.f14604p.getProperty()));
        }
        if (this.f14596h.canCreateUsingDelegate()) {
            JavaType delegateType = this.f14596h.getDelegateType(deserializationContext.getConfig());
            if (delegateType == null) {
                JavaType javaType = this.f14594f;
                deserializationContext.reportBadDefinition(javaType, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", com.fasterxml.jackson.databind.util.g.P(javaType), com.fasterxml.jackson.databind.util.g.j(this.f14596h)));
            }
            this.f14597i = F0(deserializationContext, delegateType, this.f14596h.getDelegateCreator());
        }
        if (this.f14596h.canCreateUsingArrayDelegate()) {
            JavaType arrayDelegateType = this.f14596h.getArrayDelegateType(deserializationContext.getConfig());
            if (arrayDelegateType == null) {
                JavaType javaType2 = this.f14594f;
                deserializationContext.reportBadDefinition(javaType2, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", com.fasterxml.jackson.databind.util.g.P(javaType2), com.fasterxml.jackson.databind.util.g.j(this.f14596h)));
            }
            this.f14598j = F0(deserializationContext, arrayDelegateType, this.f14596h.getArrayDelegateCreator());
        }
        if (settableBeanPropertyArr != null) {
            this.f14599k = com.fasterxml.jackson.databind.deser.impl.g.c(deserializationContext, this.f14596h, settableBeanPropertyArr, this.f14602n);
        }
        if (aVar != null) {
            this.f14612x = aVar.c(this.f14602n);
            this.f14600l = true;
        }
        this.f14611w = kVar;
        if (kVar != null) {
            this.f14600l = true;
        }
        if (this.f14601m && !this.f14600l) {
            z9 = true;
        }
        this.f14601m = z9;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    @Override // com.fasterxml.jackson.databind.d
    public abstract com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer(NameTransformer nameTransformer);

    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        throw new UnsupportedOperationException("Class " + getClass().getName() + " does not override `withBeanProperties()`, needs to");
    }

    public abstract BeanDeserializerBase withByNameInclusion(Set<String> set, Set<String> set2);

    @Deprecated
    public BeanDeserializerBase withIgnorableProperties(Set<String> set) {
        return withByNameInclusion(set, this.f14606r);
    }

    public abstract BeanDeserializerBase withIgnoreAllUnknown(boolean z9);

    public abstract BeanDeserializerBase withObjectIdReader(ObjectIdReader objectIdReader);

    public void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        throw JsonMappingException.wrapWithPath(Z0(th, deserializationContext), obj, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public void z0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (this.f14607s) {
            jsonParser.U1();
            return;
        }
        if (IgnorePropertiesUtil.c(str, this.f14605q, this.f14606r)) {
            U0(jsonParser, deserializationContext, obj, str);
        }
        super.z0(jsonParser, deserializationContext, obj, str);
    }

    public SettableBeanProperty findProperty(String str) {
        com.fasterxml.jackson.databind.deser.impl.g gVar;
        BeanPropertyMap beanPropertyMap = this.f14602n;
        SettableBeanProperty find = beanPropertyMap == null ? null : beanPropertyMap.find(str);
        return (find != null || (gVar = this.f14599k) == null) ? find : gVar.f(str);
    }

    public SettableBeanProperty findProperty(int i4) {
        com.fasterxml.jackson.databind.deser.impl.g gVar;
        BeanPropertyMap beanPropertyMap = this.f14602n;
        SettableBeanProperty find = beanPropertyMap == null ? null : beanPropertyMap.find(i4);
        return (find != null || (gVar = this.f14599k) == null) ? find : gVar.e(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase) {
        this(beanDeserializerBase, beanDeserializerBase.f14607s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, boolean z9) {
        super(beanDeserializerBase.f14594f);
        this.f14594f = beanDeserializerBase.f14594f;
        this.f14596h = beanDeserializerBase.f14596h;
        this.f14597i = beanDeserializerBase.f14597i;
        this.f14598j = beanDeserializerBase.f14598j;
        this.f14599k = beanDeserializerBase.f14599k;
        this.f14602n = beanDeserializerBase.f14602n;
        this.f14609u = beanDeserializerBase.f14609u;
        this.f14605q = beanDeserializerBase.f14605q;
        this.f14607s = z9;
        this.f14606r = beanDeserializerBase.f14606r;
        this.f14604p = beanDeserializerBase.f14604p;
        this.f14603o = beanDeserializerBase.f14603o;
        this.f14613y = beanDeserializerBase.f14613y;
        this.f14600l = beanDeserializerBase.f14600l;
        this.f14611w = beanDeserializerBase.f14611w;
        this.f14608t = beanDeserializerBase.f14608t;
        this.f14595g = beanDeserializerBase.f14595g;
        this.f14601m = beanDeserializerBase.f14601m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase.f14594f);
        this.f14594f = beanDeserializerBase.f14594f;
        this.f14596h = beanDeserializerBase.f14596h;
        this.f14597i = beanDeserializerBase.f14597i;
        this.f14598j = beanDeserializerBase.f14598j;
        this.f14599k = beanDeserializerBase.f14599k;
        this.f14609u = beanDeserializerBase.f14609u;
        this.f14605q = beanDeserializerBase.f14605q;
        this.f14607s = nameTransformer != null || beanDeserializerBase.f14607s;
        this.f14606r = beanDeserializerBase.f14606r;
        this.f14604p = beanDeserializerBase.f14604p;
        this.f14603o = beanDeserializerBase.f14603o;
        this.f14613y = beanDeserializerBase.f14613y;
        this.f14600l = beanDeserializerBase.f14600l;
        com.fasterxml.jackson.databind.deser.impl.k kVar = beanDeserializerBase.f14611w;
        if (nameTransformer != null) {
            kVar = kVar != null ? kVar.c(nameTransformer) : kVar;
            this.f14602n = beanDeserializerBase.f14602n.renameAll(nameTransformer);
        } else {
            this.f14602n = beanDeserializerBase.f14602n;
        }
        this.f14611w = kVar;
        this.f14608t = beanDeserializerBase.f14608t;
        this.f14595g = beanDeserializerBase.f14595g;
        this.f14601m = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase.f14594f);
        this.f14594f = beanDeserializerBase.f14594f;
        this.f14596h = beanDeserializerBase.f14596h;
        this.f14597i = beanDeserializerBase.f14597i;
        this.f14598j = beanDeserializerBase.f14598j;
        this.f14599k = beanDeserializerBase.f14599k;
        this.f14609u = beanDeserializerBase.f14609u;
        this.f14605q = beanDeserializerBase.f14605q;
        this.f14607s = beanDeserializerBase.f14607s;
        this.f14606r = beanDeserializerBase.f14606r;
        this.f14604p = beanDeserializerBase.f14604p;
        this.f14603o = beanDeserializerBase.f14603o;
        this.f14600l = beanDeserializerBase.f14600l;
        this.f14611w = beanDeserializerBase.f14611w;
        this.f14608t = beanDeserializerBase.f14608t;
        this.f14595g = beanDeserializerBase.f14595g;
        this.f14613y = objectIdReader;
        if (objectIdReader == null) {
            this.f14602n = beanDeserializerBase.f14602n;
            this.f14601m = beanDeserializerBase.f14601m;
            return;
        }
        this.f14602n = beanDeserializerBase.f14602n.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        this.f14601m = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, Set<String> set, Set<String> set2) {
        super(beanDeserializerBase.f14594f);
        this.f14594f = beanDeserializerBase.f14594f;
        this.f14596h = beanDeserializerBase.f14596h;
        this.f14597i = beanDeserializerBase.f14597i;
        this.f14598j = beanDeserializerBase.f14598j;
        this.f14599k = beanDeserializerBase.f14599k;
        this.f14609u = beanDeserializerBase.f14609u;
        this.f14605q = set;
        this.f14607s = beanDeserializerBase.f14607s;
        this.f14606r = set2;
        this.f14604p = beanDeserializerBase.f14604p;
        this.f14603o = beanDeserializerBase.f14603o;
        this.f14600l = beanDeserializerBase.f14600l;
        this.f14611w = beanDeserializerBase.f14611w;
        this.f14608t = beanDeserializerBase.f14608t;
        this.f14595g = beanDeserializerBase.f14595g;
        this.f14601m = beanDeserializerBase.f14601m;
        this.f14613y = beanDeserializerBase.f14613y;
        this.f14602n = beanDeserializerBase.f14602n.withoutProperties(set, set2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, BeanPropertyMap beanPropertyMap) {
        super(beanDeserializerBase.f14594f);
        this.f14594f = beanDeserializerBase.f14594f;
        this.f14596h = beanDeserializerBase.f14596h;
        this.f14597i = beanDeserializerBase.f14597i;
        this.f14598j = beanDeserializerBase.f14598j;
        this.f14599k = beanDeserializerBase.f14599k;
        this.f14602n = beanPropertyMap;
        this.f14609u = beanDeserializerBase.f14609u;
        this.f14605q = beanDeserializerBase.f14605q;
        this.f14607s = beanDeserializerBase.f14607s;
        this.f14606r = beanDeserializerBase.f14606r;
        this.f14604p = beanDeserializerBase.f14604p;
        this.f14603o = beanDeserializerBase.f14603o;
        this.f14613y = beanDeserializerBase.f14613y;
        this.f14600l = beanDeserializerBase.f14600l;
        this.f14611w = beanDeserializerBase.f14611w;
        this.f14608t = beanDeserializerBase.f14608t;
        this.f14595g = beanDeserializerBase.f14595g;
        this.f14601m = beanDeserializerBase.f14601m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, Set<String> set) {
        this(beanDeserializerBase, set, beanDeserializerBase.f14606r);
    }
}
