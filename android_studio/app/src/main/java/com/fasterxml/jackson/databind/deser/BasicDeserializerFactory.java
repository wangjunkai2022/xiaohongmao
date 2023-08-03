package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.ConstructorDetector;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.std.ArrayBlockingQueueDeserializer;
import com.fasterxml.jackson.databind.deser.std.AtomicReferenceDeserializer;
import com.fasterxml.jackson.databind.deser.std.CollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.deser.std.EnumDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumSetDeserializer;
import com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapEntryDeserializer;
import com.fasterxml.jackson.databind.deser.std.NumberDeserializers;
import com.fasterxml.jackson.databind.deser.std.ObjectArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer;
import com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.s;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.r;
import com.fasterxml.jackson.databind.util.t;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class BasicDeserializerFactory extends g implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final Class<?> f14567c = Object.class;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f14568d = String.class;

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f14569e = CharSequence.class;

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f14570f = Iterable.class;

    /* renamed from: g  reason: collision with root package name */
    private static final Class<?> f14571g = Map.Entry.class;

    /* renamed from: h  reason: collision with root package name */
    private static final Class<?> f14572h = Serializable.class;

    /* renamed from: i  reason: collision with root package name */
    protected static final PropertyName f14573i = new PropertyName("@JsonUnwrapped");

    /* renamed from: b  reason: collision with root package name */
    protected final DeserializerFactoryConfig f14574b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14575a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14576b;

        static {
            int[] iArr = new int[ConstructorDetector.SingleArgConstructor.values().length];
            f14576b = iArr;
            try {
                iArr[ConstructorDetector.SingleArgConstructor.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14576b[ConstructorDetector.SingleArgConstructor.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14576b[ConstructorDetector.SingleArgConstructor.REQUIRE_MODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14576b[ConstructorDetector.SingleArgConstructor.HEURISTIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[JsonCreator.Mode.values().length];
            f14575a = iArr2;
            try {
                iArr2[JsonCreator.Mode.DELEGATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14575a[JsonCreator.Mode.PROPERTIES.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14575a[JsonCreator.Mode.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static final HashMap<String, Class<? extends Collection>> f14577a;

        /* renamed from: b  reason: collision with root package name */
        static final HashMap<String, Class<? extends Map>> f14578b;

        static {
            HashMap<String, Class<? extends Collection>> hashMap = new HashMap<>();
            hashMap.put(Collection.class.getName(), ArrayList.class);
            hashMap.put(List.class.getName(), ArrayList.class);
            hashMap.put(Set.class.getName(), HashSet.class);
            hashMap.put(SortedSet.class.getName(), TreeSet.class);
            hashMap.put(Queue.class.getName(), LinkedList.class);
            hashMap.put(AbstractList.class.getName(), ArrayList.class);
            hashMap.put(AbstractSet.class.getName(), HashSet.class);
            hashMap.put(Deque.class.getName(), LinkedList.class);
            hashMap.put(NavigableSet.class.getName(), TreeSet.class);
            f14577a = hashMap;
            HashMap<String, Class<? extends Map>> hashMap2 = new HashMap<>();
            hashMap2.put(Map.class.getName(), LinkedHashMap.class);
            hashMap2.put(AbstractMap.class.getName(), LinkedHashMap.class);
            hashMap2.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
            hashMap2.put(SortedMap.class.getName(), TreeMap.class);
            hashMap2.put(NavigableMap.class.getName(), TreeMap.class);
            hashMap2.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
            f14578b = hashMap2;
        }

        protected b() {
        }

        public static Class<?> a(JavaType javaType) {
            return f14577a.get(javaType.getRawClass().getName());
        }

        public static Class<?> b(JavaType javaType) {
            return f14578b.get(javaType.getRawClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final DeserializationContext f14579a;

        /* renamed from: b  reason: collision with root package name */
        public final com.fasterxml.jackson.databind.b f14580b;

        /* renamed from: c  reason: collision with root package name */
        public final VisibilityChecker<?> f14581c;

        /* renamed from: d  reason: collision with root package name */
        public final com.fasterxml.jackson.databind.deser.impl.b f14582d;

        /* renamed from: e  reason: collision with root package name */
        public final Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> f14583e;

        /* renamed from: f  reason: collision with root package name */
        private List<com.fasterxml.jackson.databind.deser.impl.a> f14584f;

        /* renamed from: g  reason: collision with root package name */
        private int f14585g;

        /* renamed from: h  reason: collision with root package name */
        private List<com.fasterxml.jackson.databind.deser.impl.a> f14586h;

        /* renamed from: i  reason: collision with root package name */
        private int f14587i;

        public c(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, VisibilityChecker<?> visibilityChecker, com.fasterxml.jackson.databind.deser.impl.b bVar2, Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map) {
            this.f14579a = deserializationContext;
            this.f14580b = bVar;
            this.f14581c = visibilityChecker;
            this.f14582d = bVar2;
            this.f14583e = map;
        }

        public void a(com.fasterxml.jackson.databind.deser.impl.a aVar) {
            if (this.f14586h == null) {
                this.f14586h = new LinkedList();
            }
            this.f14586h.add(aVar);
        }

        public void b(com.fasterxml.jackson.databind.deser.impl.a aVar) {
            if (this.f14584f == null) {
                this.f14584f = new LinkedList();
            }
            this.f14584f.add(aVar);
        }

        public AnnotationIntrospector c() {
            return this.f14579a.getAnnotationIntrospector();
        }

        public boolean d() {
            return this.f14587i > 0;
        }

        public boolean e() {
            return this.f14585g > 0;
        }

        public boolean f() {
            return this.f14586h != null;
        }

        public boolean g() {
            return this.f14584f != null;
        }

        public List<com.fasterxml.jackson.databind.deser.impl.a> h() {
            return this.f14586h;
        }

        public List<com.fasterxml.jackson.databind.deser.impl.a> i() {
            return this.f14584f;
        }

        public void j() {
            this.f14587i++;
        }

        public void k() {
            this.f14585g++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        this.f14574b = deserializerFactoryConfig;
    }

    private PropertyName A(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotationIntrospector != null) {
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
            if (findNameForDeserialization == null || findNameForDeserialization.isEmpty()) {
                String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
                if (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) {
                    return null;
                }
                return PropertyName.construct(findImplicitPropertyName);
            }
            return findNameForDeserialization;
        }
        return null;
    }

    private JavaType H(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (this.f14574b.hasAbstractTypeResolvers()) {
            for (com.fasterxml.jackson.databind.a aVar : this.f14574b.abstractTypeResolvers()) {
                JavaType findTypeMapping = aVar.findTypeMapping(deserializationConfig, javaType);
                if (findTypeMapping != null && !findTypeMapping.hasRawClass(rawClass)) {
                    return findTypeMapping;
                }
            }
            return null;
        }
        return null;
    }

    private boolean l(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, com.fasterxml.jackson.databind.introspect.k kVar) {
        String name;
        if ((kVar == null || !kVar.A()) && annotationIntrospector.findInjectableValue(annotatedWithParams.getParameter(0)) == null) {
            return (kVar == null || (name = kVar.getName()) == null || name.isEmpty() || !kVar.b()) ? false : true;
        }
        return true;
    }

    private void m(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, com.fasterxml.jackson.databind.deser.impl.b bVar2, List<AnnotatedWithParams> list) throws JsonMappingException {
        int i4;
        Iterator<AnnotatedWithParams> it = list.iterator();
        AnnotatedWithParams annotatedWithParams = null;
        AnnotatedWithParams annotatedWithParams2 = null;
        SettableBeanProperty[] settableBeanPropertyArr = null;
        while (true) {
            if (!it.hasNext()) {
                annotatedWithParams = annotatedWithParams2;
                break;
            }
            AnnotatedWithParams next = it.next();
            if (visibilityChecker.isCreatorVisible(next)) {
                int parameterCount = next.getParameterCount();
                SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                int i10 = 0;
                while (true) {
                    if (i10 < parameterCount) {
                        AnnotatedParameter parameter = next.getParameter(i10);
                        PropertyName A = A(parameter, annotationIntrospector);
                        if (A != null && !A.isEmpty()) {
                            settableBeanPropertyArr2[i10] = K(deserializationContext, bVar, A, parameter.getIndex(), parameter, null);
                            i10++;
                        }
                    } else if (annotatedWithParams2 != null) {
                        break;
                    } else {
                        annotatedWithParams2 = next;
                        settableBeanPropertyArr = settableBeanPropertyArr2;
                    }
                }
            }
        }
        if (annotatedWithParams != null) {
            bVar2.l(annotatedWithParams, false, settableBeanPropertyArr);
            com.fasterxml.jackson.databind.introspect.j jVar = (com.fasterxml.jackson.databind.introspect.j) bVar;
            for (SettableBeanProperty settableBeanProperty : settableBeanPropertyArr) {
                PropertyName fullName = settableBeanProperty.getFullName();
                if (!jVar.W(fullName)) {
                    jVar.Q(r.F(deserializationContext.getConfig(), settableBeanProperty.getMember(), fullName));
                }
            }
        }
    }

    private com.fasterxml.jackson.databind.h o(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        com.fasterxml.jackson.databind.b introspect = config.introspect(javaType);
        com.fasterxml.jackson.databind.h O = O(deserializationContext, introspect.A());
        if (O != null) {
            return O;
        }
        com.fasterxml.jackson.databind.d<?> u9 = u(rawClass, config, introspect);
        if (u9 != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, u9);
        }
        com.fasterxml.jackson.databind.d<Object> N = N(deserializationContext, introspect.A());
        if (N != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, N);
        }
        EnumResolver L = L(rawClass, config, introspect.p());
        for (AnnotatedMethod annotatedMethod : introspect.D()) {
            if (E(deserializationContext, annotatedMethod)) {
                if (annotatedMethod.getParameterCount() == 1 && annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                    if (annotatedMethod.getRawParameterType(0) == String.class) {
                        if (config.canOverrideAccessModifiers()) {
                            com.fasterxml.jackson.databind.util.g.i(annotatedMethod.getMember(), deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                        }
                        return StdKeyDeserializers.constructEnumKeyDeserializer(L, annotatedMethod);
                    }
                } else {
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                }
            }
        }
        return StdKeyDeserializers.constructEnumKeyDeserializer(L);
    }

    protected JavaType B(DeserializationConfig deserializationConfig, Class<?> cls) throws JsonMappingException {
        JavaType mapAbstractType = mapAbstractType(deserializationConfig, deserializationConfig.constructType(cls));
        if (mapAbstractType == null || mapAbstractType.hasRawClass(cls)) {
            return null;
        }
        return mapAbstractType;
    }

    protected PropertyMetadata C(DeserializationContext deserializationContext, BeanProperty beanProperty, PropertyMetadata propertyMetadata) {
        Nulls nulls;
        JsonSetter.Value findSetterInfo;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotatedMember member = beanProperty.getMember();
        Nulls nulls2 = null;
        if (member != null) {
            if (annotationIntrospector == null || (findSetterInfo = annotationIntrospector.findSetterInfo(member)) == null) {
                nulls = null;
            } else {
                nulls2 = findSetterInfo.nonDefaultValueNulls();
                nulls = findSetterInfo.nonDefaultContentNulls();
            }
            JsonSetter.Value setterInfo = config.getConfigOverride(beanProperty.getType().getRawClass()).getSetterInfo();
            if (setterInfo != null) {
                if (nulls2 == null) {
                    nulls2 = setterInfo.nonDefaultValueNulls();
                }
                if (nulls == null) {
                    nulls = setterInfo.nonDefaultContentNulls();
                }
            }
        } else {
            nulls = null;
        }
        JsonSetter.Value defaultSetterInfo = config.getDefaultSetterInfo();
        if (nulls2 == null) {
            nulls2 = defaultSetterInfo.nonDefaultValueNulls();
        }
        if (nulls == null) {
            nulls = defaultSetterInfo.nonDefaultContentNulls();
        }
        return (nulls2 == null && nulls == null) ? propertyMetadata : propertyMetadata.withNulls(nulls2, nulls);
    }

    protected boolean D(com.fasterxml.jackson.databind.deser.impl.b bVar, AnnotatedWithParams annotatedWithParams, boolean z9, boolean z10) {
        Class<?> rawParameterType = annotatedWithParams.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == f14569e) {
            if (z9 || z10) {
                bVar.m(annotatedWithParams, z9);
            }
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (z9 || z10) {
                bVar.j(annotatedWithParams, z9);
            }
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (z9 || z10) {
                bVar.k(annotatedWithParams, z9);
            }
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (z9 || z10) {
                bVar.i(annotatedWithParams, z9);
            }
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (z9 || z10) {
                bVar.g(annotatedWithParams, z9);
            }
            return true;
        } else {
            if (rawParameterType == BigInteger.class && (z9 || z10)) {
                bVar.f(annotatedWithParams, z9);
            }
            if (rawParameterType == BigDecimal.class && (z9 || z10)) {
                bVar.e(annotatedWithParams, z9);
            }
            if (z9) {
                bVar.h(annotatedWithParams, z9, null, 0);
                return true;
            }
            return false;
        }
    }

    protected boolean E(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonCreator.Mode findCreatorAnnotation;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return (annotationIntrospector == null || (findCreatorAnnotation = annotationIntrospector.findCreatorAnnotation(deserializationContext.getConfig(), aVar)) == null || findCreatorAnnotation == JsonCreator.Mode.DISABLED) ? false : true;
    }

    protected CollectionType F(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> a10 = b.a(javaType);
        if (a10 != null) {
            return (CollectionType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, a10, true);
        }
        return null;
    }

    protected MapType G(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<?> b10 = b.b(javaType);
        if (b10 != null) {
            return (MapType) deserializationConfig.getTypeFactory().constructSpecializedType(javaType, b10, true);
        }
        return null;
    }

    protected void I(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, AnnotatedParameter annotatedParameter) throws JsonMappingException {
        deserializationContext.reportBadTypeDefinition(bVar, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported", Integer.valueOf(annotatedParameter.getIndex()));
    }

    protected void J(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.deser.impl.a aVar, int i4, PropertyName propertyName, JacksonInject.Value value) throws JsonMappingException {
        if (propertyName == null && value == null) {
            deserializationContext.reportBadTypeDefinition(bVar, "Argument #%d of constructor %s has no property name (and is not Injectable): can not use as property-based Creator", Integer.valueOf(i4), aVar);
        }
    }

    protected SettableBeanProperty K(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, PropertyName propertyName, int i4, AnnotatedParameter annotatedParameter, JacksonInject.Value value) throws JsonMappingException {
        PropertyName findWrapperName;
        PropertyMetadata propertyMetadata;
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            propertyMetadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
            findWrapperName = null;
        } else {
            PropertyMetadata construct = PropertyMetadata.construct(annotationIntrospector.hasRequiredMarker(annotatedParameter), annotationIntrospector.findPropertyDescription(annotatedParameter), annotationIntrospector.findPropertyIndex(annotatedParameter), annotationIntrospector.findPropertyDefaultValue(annotatedParameter));
            findWrapperName = annotationIntrospector.findWrapperName(annotatedParameter);
            propertyMetadata = construct;
        }
        JavaType R = R(deserializationContext, annotatedParameter, annotatedParameter.getType());
        BeanProperty.Std std = new BeanProperty.Std(propertyName, R, findWrapperName, annotatedParameter, propertyMetadata);
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) R.getTypeHandler();
        if (bVar2 == null) {
            bVar2 = findTypeDeserializer(config, R);
        }
        CreatorProperty construct2 = CreatorProperty.construct(propertyName, R, std.getWrapperName(), bVar2, bVar.z(), annotatedParameter, i4, value, C(deserializationContext, std, propertyMetadata));
        com.fasterxml.jackson.databind.d<?> N = N(deserializationContext, annotatedParameter);
        if (N == null) {
            N = (com.fasterxml.jackson.databind.d) R.getValueHandler();
        }
        return N != null ? construct2.withValueDeserializer(deserializationContext.handlePrimaryContextualization(N, construct2, R)) : construct2;
    }

    protected EnumResolver L(Class<?> cls, DeserializationConfig deserializationConfig, AnnotatedMember annotatedMember) {
        if (annotatedMember != null) {
            if (deserializationConfig.canOverrideAccessModifiers()) {
                com.fasterxml.jackson.databind.util.g.i(annotatedMember.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return EnumResolver.constructUsingMethod(deserializationConfig, cls, annotatedMember);
        }
        return EnumResolver.constructFor(deserializationConfig, cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.d<Object> M(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findContentDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findContentDeserializer = annotationIntrospector.findContentDeserializer(aVar)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(aVar, findContentDeserializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.d<Object> N(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializer = annotationIntrospector.findDeserializer(aVar)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(aVar, findDeserializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.h O(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findKeyDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findKeyDeserializer = annotationIntrospector.findKeyDeserializer(aVar)) == null) {
            return null;
        }
        return deserializationContext.keyDeserializerInstance(aVar, findKeyDeserializer);
    }

    protected com.fasterxml.jackson.databind.d<?> P(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findDeserializer(javaType, deserializationContext.getConfig(), bVar);
    }

    @Deprecated
    protected JavaType Q(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return annotationIntrospector == null ? javaType : annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), aVar, javaType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType R(DeserializationContext deserializationContext, AnnotatedMember annotatedMember, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.h keyDeserializerInstance;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return javaType;
        }
        if (javaType.isMapLikeType() && javaType.getKeyType() != null && (keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotatedMember, annotationIntrospector.findKeyDeserializer(annotatedMember))) != null) {
            javaType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerInstance);
            javaType.getKeyType();
        }
        if (javaType.hasContentType()) {
            com.fasterxml.jackson.databind.d<Object> deserializerInstance = deserializationContext.deserializerInstance(annotatedMember, annotationIntrospector.findContentDeserializer(annotatedMember));
            if (deserializerInstance != null) {
                javaType = javaType.withContentValueHandler(deserializerInstance);
            }
            com.fasterxml.jackson.databind.jsontype.b findPropertyContentTypeDeserializer = findPropertyContentTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember);
            if (findPropertyContentTypeDeserializer != null) {
                javaType = javaType.withContentTypeHandler(findPropertyContentTypeDeserializer);
            }
        }
        com.fasterxml.jackson.databind.jsontype.b findPropertyTypeDeserializer = findPropertyTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember);
        if (findPropertyTypeDeserializer != null) {
            javaType = javaType.withTypeHandler(findPropertyTypeDeserializer);
        }
        return annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), annotatedMember, javaType);
    }

    @Deprecated
    protected JavaType S(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        return R(deserializationContext, annotatedMember, javaType);
    }

    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException {
        ValueInstantiator k10;
        if (obj == null) {
            return null;
        }
        if (obj instanceof ValueInstantiator) {
            return (ValueInstantiator) obj;
        }
        if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (ValueInstantiator.class.isAssignableFrom(cls)) {
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = deserializationConfig.getHandlerInstantiator();
                return (handlerInstantiator == null || (k10 = handlerInstantiator.k(deserializationConfig, aVar, cls)) == null) ? (ValueInstantiator) com.fasterxml.jackson.databind.util.g.n(cls, deserializationConfig.canOverrideAccessModifiers()) : k10;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<ValueInstantiator>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
    }

    @Deprecated
    protected void a(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.deser.impl.b bVar2, com.fasterxml.jackson.databind.deser.impl.a aVar) throws JsonMappingException {
        b(deserializationContext, bVar, bVar2, aVar, deserializationContext.getConfig().getConstructorDetector());
    }

    protected void b(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.deser.impl.b bVar2, com.fasterxml.jackson.databind.deser.impl.a aVar, ConstructorDetector constructorDetector) throws JsonMappingException {
        PropertyName propertyName;
        boolean z9;
        int e4;
        if (1 != aVar.g()) {
            if (!constructorDetector.singleArgCreatorDefaultsToProperties() && (e4 = aVar.e()) >= 0 && (constructorDetector.singleArgCreatorDefaultsToDelegating() || aVar.h(e4) == null)) {
                d(deserializationContext, bVar, bVar2, aVar);
                return;
            } else {
                h(deserializationContext, bVar, bVar2, aVar);
                return;
            }
        }
        AnnotatedParameter i4 = aVar.i(0);
        JacksonInject.Value f10 = aVar.f(0);
        int i10 = a.f14576b[constructorDetector.singleArgMode().ordinal()];
        if (i10 == 1) {
            propertyName = null;
            z9 = false;
        } else if (i10 == 2) {
            PropertyName h4 = aVar.h(0);
            if (h4 == null) {
                J(deserializationContext, bVar, aVar, 0, h4, f10);
            }
            propertyName = h4;
            z9 = true;
        } else if (i10 != 3) {
            com.fasterxml.jackson.databind.introspect.k j4 = aVar.j(0);
            PropertyName c10 = aVar.c(0);
            z9 = (c10 == null && f10 == null) ? false : true;
            if (!z9 && j4 != null) {
                c10 = aVar.h(0);
                z9 = c10 != null && j4.b();
            }
            propertyName = c10;
        } else {
            deserializationContext.reportBadTypeDefinition(bVar, "Single-argument constructor (%s) is annotated but no 'mode' defined; `CreatorDetector`configured with `SingleArgConstructor.REQUIRE_MODE`", aVar.b());
            return;
        }
        if (z9) {
            bVar2.l(aVar.b(), true, new SettableBeanProperty[]{K(deserializationContext, bVar, propertyName, 0, i4, f10)});
            return;
        }
        D(bVar2, aVar.b(), true, true);
        com.fasterxml.jackson.databind.introspect.k j10 = aVar.j(0);
        if (j10 != null) {
            ((s) j10).q0();
        }
    }

    protected void c(DeserializationContext deserializationContext, c cVar, boolean z9) throws JsonMappingException {
        com.fasterxml.jackson.databind.b bVar = cVar.f14580b;
        com.fasterxml.jackson.databind.deser.impl.b bVar2 = cVar.f14582d;
        AnnotationIntrospector c10 = cVar.c();
        VisibilityChecker<?> visibilityChecker = cVar.f14581c;
        Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map = cVar.f14583e;
        AnnotatedConstructor i4 = bVar.i();
        if (i4 != null && (!bVar2.o() || E(deserializationContext, i4))) {
            bVar2.r(i4);
        }
        for (AnnotatedConstructor annotatedConstructor : bVar.B()) {
            JsonCreator.Mode findCreatorAnnotation = c10.findCreatorAnnotation(deserializationContext.getConfig(), annotatedConstructor);
            if (JsonCreator.Mode.DISABLED != findCreatorAnnotation) {
                if (findCreatorAnnotation == null) {
                    if (z9 && visibilityChecker.isCreatorVisible(annotatedConstructor)) {
                        cVar.a(com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedConstructor, map.get(annotatedConstructor)));
                    }
                } else {
                    int i10 = a.f14575a[findCreatorAnnotation.ordinal()];
                    if (i10 == 1) {
                        d(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedConstructor, null));
                    } else if (i10 != 2) {
                        b(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedConstructor, map.get(annotatedConstructor)), deserializationContext.getConfig().getConstructorDetector());
                    } else {
                        h(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedConstructor, map.get(annotatedConstructor)));
                    }
                    cVar.j();
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType contentType = arrayType.getContentType();
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) contentType.getValueHandler();
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) contentType.getTypeHandler();
        if (bVar2 == null) {
            bVar2 = findTypeDeserializer(config, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar3 = bVar2;
        com.fasterxml.jackson.databind.d<?> q9 = q(arrayType, config, bVar, bVar3, dVar);
        if (q9 == null) {
            if (dVar == null) {
                Class<?> rawClass = contentType.getRawClass();
                if (contentType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(rawClass);
                }
                if (rawClass == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            q9 = new ObjectArrayDeserializer(arrayType, dVar, bVar3);
        }
        if (this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar4 : this.f14574b.deserializerModifiers()) {
                q9 = bVar4.a(config, arrayType, bVar, q9);
            }
        }
        return q9;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createCollectionDeserializer(DeserializationContext deserializationContext, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> collectionDeserializer;
        JavaType contentType = collectionType.getContentType();
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) contentType.getTypeHandler();
        if (bVar2 == null) {
            bVar2 = findTypeDeserializer(config, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar3 = bVar2;
        com.fasterxml.jackson.databind.d<?> s9 = s(collectionType, config, bVar, bVar3, dVar);
        if (s9 == null) {
            Class<?> rawClass = collectionType.getRawClass();
            if (dVar == null && EnumSet.class.isAssignableFrom(rawClass)) {
                s9 = new EnumSetDeserializer(contentType, null);
            }
        }
        if (s9 == null) {
            if (collectionType.isInterface() || collectionType.isAbstract()) {
                CollectionType F = F(collectionType, config);
                if (F == null) {
                    if (collectionType.getTypeHandler() != null) {
                        s9 = AbstractDeserializer.constructForNonPOJO(bVar);
                    } else {
                        throw new IllegalArgumentException("Cannot find a deserializer for non-concrete Collection type " + collectionType);
                    }
                } else {
                    bVar = config.introspectForCreation(F);
                    collectionType = F;
                }
            }
            if (s9 == null) {
                ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, bVar);
                if (!findValueInstantiator.canCreateUsingDefault()) {
                    if (collectionType.hasRawClass(ArrayBlockingQueue.class)) {
                        return new ArrayBlockingQueueDeserializer(collectionType, dVar, bVar3, findValueInstantiator);
                    }
                    com.fasterxml.jackson.databind.d<?> h4 = com.fasterxml.jackson.databind.deser.impl.f.h(deserializationContext, collectionType);
                    if (h4 != null) {
                        return h4;
                    }
                }
                if (contentType.hasRawClass(String.class)) {
                    collectionDeserializer = new StringCollectionDeserializer(collectionType, dVar, findValueInstantiator);
                } else {
                    collectionDeserializer = new CollectionDeserializer(collectionType, dVar, bVar3, findValueInstantiator);
                }
                s9 = collectionDeserializer;
            }
        }
        if (this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar4 : this.f14574b.deserializerModifiers()) {
                s9 = bVar4.b(config, collectionType, bVar, s9);
            }
        }
        return s9;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JavaType contentType = collectionLikeType.getContentType();
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) contentType.getTypeHandler();
        com.fasterxml.jackson.databind.d<?> t9 = t(collectionLikeType, config, bVar, bVar2 == null ? findTypeDeserializer(config, contentType) : bVar2, dVar);
        if (t9 != null && this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar3 : this.f14574b.deserializerModifiers()) {
                t9 = bVar3.c(config, collectionLikeType, bVar, t9);
            }
        }
        return t9;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class<?> rawClass = javaType.getRawClass();
        com.fasterxml.jackson.databind.d<?> u9 = u(rawClass, config, bVar);
        if (u9 == null) {
            if (rawClass == Enum.class) {
                return AbstractDeserializer.constructForNonPOJO(bVar);
            }
            ValueInstantiator n9 = n(deserializationContext, bVar);
            SettableBeanProperty[] fromObjectArguments = n9 == null ? null : n9.getFromObjectArguments(deserializationContext.getConfig());
            Iterator<AnnotatedMethod> it = bVar.D().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AnnotatedMethod next = it.next();
                if (E(deserializationContext, next)) {
                    if (next.getParameterCount() == 0) {
                        u9 = EnumDeserializer.deserializerForNoArgsCreator(config, rawClass, next);
                    } else {
                        if (!next.getRawReturnType().isAssignableFrom(rawClass)) {
                            deserializationContext.reportBadDefinition(javaType, String.format("Invalid `@JsonCreator` annotated Enum factory method [%s]: needs to return compatible type", next.toString()));
                        }
                        u9 = EnumDeserializer.deserializerForCreator(config, rawClass, next, n9, fromObjectArguments);
                    }
                }
            }
            if (u9 == null) {
                u9 = new EnumDeserializer(L(rawClass, config, bVar.p()), Boolean.valueOf(config.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS)));
            }
        }
        if (this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar2 : this.f14574b.deserializerModifiers()) {
                u9 = bVar2.e(config, javaType, bVar, u9);
            }
        }
        return u9;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.h createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.b bVar;
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.h hVar = null;
        if (this.f14574b.hasKeyDeserializers()) {
            bVar = config.introspectClassAnnotations(javaType);
            Iterator<j> it = this.f14574b.keyDeserializers().iterator();
            while (it.hasNext() && (hVar = it.next().findKeyDeserializer(javaType, config, bVar)) == null) {
            }
        } else {
            bVar = null;
        }
        if (hVar == null) {
            if (bVar == null) {
                bVar = config.introspectClassAnnotations(javaType.getRawClass());
            }
            hVar = O(deserializationContext, bVar.A());
            if (hVar == null) {
                if (javaType.isEnumType()) {
                    hVar = o(deserializationContext, javaType);
                } else {
                    hVar = StdKeyDeserializers.findStringBasedKeyDeserializer(config, javaType);
                }
            }
        }
        if (hVar != null && this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar2 : this.f14574b.deserializerModifiers()) {
                hVar = bVar2.f(config, javaType, hVar);
            }
        }
        return hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0115  */
    @Override // com.fasterxml.jackson.databind.deser.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.d<?> createMapDeserializer(com.fasterxml.jackson.databind.DeserializationContext r20, com.fasterxml.jackson.databind.type.MapType r21, com.fasterxml.jackson.databind.b r22) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory.createMapDeserializer(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.type.MapType, com.fasterxml.jackson.databind.b):com.fasterxml.jackson.databind.d");
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JavaType keyType = mapLikeType.getKeyType();
        JavaType contentType = mapLikeType.getContentType();
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) contentType.getValueHandler();
        com.fasterxml.jackson.databind.h hVar = (com.fasterxml.jackson.databind.h) keyType.getValueHandler();
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) contentType.getTypeHandler();
        if (bVar2 == null) {
            bVar2 = findTypeDeserializer(config, contentType);
        }
        com.fasterxml.jackson.databind.d<?> w9 = w(mapLikeType, config, bVar, hVar, bVar2, dVar);
        if (w9 != null && this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar3 : this.f14574b.deserializerModifiers()) {
                w9 = bVar3.h(config, mapLikeType, bVar, w9);
            }
        }
        return w9;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createReferenceDeserializer(DeserializationContext deserializationContext, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JavaType contentType = referenceType.getContentType();
        com.fasterxml.jackson.databind.d<?> dVar = (com.fasterxml.jackson.databind.d) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) contentType.getTypeHandler();
        if (bVar2 == null) {
            bVar2 = findTypeDeserializer(config, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar3 = bVar2;
        com.fasterxml.jackson.databind.d<?> x9 = x(referenceType, config, bVar, bVar3, dVar);
        if (x9 == null && referenceType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return new AtomicReferenceDeserializer(referenceType, referenceType.getRawClass() == AtomicReference.class ? null : findValueInstantiator(deserializationContext, bVar), bVar3, dVar);
        }
        if (x9 != null && this.f14574b.hasDeserializerModifiers()) {
            for (com.fasterxml.jackson.databind.deser.b bVar4 : this.f14574b.deserializerModifiers()) {
                x9 = bVar4.i(config, referenceType, bVar, x9);
            }
        }
        return x9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        com.fasterxml.jackson.databind.d<?> y9 = y(rawClass, deserializationConfig, bVar);
        return y9 != null ? y9 : JsonNodeDeserializer.getDeserializer(rawClass);
    }

    protected void d(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.deser.impl.b bVar2, com.fasterxml.jackson.databind.deser.impl.a aVar) throws JsonMappingException {
        int g4 = aVar.g();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[g4];
        int i4 = -1;
        for (int i10 = 0; i10 < g4; i10++) {
            AnnotatedParameter i11 = aVar.i(i10);
            JacksonInject.Value f10 = aVar.f(i10);
            if (f10 != null) {
                settableBeanPropertyArr[i10] = K(deserializationContext, bVar, null, i10, i11, f10);
            } else if (i4 < 0) {
                i4 = i10;
            } else {
                deserializationContext.reportBadTypeDefinition(bVar, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed", Integer.valueOf(i4), Integer.valueOf(i10), aVar);
            }
        }
        if (i4 < 0) {
            deserializationContext.reportBadTypeDefinition(bVar, "No argument left as delegating for Creator %s: exactly one required", aVar);
        }
        if (g4 == 1) {
            D(bVar2, aVar.b(), true, true);
            com.fasterxml.jackson.databind.introspect.k j4 = aVar.j(0);
            if (j4 != null) {
                ((s) j4).q0();
                return;
            }
            return;
        }
        bVar2.h(aVar.b(), true, settableBeanPropertyArr, i4);
    }

    protected void e(DeserializationContext deserializationContext, c cVar, boolean z9) throws JsonMappingException {
        com.fasterxml.jackson.databind.b bVar = cVar.f14580b;
        com.fasterxml.jackson.databind.deser.impl.b bVar2 = cVar.f14582d;
        AnnotationIntrospector c10 = cVar.c();
        VisibilityChecker<?> visibilityChecker = cVar.f14581c;
        Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map = cVar.f14583e;
        for (AnnotatedMethod annotatedMethod : bVar.D()) {
            JsonCreator.Mode findCreatorAnnotation = c10.findCreatorAnnotation(deserializationContext.getConfig(), annotatedMethod);
            int parameterCount = annotatedMethod.getParameterCount();
            if (findCreatorAnnotation == null) {
                if (z9 && parameterCount == 1 && visibilityChecker.isCreatorVisible(annotatedMethod)) {
                    cVar.b(com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedMethod, null));
                }
            } else if (findCreatorAnnotation != JsonCreator.Mode.DISABLED) {
                if (parameterCount == 0) {
                    bVar2.r(annotatedMethod);
                } else {
                    int i4 = a.f14575a[findCreatorAnnotation.ordinal()];
                    if (i4 == 1) {
                        d(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedMethod, null));
                    } else if (i4 != 2) {
                        b(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedMethod, map.get(annotatedMethod)), ConstructorDetector.DEFAULT);
                    } else {
                        h(deserializationContext, bVar, bVar2, com.fasterxml.jackson.databind.deser.impl.a.a(c10, annotatedMethod, map.get(annotatedMethod)));
                    }
                    cVar.k();
                }
            }
        }
    }

    public com.fasterxml.jackson.databind.d<?> findDefaultDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JavaType javaType2;
        JavaType javaType3;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass != f14567c && rawClass != f14572h) {
            if (rawClass != f14568d && rawClass != f14569e) {
                Class<?> cls = f14570f;
                if (rawClass == cls) {
                    TypeFactory typeFactory = deserializationContext.getTypeFactory();
                    JavaType[] findTypeParameters = typeFactory.findTypeParameters(javaType, cls);
                    return createCollectionDeserializer(deserializationContext, typeFactory.constructCollectionType(Collection.class, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]), bVar);
                } else if (rawClass == f14571g) {
                    JavaType containedTypeOrUnknown = javaType.containedTypeOrUnknown(0);
                    JavaType containedTypeOrUnknown2 = javaType.containedTypeOrUnknown(1);
                    com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) containedTypeOrUnknown2.getTypeHandler();
                    if (bVar2 == null) {
                        bVar2 = findTypeDeserializer(deserializationContext.getConfig(), containedTypeOrUnknown2);
                    }
                    return new MapEntryDeserializer(javaType, (com.fasterxml.jackson.databind.h) containedTypeOrUnknown.getValueHandler(), (com.fasterxml.jackson.databind.d) containedTypeOrUnknown2.getValueHandler(), bVar2);
                } else {
                    String name = rawClass.getName();
                    if (rawClass.isPrimitive() || name.startsWith("java.")) {
                        com.fasterxml.jackson.databind.d<?> a10 = NumberDeserializers.a(rawClass, name);
                        if (a10 == null) {
                            a10 = DateDeserializers.a(rawClass, name);
                        }
                        if (a10 != null) {
                            return a10;
                        }
                    }
                    if (rawClass == t.class) {
                        return new TokenBufferDeserializer();
                    }
                    com.fasterxml.jackson.databind.d<?> P = P(deserializationContext, javaType, bVar);
                    return P != null ? P : com.fasterxml.jackson.databind.deser.std.c.a(rawClass, name);
                }
            }
            return StringDeserializer.instance;
        }
        DeserializationConfig config = deserializationContext.getConfig();
        if (this.f14574b.hasAbstractTypeResolvers()) {
            javaType2 = B(config, List.class);
            javaType3 = B(config, Map.class);
        } else {
            javaType2 = null;
            javaType3 = null;
        }
        return new UntypedObjectDeserializer(javaType2, javaType3);
    }

    public com.fasterxml.jackson.databind.jsontype.b findPropertyContentTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        JavaType contentType = javaType.getContentType();
        if (findPropertyContentTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, contentType);
        }
        return findPropertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, contentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, contentType));
    }

    public com.fasterxml.jackson.databind.jsontype.b findPropertyTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        if (findPropertyTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, javaType);
        }
        try {
            return findPropertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, javaType));
        } catch (IllegalArgumentException | IllegalStateException e4) {
            throw InvalidDefinitionException.from((JsonParser) null, com.fasterxml.jackson.databind.util.g.q(e4), javaType).withCause(e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.jsontype.b findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Collection<NamedType> collectAndResolveSubtypesByTypeId;
        com.fasterxml.jackson.databind.introspect.c A = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).A();
        com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver = deserializationConfig.getAnnotationIntrospector().findTypeResolver(deserializationConfig, A, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = deserializationConfig.getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
            collectAndResolveSubtypesByTypeId = null;
        } else {
            collectAndResolveSubtypesByTypeId = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, A);
        }
        Class<?> defaultImpl = findTypeResolver.getDefaultImpl();
        com.fasterxml.jackson.databind.jsontype.e<?> eVar = findTypeResolver;
        if (defaultImpl == null) {
            eVar = findTypeResolver;
            if (javaType.isAbstract()) {
                JavaType mapAbstractType = mapAbstractType(deserializationConfig, javaType);
                eVar = findTypeResolver;
                if (mapAbstractType != null) {
                    eVar = findTypeResolver;
                    if (!mapAbstractType.hasRawClass(javaType.getRawClass())) {
                        eVar = findTypeResolver.withDefaultImpl(mapAbstractType.getRawClass());
                    }
                }
            }
        }
        try {
            return eVar.buildTypeDeserializer(deserializationConfig, javaType, collectAndResolveSubtypesByTypeId);
        } catch (IllegalArgumentException | IllegalStateException e4) {
            throw InvalidDefinitionException.from((JsonParser) null, com.fasterxml.jackson.databind.util.g.q(e4), javaType).withCause(e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.introspect.c A = bVar.A();
        Object findValueInstantiator = deserializationContext.getAnnotationIntrospector().findValueInstantiator(A);
        ValueInstantiator _valueInstantiatorInstance = findValueInstantiator != null ? _valueInstantiatorInstance(config, A, findValueInstantiator) : null;
        if (_valueInstantiatorInstance == null && (_valueInstantiatorInstance = com.fasterxml.jackson.databind.deser.impl.e.a(config, bVar.y())) == null) {
            _valueInstantiatorInstance = n(deserializationContext, bVar);
        }
        if (this.f14574b.hasValueInstantiators()) {
            for (o oVar : this.f14574b.valueInstantiators()) {
                _valueInstantiatorInstance = oVar.findValueInstantiator(config, bVar, _valueInstantiatorInstance);
                if (_valueInstantiatorInstance == null) {
                    deserializationContext.reportBadTypeDefinition(bVar, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator", oVar.getClass().getName());
                }
            }
        }
        return _valueInstantiatorInstance != null ? _valueInstantiatorInstance.createContextual(deserializationContext, bVar) : _valueInstantiatorInstance;
    }

    public DeserializerFactoryConfig getFactoryConfig() {
        return this.f14574b;
    }

    protected void h(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.deser.impl.b bVar2, com.fasterxml.jackson.databind.deser.impl.a aVar) throws JsonMappingException {
        int g4 = aVar.g();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[g4];
        int i4 = 0;
        while (i4 < g4) {
            JacksonInject.Value f10 = aVar.f(i4);
            AnnotatedParameter i10 = aVar.i(i4);
            PropertyName h4 = aVar.h(i4);
            if (h4 == null) {
                if (deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(i10) != null) {
                    I(deserializationContext, bVar, i10);
                }
                PropertyName d4 = aVar.d(i4);
                J(deserializationContext, bVar, aVar, i4, d4, f10);
                h4 = d4;
            }
            int i11 = i4;
            settableBeanPropertyArr[i11] = K(deserializationContext, bVar, h4, i4, i10, f10);
            i4 = i11 + 1;
        }
        bVar2.l(aVar.b(), true, settableBeanPropertyArr);
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public boolean hasExplicitDeserializerFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        if (Enum.class.isAssignableFrom(cls)) {
            return true;
        }
        String name = cls.getName();
        if (name.startsWith("java.")) {
            if (Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls)) {
                return true;
            }
            return Number.class.isAssignableFrom(cls) ? NumberDeserializers.a(cls, name) != null : com.fasterxml.jackson.databind.deser.std.c.b(cls) || cls == f14568d || cls == Boolean.class || cls == EnumMap.class || cls == AtomicReference.class || DateDeserializers.b(cls);
        } else if (name.startsWith("com.fasterxml.")) {
            return com.fasterxml.jackson.databind.e.class.isAssignableFrom(cls) || cls == t.class;
        } else {
            return OptionalHandlerFactory.instance.hasDeserializerFor(cls);
        }
    }

    protected void i(DeserializationContext deserializationContext, c cVar, List<com.fasterxml.jackson.databind.deser.impl.a> list) throws JsonMappingException {
        VisibilityChecker<?> visibilityChecker;
        boolean z9;
        Iterator<com.fasterxml.jackson.databind.deser.impl.a> it;
        com.fasterxml.jackson.databind.deser.impl.b bVar;
        int i4;
        com.fasterxml.jackson.databind.deser.impl.b bVar2;
        VisibilityChecker<?> visibilityChecker2;
        boolean z10;
        Iterator<com.fasterxml.jackson.databind.deser.impl.a> it2;
        int i10;
        SettableBeanProperty[] settableBeanPropertyArr;
        AnnotatedWithParams annotatedWithParams;
        int i11;
        com.fasterxml.jackson.databind.deser.impl.a aVar;
        com.fasterxml.jackson.databind.deser.impl.a aVar2;
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.b bVar3 = cVar.f14580b;
        com.fasterxml.jackson.databind.deser.impl.b bVar4 = cVar.f14582d;
        AnnotationIntrospector c10 = cVar.c();
        VisibilityChecker<?> visibilityChecker3 = cVar.f14581c;
        boolean singleArgCreatorDefaultsToProperties = config.getConstructorDetector().singleArgCreatorDefaultsToProperties();
        Iterator<com.fasterxml.jackson.databind.deser.impl.a> it3 = list.iterator();
        LinkedList linkedList = null;
        while (it3.hasNext()) {
            com.fasterxml.jackson.databind.deser.impl.a next = it3.next();
            int g4 = next.g();
            AnnotatedWithParams b10 = next.b();
            if (g4 == 1) {
                com.fasterxml.jackson.databind.introspect.k j4 = next.j(0);
                if (singleArgCreatorDefaultsToProperties || l(c10, b10, j4)) {
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[1];
                    JacksonInject.Value f10 = next.f(0);
                    PropertyName h4 = next.h(0);
                    if (h4 != null || (h4 = next.d(0)) != null || f10 != null) {
                        settableBeanPropertyArr2[0] = K(deserializationContext, bVar3, h4, 0, next.i(0), f10);
                        bVar4.l(b10, false, settableBeanPropertyArr2);
                    }
                } else {
                    D(bVar4, b10, false, visibilityChecker3.isCreatorVisible(b10));
                    if (j4 != null) {
                        ((s) j4).q0();
                    }
                }
                bVar = bVar4;
                visibilityChecker = visibilityChecker3;
                z9 = singleArgCreatorDefaultsToProperties;
                it = it3;
            } else {
                SettableBeanProperty[] settableBeanPropertyArr3 = new SettableBeanProperty[g4];
                int i12 = 0;
                int i13 = -1;
                int i14 = 0;
                int i15 = 0;
                while (i12 < g4) {
                    AnnotatedParameter parameter = b10.getParameter(i12);
                    com.fasterxml.jackson.databind.introspect.k j10 = next.j(i12);
                    JacksonInject.Value findInjectableValue = c10.findInjectableValue(parameter);
                    PropertyName fullName = j10 == null ? null : j10.getFullName();
                    if (j10 == null || !j10.A()) {
                        i4 = i12;
                        bVar2 = bVar4;
                        visibilityChecker2 = visibilityChecker3;
                        z10 = singleArgCreatorDefaultsToProperties;
                        it2 = it3;
                        i10 = i13;
                        settableBeanPropertyArr = settableBeanPropertyArr3;
                        annotatedWithParams = b10;
                        i11 = g4;
                        if (findInjectableValue != null) {
                            i15++;
                            aVar2 = next;
                            settableBeanPropertyArr[i4] = K(deserializationContext, bVar3, fullName, i4, parameter, findInjectableValue);
                        } else {
                            aVar = next;
                            if (c10.findUnwrappingNameTransformer(parameter) != null) {
                                I(deserializationContext, bVar3, parameter);
                            } else if (i10 < 0) {
                                i13 = i4;
                                next = aVar;
                                i12 = i4 + 1;
                                g4 = i11;
                                b10 = annotatedWithParams;
                                settableBeanPropertyArr3 = settableBeanPropertyArr;
                                singleArgCreatorDefaultsToProperties = z10;
                                it3 = it2;
                                visibilityChecker3 = visibilityChecker2;
                                bVar4 = bVar2;
                            }
                            i13 = i10;
                            next = aVar;
                            i12 = i4 + 1;
                            g4 = i11;
                            b10 = annotatedWithParams;
                            settableBeanPropertyArr3 = settableBeanPropertyArr;
                            singleArgCreatorDefaultsToProperties = z10;
                            it3 = it2;
                            visibilityChecker3 = visibilityChecker2;
                            bVar4 = bVar2;
                        }
                    } else {
                        i14++;
                        i4 = i12;
                        z10 = singleArgCreatorDefaultsToProperties;
                        i10 = i13;
                        it2 = it3;
                        settableBeanPropertyArr = settableBeanPropertyArr3;
                        visibilityChecker2 = visibilityChecker3;
                        annotatedWithParams = b10;
                        bVar2 = bVar4;
                        i11 = g4;
                        aVar2 = next;
                        settableBeanPropertyArr[i4] = K(deserializationContext, bVar3, fullName, i4, parameter, findInjectableValue);
                    }
                    i13 = i10;
                    aVar = aVar2;
                    next = aVar;
                    i12 = i4 + 1;
                    g4 = i11;
                    b10 = annotatedWithParams;
                    settableBeanPropertyArr3 = settableBeanPropertyArr;
                    singleArgCreatorDefaultsToProperties = z10;
                    it3 = it2;
                    visibilityChecker3 = visibilityChecker2;
                    bVar4 = bVar2;
                }
                com.fasterxml.jackson.databind.deser.impl.a aVar3 = next;
                com.fasterxml.jackson.databind.deser.impl.b bVar5 = bVar4;
                visibilityChecker = visibilityChecker3;
                z9 = singleArgCreatorDefaultsToProperties;
                it = it3;
                int i16 = i13;
                SettableBeanProperty[] settableBeanPropertyArr4 = settableBeanPropertyArr3;
                AnnotatedWithParams annotatedWithParams2 = b10;
                int i17 = g4;
                int i18 = i14 + 0;
                if (i14 <= 0 && i15 <= 0) {
                    bVar = bVar5;
                } else if (i18 + i15 == i17) {
                    bVar = bVar5;
                    bVar.l(annotatedWithParams2, false, settableBeanPropertyArr4);
                } else {
                    bVar = bVar5;
                    if (i14 == 0 && i15 + 1 == i17) {
                        bVar.h(annotatedWithParams2, false, settableBeanPropertyArr4, 0);
                    } else {
                        PropertyName d4 = aVar3.d(i16);
                        if (d4 == null || d4.isEmpty()) {
                            deserializationContext.reportBadTypeDefinition(bVar3, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", Integer.valueOf(i16), annotatedWithParams2);
                        }
                    }
                }
                if (!bVar.o()) {
                    LinkedList linkedList2 = linkedList == null ? new LinkedList() : linkedList;
                    linkedList2.add(annotatedWithParams2);
                    linkedList = linkedList2;
                }
            }
            bVar4 = bVar;
            singleArgCreatorDefaultsToProperties = z9;
            it3 = it;
            visibilityChecker3 = visibilityChecker;
        }
        com.fasterxml.jackson.databind.deser.impl.b bVar6 = bVar4;
        VisibilityChecker<?> visibilityChecker4 = visibilityChecker3;
        if (linkedList == null || bVar6.p() || bVar6.q()) {
            return;
        }
        m(deserializationContext, bVar3, visibilityChecker4, c10, bVar6, linkedList);
    }

    protected void j(DeserializationContext deserializationContext, c cVar, List<com.fasterxml.jackson.databind.deser.impl.a> list) throws JsonMappingException {
        int i4;
        VisibilityChecker<?> visibilityChecker;
        Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map;
        Iterator<com.fasterxml.jackson.databind.deser.impl.a> it;
        SettableBeanProperty[] settableBeanPropertyArr;
        AnnotatedWithParams annotatedWithParams;
        com.fasterxml.jackson.databind.b bVar = cVar.f14580b;
        com.fasterxml.jackson.databind.deser.impl.b bVar2 = cVar.f14582d;
        AnnotationIntrospector c10 = cVar.c();
        VisibilityChecker<?> visibilityChecker2 = cVar.f14581c;
        Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map2 = cVar.f14583e;
        Iterator<com.fasterxml.jackson.databind.deser.impl.a> it2 = list.iterator();
        while (it2.hasNext()) {
            com.fasterxml.jackson.databind.deser.impl.a next = it2.next();
            int g4 = next.g();
            AnnotatedWithParams b10 = next.b();
            com.fasterxml.jackson.databind.introspect.k[] kVarArr = map2.get(b10);
            if (g4 == 1) {
                com.fasterxml.jackson.databind.introspect.k j4 = next.j(0);
                if (!l(c10, b10, j4)) {
                    D(bVar2, b10, false, visibilityChecker2.isCreatorVisible(b10));
                    if (j4 != null) {
                        ((s) j4).q0();
                    }
                } else {
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[g4];
                    AnnotatedParameter annotatedParameter = null;
                    int i10 = 0;
                    int i11 = 0;
                    int i12 = 0;
                    while (i10 < g4) {
                        AnnotatedParameter parameter = b10.getParameter(i10);
                        com.fasterxml.jackson.databind.introspect.k kVar = kVarArr == null ? null : kVarArr[i10];
                        JacksonInject.Value findInjectableValue = c10.findInjectableValue(parameter);
                        PropertyName fullName = kVar == null ? null : kVar.getFullName();
                        if (kVar == null || !kVar.A()) {
                            i4 = i10;
                            visibilityChecker = visibilityChecker2;
                            map = map2;
                            it = it2;
                            settableBeanPropertyArr = settableBeanPropertyArr2;
                            annotatedWithParams = b10;
                            if (findInjectableValue != null) {
                                i12++;
                                settableBeanPropertyArr[i4] = K(deserializationContext, bVar, fullName, i4, parameter, findInjectableValue);
                            } else if (c10.findUnwrappingNameTransformer(parameter) != null) {
                                I(deserializationContext, bVar, parameter);
                            } else if (annotatedParameter == null) {
                                annotatedParameter = parameter;
                            }
                        } else {
                            i11++;
                            i4 = i10;
                            visibilityChecker = visibilityChecker2;
                            settableBeanPropertyArr = settableBeanPropertyArr2;
                            map = map2;
                            it = it2;
                            annotatedWithParams = b10;
                            settableBeanPropertyArr[i4] = K(deserializationContext, bVar, fullName, i4, parameter, findInjectableValue);
                        }
                        i10 = i4 + 1;
                        settableBeanPropertyArr2 = settableBeanPropertyArr;
                        b10 = annotatedWithParams;
                        visibilityChecker2 = visibilityChecker;
                        map2 = map;
                        it2 = it;
                    }
                    VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
                    Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> map3 = map2;
                    Iterator<com.fasterxml.jackson.databind.deser.impl.a> it3 = it2;
                    SettableBeanProperty[] settableBeanPropertyArr3 = settableBeanPropertyArr2;
                    AnnotatedWithParams annotatedWithParams2 = b10;
                    int i13 = i11 + 0;
                    if (i11 > 0 || i12 > 0) {
                        if (i13 + i12 == g4) {
                            bVar2.l(annotatedWithParams2, false, settableBeanPropertyArr3);
                        } else if (i11 == 0 && i12 + 1 == g4) {
                            bVar2.h(annotatedWithParams2, false, settableBeanPropertyArr3, 0);
                        } else {
                            Object[] objArr = new Object[2];
                            objArr[0] = Integer.valueOf(annotatedParameter == null ? -1 : annotatedParameter.getIndex());
                            objArr[1] = annotatedWithParams2;
                            deserializationContext.reportBadTypeDefinition(bVar, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator", objArr);
                        }
                    }
                    it2 = it3;
                    visibilityChecker2 = visibilityChecker3;
                    map2 = map3;
                }
            }
        }
    }

    protected void k(DeserializationContext deserializationContext, c cVar, AnnotatedConstructor annotatedConstructor, List<String> list) throws JsonMappingException {
        int parameterCount = annotatedConstructor.getParameterCount();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[parameterCount];
        for (int i4 = 0; i4 < parameterCount; i4++) {
            AnnotatedParameter parameter = annotatedConstructor.getParameter(i4);
            JacksonInject.Value findInjectableValue = annotationIntrospector.findInjectableValue(parameter);
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(parameter);
            if (findNameForDeserialization == null || findNameForDeserialization.isEmpty()) {
                findNameForDeserialization = PropertyName.construct(list.get(i4));
            }
            settableBeanPropertyArr[i4] = K(deserializationContext, cVar.f14580b, findNameForDeserialization, i4, parameter, findInjectableValue);
        }
        cVar.f14582d.l(annotatedConstructor, false, settableBeanPropertyArr);
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public JavaType mapAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        JavaType H;
        while (true) {
            H = H(deserializationConfig, javaType);
            if (H == null) {
                return javaType;
            }
            Class<?> rawClass = javaType.getRawClass();
            Class<?> rawClass2 = H.getRawClass();
            if (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) {
                break;
            }
            javaType = H;
        }
        throw new IllegalArgumentException("Invalid abstract type resolution from " + javaType + " to " + H + ": latter is not a subtype of former");
    }

    protected ValueInstantiator n(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        ArrayList arrayList;
        AnnotatedConstructor a10;
        DeserializationConfig config = deserializationContext.getConfig();
        VisibilityChecker<?> defaultVisibilityChecker = config.getDefaultVisibilityChecker(bVar.y(), bVar.A());
        ConstructorDetector constructorDetector = config.getConstructorDetector();
        c cVar = new c(deserializationContext, bVar, defaultVisibilityChecker, new com.fasterxml.jackson.databind.deser.impl.b(bVar, config), p(deserializationContext, bVar));
        e(deserializationContext, cVar, !constructorDetector.requireCtorAnnotation());
        if (bVar.H().isConcrete()) {
            if (bVar.H().isRecordType() && (a10 = com.fasterxml.jackson.databind.jdk14.a.a(deserializationContext, bVar, (arrayList = new ArrayList()))) != null) {
                k(deserializationContext, cVar, a10, arrayList);
                return cVar.f14582d.n(deserializationContext);
            } else if (!bVar.K()) {
                c(deserializationContext, cVar, constructorDetector.shouldIntrospectorImplicitConstructors(bVar.y()));
                if (cVar.f() && !cVar.d()) {
                    i(deserializationContext, cVar, cVar.h());
                }
            }
        }
        if (cVar.g() && !cVar.e() && !cVar.d()) {
            j(deserializationContext, cVar, cVar.i());
        }
        return cVar.f14582d.n(deserializationContext);
    }

    protected Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> p(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        Map<AnnotatedWithParams, com.fasterxml.jackson.databind.introspect.k[]> emptyMap = Collections.emptyMap();
        for (com.fasterxml.jackson.databind.introspect.k kVar : bVar.u()) {
            Iterator<AnnotatedParameter> k10 = kVar.k();
            while (k10.hasNext()) {
                AnnotatedParameter next = k10.next();
                AnnotatedWithParams owner = next.getOwner();
                com.fasterxml.jackson.databind.introspect.k[] kVarArr = emptyMap.get(owner);
                int index = next.getIndex();
                if (kVarArr == null) {
                    if (emptyMap.isEmpty()) {
                        emptyMap = new LinkedHashMap<>();
                    }
                    kVarArr = new com.fasterxml.jackson.databind.introspect.k[owner.getParameterCount()];
                    emptyMap.put(owner, kVarArr);
                } else if (kVarArr[index] != null) {
                    deserializationContext.reportBadTypeDefinition(bVar, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s", Integer.valueOf(index), owner, kVarArr[index], kVar);
                }
                kVarArr[index] = kVar;
            }
        }
        return emptyMap;
    }

    protected com.fasterxml.jackson.databind.d<?> q(ArrayType arrayType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findArrayDeserializer = iVar.findArrayDeserializer(arrayType, deserializationConfig, bVar, bVar2, dVar);
            if (findArrayDeserializer != null) {
                return findArrayDeserializer;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.d<Object> r(JavaType javaType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findBeanDeserializer = iVar.findBeanDeserializer(javaType, deserializationConfig, bVar);
            if (findBeanDeserializer != null) {
                return findBeanDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> s(CollectionType collectionType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findCollectionDeserializer = iVar.findCollectionDeserializer(collectionType, deserializationConfig, bVar, bVar2, dVar);
            if (findCollectionDeserializer != null) {
                return findCollectionDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> t(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findCollectionLikeDeserializer = iVar.findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, bVar, bVar2, dVar);
            if (findCollectionLikeDeserializer != null) {
                return findCollectionLikeDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> u(Class<?> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findEnumDeserializer = iVar.findEnumDeserializer(cls, deserializationConfig, bVar);
            if (findEnumDeserializer != null) {
                return findEnumDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> v(MapType mapType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findMapDeserializer = iVar.findMapDeserializer(mapType, deserializationConfig, bVar, hVar, bVar2, dVar);
            if (findMapDeserializer != null) {
                return findMapDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> w(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.h hVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findMapLikeDeserializer = iVar.findMapLikeDeserializer(mapLikeType, deserializationConfig, bVar, hVar, bVar2, dVar);
            if (findMapLikeDeserializer != null) {
                return findMapLikeDeserializer;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public final g withAbstractTypeResolver(com.fasterxml.jackson.databind.a aVar) {
        return withConfig(this.f14574b.withAbstractTypeResolver(aVar));
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public final g withAdditionalDeserializers(i iVar) {
        return withConfig(this.f14574b.withAdditionalDeserializers(iVar));
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public final g withAdditionalKeyDeserializers(j jVar) {
        return withConfig(this.f14574b.withAdditionalKeyDeserializers(jVar));
    }

    protected abstract g withConfig(DeserializerFactoryConfig deserializerFactoryConfig);

    @Override // com.fasterxml.jackson.databind.deser.g
    public final g withDeserializerModifier(com.fasterxml.jackson.databind.deser.b bVar) {
        return withConfig(this.f14574b.withDeserializerModifier(bVar));
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public final g withValueInstantiators(o oVar) {
        return withConfig(this.f14574b.withValueInstantiators(oVar));
    }

    protected com.fasterxml.jackson.databind.d<?> x(ReferenceType referenceType, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.b bVar2, com.fasterxml.jackson.databind.d<?> dVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findReferenceDeserializer = iVar.findReferenceDeserializer(referenceType, deserializationConfig, bVar, bVar2, dVar);
            if (findReferenceDeserializer != null) {
                return findReferenceDeserializer;
            }
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.d<?> y(Class<? extends com.fasterxml.jackson.databind.e> cls, DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        for (i iVar : this.f14574b.deserializers()) {
            com.fasterxml.jackson.databind.d<?> findTreeNodeDeserializer = iVar.findTreeNodeDeserializer(cls, deserializationConfig, bVar);
            if (findTreeNodeDeserializer != null) {
                return findTreeNodeDeserializer;
            }
        }
        return null;
    }

    @Deprecated
    protected AnnotatedMethod z(DeserializationConfig deserializationConfig, JavaType javaType) {
        if (javaType == null) {
            return null;
        }
        return deserializationConfig.introspect(javaType).q();
    }
}
