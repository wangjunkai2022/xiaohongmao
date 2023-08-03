package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.TokenStreamFactory;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.UnsupportedTypeSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.ToEmptyObjectSerializer;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanSerializerFactory extends BasicSerializerFactory implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15616d = 1;
    public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);

    protected BeanSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        super(serializerFactoryConfig);
    }

    protected BeanPropertyWriter B(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.k kVar, g gVar, boolean z9, AnnotatedMember annotatedMember) throws JsonMappingException {
        PropertyName fullName = kVar.getFullName();
        JavaType type = annotatedMember.getType();
        BeanProperty.Std std = new BeanProperty.Std(fullName, type, kVar.getWrapperName(), annotatedMember, kVar.getMetadata());
        com.fasterxml.jackson.databind.g<?> y9 = y(lVar, annotatedMember);
        if (y9 instanceof i) {
            ((i) y9).resolve(lVar);
        }
        com.fasterxml.jackson.databind.g<?> handlePrimaryContextualization = lVar.handlePrimaryContextualization(y9, std);
        com.fasterxml.jackson.databind.jsontype.f fVar = null;
        if (type.isContainerType() || type.isReferenceType()) {
            fVar = findPropertyContentTypeSerializer(type, lVar.getConfig(), annotatedMember);
        }
        return gVar.c(lVar, kVar, type, handlePrimaryContextualization, findPropertyTypeSerializer(type, lVar.getConfig(), annotatedMember), fVar, annotatedMember, z9);
    }

    protected com.fasterxml.jackson.databind.g<?> C(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        com.fasterxml.jackson.databind.g<?> gVar;
        SerializationConfig config = lVar.getConfig();
        com.fasterxml.jackson.databind.g<?> gVar2 = null;
        if (javaType.isContainerType()) {
            if (!z9) {
                z9 = A(config, bVar, null);
            }
            gVar = j(lVar, javaType, bVar, z9);
            if (gVar != null) {
                return gVar;
            }
        } else {
            if (javaType.isReferenceType()) {
                gVar = findReferenceSerializer(lVar, (ReferenceType) javaType, bVar, z9);
            } else {
                Iterator<l> it = p().iterator();
                while (it.hasNext() && (gVar2 = it.next().findSerializer(config, javaType, bVar)) == null) {
                }
                gVar = gVar2;
            }
            if (gVar == null) {
                gVar = v(lVar, javaType, bVar);
            }
        }
        if (gVar == null && (gVar = w(javaType, config, bVar, z9)) == null && (gVar = x(lVar, javaType, bVar, z9)) == null && (gVar = findBeanOrAddOnSerializer(lVar, javaType, bVar, z9)) == null) {
            gVar = lVar.getUnknownTypeSerializer(bVar.y());
        }
        if (gVar != null && this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar = dVar.i(config, bVar, gVar);
            }
        }
        return gVar;
    }

    protected com.fasterxml.jackson.databind.g<?> D(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        String a10 = com.fasterxml.jackson.databind.util.d.a(javaType);
        if (a10 == null || lVar.getConfig().findMixInClassFor(javaType.getRawClass()) != null) {
            return null;
        }
        return new UnsupportedTypeSerializer(javaType, a10);
    }

    protected boolean E(com.fasterxml.jackson.databind.l lVar, JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        return ObjectMapper.class.isAssignableFrom(rawClass) || ObjectReader.class.isAssignableFrom(rawClass) || ObjectWriter.class.isAssignableFrom(rawClass) || com.fasterxml.jackson.databind.c.class.isAssignableFrom(rawClass) || TokenStreamFactory.class.isAssignableFrom(rawClass) || JsonParser.class.isAssignableFrom(rawClass) || JsonGenerator.class.isAssignableFrom(rawClass);
    }

    protected com.fasterxml.jackson.databind.g<Object> F(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        List<BeanPropertyWriter> R;
        if (bVar.y() == Object.class) {
            return lVar.getUnknownTypeSerializer(Object.class);
        }
        com.fasterxml.jackson.databind.g<?> D = D(lVar, javaType, bVar);
        if (D != null) {
            return D;
        }
        if (E(lVar, javaType)) {
            return new ToEmptyObjectSerializer(javaType);
        }
        SerializationConfig config = lVar.getConfig();
        c H = H(bVar);
        H.m(config);
        List<BeanPropertyWriter> N = N(lVar, bVar, H);
        if (N == null) {
            R = new ArrayList<>();
        } else {
            R = R(lVar, bVar, H, N);
        }
        lVar.getAnnotationIntrospector().findAndAddVirtualProperties(config, bVar.A(), R);
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                R = dVar.a(config, bVar, R);
            }
        }
        List<BeanPropertyWriter> L = L(config, bVar, M(config, bVar, R));
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar2 : this.f15594a.serializerModifiers()) {
                L = dVar2.j(config, bVar, L);
            }
        }
        H.p(J(lVar, bVar, L));
        H.q(L);
        H.n(s(config, bVar));
        AnnotatedMember b10 = bVar.b();
        if (b10 != null) {
            JavaType type = b10.getType();
            JavaType contentType = type.getContentType();
            com.fasterxml.jackson.databind.jsontype.f createTypeSerializer = createTypeSerializer(config, contentType);
            com.fasterxml.jackson.databind.g<Object> y9 = y(lVar, b10);
            if (y9 == null) {
                y9 = MapSerializer.construct((Set<String>) null, type, config.isEnabled(MapperFeature.USE_STATIC_TYPING), createTypeSerializer, (com.fasterxml.jackson.databind.g<Object>) null, (com.fasterxml.jackson.databind.g<Object>) null, (Object) null);
            }
            H.l(new a(new BeanProperty.Std(PropertyName.construct(b10.getName()), contentType, null, b10, PropertyMetadata.STD_OPTIONAL), b10, y9));
        }
        P(config, H);
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar3 : this.f15594a.serializerModifiers()) {
                H = dVar3.k(config, bVar, H);
            }
        }
        try {
            com.fasterxml.jackson.databind.g<?> a10 = H.a();
            if (a10 == null) {
                if (javaType.isRecordType()) {
                    return H.b();
                }
                a10 = u(config, javaType, bVar, z9);
                if (a10 == null && bVar.I()) {
                    return H.b();
                }
            }
            return a10;
        } catch (RuntimeException e4) {
            return (com.fasterxml.jackson.databind.g) lVar.reportBadTypeDefinition(bVar, "Failed to construct BeanSerializer for %s: (%s) %s", bVar.H(), e4.getClass().getName(), e4.getMessage());
        }
    }

    @Deprecated
    protected com.fasterxml.jackson.databind.g<Object> G(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        return F(lVar, bVar.H(), bVar, lVar.isEnabled(MapperFeature.USE_STATIC_TYPING));
    }

    protected c H(com.fasterxml.jackson.databind.b bVar) {
        return new c(bVar);
    }

    protected BeanPropertyWriter I(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
        return com.fasterxml.jackson.databind.ser.impl.a.a(beanPropertyWriter, clsArr);
    }

    protected com.fasterxml.jackson.databind.ser.impl.b J(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar, List<BeanPropertyWriter> list) throws JsonMappingException {
        p G = bVar.G();
        if (G == null) {
            return null;
        }
        Class<? extends ObjectIdGenerator<?>> c10 = G.c();
        if (c10 == ObjectIdGenerators.PropertyGenerator.class) {
            String simpleName = G.d().getSimpleName();
            int size = list.size();
            for (int i4 = 0; i4 != size; i4++) {
                BeanPropertyWriter beanPropertyWriter = list.get(i4);
                if (simpleName.equals(beanPropertyWriter.getName())) {
                    if (i4 > 0) {
                        list.remove(i4);
                        list.add(0, beanPropertyWriter);
                    }
                    return com.fasterxml.jackson.databind.ser.impl.b.a(beanPropertyWriter.getType(), null, new PropertyBasedObjectIdGenerator(G, beanPropertyWriter), G.b());
                }
            }
            throw new IllegalArgumentException(String.format("Invalid Object Id definition for %s: cannot find property with name %s", com.fasterxml.jackson.databind.util.g.P(bVar.H()), com.fasterxml.jackson.databind.util.g.h0(simpleName)));
        }
        return com.fasterxml.jackson.databind.ser.impl.b.a(lVar.getTypeFactory().findTypeParameters(lVar.constructType(c10), ObjectIdGenerator.class)[0], G.d(), lVar.objectIdGeneratorInstance(bVar.A(), G), G.b());
    }

    protected g K(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar) {
        return new g(serializationConfig, bVar);
    }

    protected List<BeanPropertyWriter> L(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<BeanPropertyWriter> list) {
        JsonIgnoreProperties.Value defaultPropertyIgnorals = serializationConfig.getDefaultPropertyIgnorals(bVar.y(), bVar.A());
        Set<String> findIgnoredForSerialization = defaultPropertyIgnorals != null ? defaultPropertyIgnorals.findIgnoredForSerialization() : null;
        JsonIncludeProperties.Value defaultPropertyInclusions = serializationConfig.getDefaultPropertyInclusions(bVar.y(), bVar.A());
        Set<String> included = defaultPropertyInclusions != null ? defaultPropertyInclusions.getIncluded() : null;
        if (included != null || (findIgnoredForSerialization != null && !findIgnoredForSerialization.isEmpty())) {
            Iterator<BeanPropertyWriter> it = list.iterator();
            while (it.hasNext()) {
                if (IgnorePropertiesUtil.c(it.next().getName(), findIgnoredForSerialization, included)) {
                    it.remove();
                }
            }
        }
        return list;
    }

    protected List<BeanPropertyWriter> M(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<BeanPropertyWriter> list) {
        if (bVar.H().isTypeOrSubTypeOf(CharSequence.class) && list.size() == 1) {
            AnnotatedMember member = list.get(0).getMember();
            if ((member instanceof AnnotatedMethod) && "isEmpty".equals(member.getName()) && member.getDeclaringClass() == CharSequence.class) {
                list.remove(0);
            }
        }
        return list;
    }

    protected List<BeanPropertyWriter> N(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar, c cVar) throws JsonMappingException {
        List<com.fasterxml.jackson.databind.introspect.k> u9 = bVar.u();
        SerializationConfig config = lVar.getConfig();
        Q(config, bVar, u9);
        if (config.isEnabled(MapperFeature.REQUIRE_SETTERS_FOR_GETTERS)) {
            S(config, bVar, u9);
        }
        if (u9.isEmpty()) {
            return null;
        }
        boolean A = A(config, bVar, null);
        g K = K(config, bVar);
        ArrayList arrayList = new ArrayList(u9.size());
        for (com.fasterxml.jackson.databind.introspect.k kVar : u9) {
            AnnotatedMember h4 = kVar.h();
            if (!kVar.B()) {
                AnnotationIntrospector.ReferenceProperty f10 = kVar.f();
                if (f10 == null || !f10.d()) {
                    if (h4 instanceof AnnotatedMethod) {
                        arrayList.add(B(lVar, kVar, K, A, (AnnotatedMethod) h4));
                    } else {
                        arrayList.add(B(lVar, kVar, K, A, (AnnotatedField) h4));
                    }
                }
            } else if (h4 != null) {
                cVar.r(h4);
            }
        }
        return arrayList;
    }

    protected boolean O(Class<?> cls) {
        return com.fasterxml.jackson.databind.util.g.g(cls) == null && !com.fasterxml.jackson.databind.util.g.e0(cls);
    }

    protected void P(SerializationConfig serializationConfig, c cVar) {
        List<BeanPropertyWriter> i4 = cVar.i();
        boolean isEnabled = serializationConfig.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        int size = i4.size();
        BeanPropertyWriter[] beanPropertyWriterArr = new BeanPropertyWriter[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            BeanPropertyWriter beanPropertyWriter = i4.get(i11);
            Class<?>[] views = beanPropertyWriter.getViews();
            if (views != null && views.length != 0) {
                i10++;
                beanPropertyWriterArr[i11] = I(beanPropertyWriter, views);
            } else if (isEnabled) {
                beanPropertyWriterArr[i11] = beanPropertyWriter;
            }
        }
        if (isEnabled && i10 == 0) {
            return;
        }
        cVar.o(beanPropertyWriterArr);
    }

    protected void Q(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<com.fasterxml.jackson.databind.introspect.k> list) {
        AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        HashMap hashMap = new HashMap();
        Iterator<com.fasterxml.jackson.databind.introspect.k> it = list.iterator();
        while (it.hasNext()) {
            com.fasterxml.jackson.databind.introspect.k next = it.next();
            if (next.h() == null) {
                it.remove();
            } else {
                Class<?> s9 = next.s();
                Boolean bool = (Boolean) hashMap.get(s9);
                if (bool == null) {
                    bool = serializationConfig.getConfigOverride(s9).getIsIgnoredType();
                    if (bool == null && (bool = annotationIntrospector.isIgnorableType(serializationConfig.introspectClassAnnotations(s9).A())) == null) {
                        bool = Boolean.FALSE;
                    }
                    hashMap.put(s9, bool);
                }
                if (bool.booleanValue()) {
                    it.remove();
                }
            }
        }
    }

    protected List<BeanPropertyWriter> R(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar, c cVar, List<BeanPropertyWriter> list) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            BeanPropertyWriter beanPropertyWriter = list.get(i4);
            com.fasterxml.jackson.databind.jsontype.f typeSerializer = beanPropertyWriter.getTypeSerializer();
            if (typeSerializer != null && typeSerializer.e() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                PropertyName construct = PropertyName.construct(typeSerializer.c());
                Iterator<BeanPropertyWriter> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    BeanPropertyWriter next = it.next();
                    if (next != beanPropertyWriter && next.wouldConflictWithName(construct)) {
                        beanPropertyWriter.assignTypeSerializer(null);
                        break;
                    }
                }
            }
        }
        return list;
    }

    protected void S(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, List<com.fasterxml.jackson.databind.introspect.k> list) {
        Iterator<com.fasterxml.jackson.databind.introspect.k> it = list.iterator();
        while (it.hasNext()) {
            com.fasterxml.jackson.databind.introspect.k next = it.next();
            if (!next.a() && !next.z()) {
                it.remove();
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BasicSerializerFactory, com.fasterxml.jackson.databind.ser.k
    public com.fasterxml.jackson.databind.g<Object> createSerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType) throws JsonMappingException {
        JavaType refineSerializationType;
        SerializationConfig config = lVar.getConfig();
        com.fasterxml.jackson.databind.b introspect = config.introspect(javaType);
        com.fasterxml.jackson.databind.g<?> y9 = y(lVar, introspect.A());
        if (y9 != null) {
            return y9;
        }
        AnnotationIntrospector annotationIntrospector = config.getAnnotationIntrospector();
        boolean z9 = false;
        if (annotationIntrospector == null) {
            refineSerializationType = javaType;
        } else {
            try {
                refineSerializationType = annotationIntrospector.refineSerializationType(config, introspect.A(), javaType);
            } catch (JsonMappingException e4) {
                return (com.fasterxml.jackson.databind.g) lVar.reportBadTypeDefinition(introspect, e4.getMessage(), new Object[0]);
            }
        }
        if (refineSerializationType != javaType) {
            if (!refineSerializationType.hasRawClass(javaType.getRawClass())) {
                introspect = config.introspect(refineSerializationType);
            }
            z9 = true;
        }
        com.fasterxml.jackson.databind.util.h<Object, Object> w9 = introspect.w();
        if (w9 == null) {
            return C(lVar, refineSerializationType, introspect, z9);
        }
        JavaType b10 = w9.b(lVar.getTypeFactory());
        if (!b10.hasRawClass(refineSerializationType.getRawClass())) {
            introspect = config.introspect(b10);
            y9 = y(lVar, introspect.A());
        }
        if (y9 == null && !b10.isJavaLangObject()) {
            y9 = C(lVar, b10, introspect, true);
        }
        return new StdDelegatingSerializer(w9, b10, y9);
    }

    public com.fasterxml.jackson.databind.g<Object> findBeanOrAddOnSerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        if (O(javaType.getRawClass()) || com.fasterxml.jackson.databind.util.g.X(javaType.getRawClass())) {
            return F(lVar, javaType, bVar, z9);
        }
        return null;
    }

    @Deprecated
    public com.fasterxml.jackson.databind.g<Object> findBeanSerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        return findBeanOrAddOnSerializer(lVar, javaType, bVar, lVar.isEnabled(MapperFeature.USE_STATIC_TYPING));
    }

    public com.fasterxml.jackson.databind.jsontype.f findPropertyContentTypeSerializer(JavaType javaType, SerializationConfig serializationConfig, AnnotatedMember annotatedMember) throws JsonMappingException {
        JavaType contentType = javaType.getContentType();
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver = serializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(serializationConfig, annotatedMember, javaType);
        if (findPropertyContentTypeResolver == null) {
            return createTypeSerializer(serializationConfig, contentType);
        }
        return findPropertyContentTypeResolver.buildTypeSerializer(serializationConfig, contentType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, annotatedMember, contentType));
    }

    public com.fasterxml.jackson.databind.jsontype.f findPropertyTypeSerializer(JavaType javaType, SerializationConfig serializationConfig, AnnotatedMember annotatedMember) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver = serializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(serializationConfig, annotatedMember, javaType);
        if (findPropertyTypeResolver == null) {
            return createTypeSerializer(serializationConfig, javaType);
        }
        return findPropertyTypeResolver.buildTypeSerializer(serializationConfig, javaType, serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, annotatedMember, javaType));
    }

    @Override // com.fasterxml.jackson.databind.ser.BasicSerializerFactory
    protected Iterable<l> p() {
        return this.f15594a.serializers();
    }

    @Override // com.fasterxml.jackson.databind.ser.BasicSerializerFactory
    public k withConfig(SerializerFactoryConfig serializerFactoryConfig) {
        if (this.f15594a == serializerFactoryConfig) {
            return this;
        }
        if (getClass() == BeanSerializerFactory.class) {
            return new BeanSerializerFactory(serializerFactoryConfig);
        }
        throw new IllegalStateException("Subtype of BeanSerializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': cannot instantiate subtype with additional serializer definitions");
    }
}
