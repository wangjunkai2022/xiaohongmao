package com.fasterxml.jackson.databind.deser;

import c2.e;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.FieldProperty;
import com.fasterxml.jackson.databind.deser.impl.MethodProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.SetterlessProperty;
import com.fasterxml.jackson.databind.deser.impl.UnsupportedTypeDeserializer;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.r;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class BeanDeserializerFactory extends BasicDeserializerFactory implements Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f14614j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final Class<?>[] f14615k = {Throwable.class};
    public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(new DeserializerFactoryConfig());

    public BeanDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        super(deserializerFactoryConfig);
    }

    private boolean U(Class<?> cls) {
        return Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }

    protected com.fasterxml.jackson.databind.d<Object> T(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        String a10 = com.fasterxml.jackson.databind.util.d.a(javaType);
        if (a10 == null || deserializationContext.getConfig().findMixInClassFor(javaType.getRawClass()) != null) {
            return null;
        }
        return new UnsupportedTypeDeserializer(javaType, a10);
    }

    protected void V(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsontype.impl.i.a().b(deserializationContext, javaType, bVar);
    }

    protected void W(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar) throws JsonMappingException {
        List<com.fasterxml.jackson.databind.introspect.k> g4 = bVar.g();
        if (g4 != null) {
            for (com.fasterxml.jackson.databind.introspect.k kVar : g4) {
                aVar.g(kVar.e(), e0(deserializationContext, bVar, kVar, kVar.r()));
            }
        }
    }

    protected void X(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar) throws JsonMappingException {
        Set<String> emptySet;
        Set<String> set;
        SettableBeanProperty settableBeanProperty;
        CreatorProperty creatorProperty;
        SettableBeanProperty[] fromObjectArguments = bVar.H().isAbstract() ^ true ? aVar.y().getFromObjectArguments(deserializationContext.getConfig()) : null;
        boolean z9 = fromObjectArguments != null;
        JsonIgnoreProperties.Value defaultPropertyIgnorals = deserializationContext.getConfig().getDefaultPropertyIgnorals(bVar.y(), bVar.A());
        if (defaultPropertyIgnorals != null) {
            aVar.D(defaultPropertyIgnorals.getIgnoreUnknown());
            emptySet = defaultPropertyIgnorals.findIgnoredForDeserialization();
            for (String str : emptySet) {
                aVar.i(str);
            }
        } else {
            emptySet = Collections.emptySet();
        }
        Set<String> set2 = emptySet;
        JsonIncludeProperties.Value defaultPropertyInclusions = deserializationContext.getConfig().getDefaultPropertyInclusions(bVar.y(), bVar.A());
        if (defaultPropertyInclusions != null) {
            Set<String> included = defaultPropertyInclusions.getIncluded();
            if (included != null) {
                for (String str2 : included) {
                    aVar.j(str2);
                }
            }
            set = included;
        } else {
            set = null;
        }
        AnnotatedMember d4 = bVar.d();
        if (d4 != null) {
            aVar.C(c0(deserializationContext, bVar, d4));
        } else {
            Set<String> F = bVar.F();
            if (F != null) {
                for (String str3 : F) {
                    aVar.i(str3);
                }
            }
        }
        boolean z10 = deserializationContext.isEnabled(MapperFeature.USE_GETTERS_AS_SETTERS) && deserializationContext.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
        List<com.fasterxml.jackson.databind.introspect.k> h02 = h0(deserializationContext, bVar, aVar, bVar.u(), set2, set);
        if (this.f14574b.hasDeserializerModifiers()) {
            for (b bVar2 : this.f14574b.deserializerModifiers()) {
                h02 = bVar2.k(deserializationContext.getConfig(), bVar, h02);
            }
        }
        for (com.fasterxml.jackson.databind.introspect.k kVar : h02) {
            if (kVar.y()) {
                settableBeanProperty = e0(deserializationContext, bVar, kVar, kVar.t().getParameterType(0));
            } else if (kVar.v()) {
                settableBeanProperty = e0(deserializationContext, bVar, kVar, kVar.l().getType());
            } else {
                AnnotatedMethod m9 = kVar.m();
                if (m9 != null) {
                    if (z10 && U(m9.getRawType())) {
                        if (!aVar.z(kVar.getName())) {
                            settableBeanProperty = f0(deserializationContext, bVar, kVar);
                        }
                    } else if (!kVar.u() && kVar.getMetadata().getMergeInfo() != null) {
                        settableBeanProperty = f0(deserializationContext, bVar, kVar);
                    }
                }
                settableBeanProperty = null;
            }
            if (z9 && kVar.u()) {
                String name = kVar.getName();
                int length = fromObjectArguments.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        creatorProperty = null;
                        break;
                    }
                    SettableBeanProperty settableBeanProperty2 = fromObjectArguments[i4];
                    if (name.equals(settableBeanProperty2.getName()) && (settableBeanProperty2 instanceof CreatorProperty)) {
                        creatorProperty = (CreatorProperty) settableBeanProperty2;
                        break;
                    }
                    i4++;
                }
                if (creatorProperty == null) {
                    ArrayList arrayList = new ArrayList();
                    for (SettableBeanProperty settableBeanProperty3 : fromObjectArguments) {
                        arrayList.add(settableBeanProperty3.getName());
                    }
                    deserializationContext.reportBadPropertyDefinition(bVar, kVar, "Could not find creator property with name %s (known Creator properties: %s)", com.fasterxml.jackson.databind.util.g.h0(name), arrayList);
                } else {
                    if (settableBeanProperty != null) {
                        creatorProperty.setFallbackSetter(settableBeanProperty);
                    }
                    Class<?>[] g4 = kVar.g();
                    if (g4 == null) {
                        g4 = bVar.j();
                    }
                    creatorProperty.setViews(g4);
                    aVar.h(creatorProperty);
                }
            } else if (settableBeanProperty != null) {
                Class<?>[] g10 = kVar.g();
                if (g10 == null) {
                    g10 = bVar.j();
                }
                settableBeanProperty.setViews(g10);
                aVar.m(settableBeanProperty);
            }
        }
    }

    protected void Y(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar) throws JsonMappingException {
        Map<Object, AnnotatedMember> n9 = bVar.n();
        if (n9 != null) {
            for (Map.Entry<Object, AnnotatedMember> entry : n9.entrySet()) {
                AnnotatedMember value = entry.getValue();
                aVar.k(PropertyName.construct(value.getName()), value.getType(), bVar.z(), value, entry.getKey());
            }
        }
    }

    protected void Z(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar) throws JsonMappingException {
        SettableBeanProperty settableBeanProperty;
        PropertyBasedObjectIdGenerator objectIdGeneratorInstance;
        JavaType javaType;
        p G = bVar.G();
        if (G == null) {
            return;
        }
        Class<? extends ObjectIdGenerator<?>> c10 = G.c();
        c0 objectIdResolverInstance = deserializationContext.objectIdResolverInstance(bVar.A(), G);
        if (c10 == ObjectIdGenerators.PropertyGenerator.class) {
            PropertyName d4 = G.d();
            settableBeanProperty = aVar.r(d4);
            if (settableBeanProperty != null) {
                javaType = settableBeanProperty.getType();
                objectIdGeneratorInstance = new PropertyBasedObjectIdGenerator(G.f());
            } else {
                throw new IllegalArgumentException(String.format("Invalid Object Id definition for %s: cannot find property with name %s", com.fasterxml.jackson.databind.util.g.P(bVar.H()), com.fasterxml.jackson.databind.util.g.g0(d4)));
            }
        } else {
            JavaType javaType2 = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) c10), ObjectIdGenerator.class)[0];
            settableBeanProperty = null;
            objectIdGeneratorInstance = deserializationContext.objectIdGeneratorInstance(bVar.A(), G);
            javaType = javaType2;
        }
        aVar.E(ObjectIdReader.construct(javaType, G.d(), objectIdGeneratorInstance, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance));
    }

    @Deprecated
    protected void a0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar) throws JsonMappingException {
        W(deserializationContext, bVar, aVar);
    }

    protected com.fasterxml.jackson.databind.d<Object> b0(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        try {
            ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, bVar);
            DeserializationConfig config = deserializationContext.getConfig();
            a d02 = d0(deserializationContext, bVar);
            d02.G(findValueInstantiator);
            X(deserializationContext, bVar, d02);
            Z(deserializationContext, bVar, d02);
            W(deserializationContext, bVar, d02);
            Y(deserializationContext, bVar, d02);
            e.a t9 = bVar.t();
            String str = t9 == null ? "build" : t9.f4000a;
            AnnotatedMethod r9 = bVar.r(str, null);
            if (r9 != null && config.canOverrideAccessModifiers()) {
                com.fasterxml.jackson.databind.util.g.i(r9.getMember(), config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            d02.F(r9, t9);
            if (this.f14574b.hasDeserializerModifiers()) {
                for (b bVar2 : this.f14574b.deserializerModifiers()) {
                    d02 = bVar2.j(config, bVar, d02);
                }
            }
            com.fasterxml.jackson.databind.d<?> p9 = d02.p(javaType, str);
            if (this.f14574b.hasDeserializerModifiers()) {
                for (b bVar3 : this.f14574b.deserializerModifiers()) {
                    p9 = bVar3.d(config, bVar, p9);
                }
            }
            return p9;
        } catch (IllegalArgumentException e4) {
            throw InvalidDefinitionException.from(deserializationContext.getParser(), com.fasterxml.jackson.databind.util.g.q(e4), bVar, (com.fasterxml.jackson.databind.introspect.k) null);
        } catch (NoClassDefFoundError e10) {
            return new com.fasterxml.jackson.databind.deser.impl.c(e10);
        }
    }

    public com.fasterxml.jackson.databind.d<Object> buildBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> n9;
        try {
            ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, bVar);
            a d02 = d0(deserializationContext, bVar);
            d02.G(findValueInstantiator);
            X(deserializationContext, bVar, d02);
            Z(deserializationContext, bVar, d02);
            W(deserializationContext, bVar, d02);
            Y(deserializationContext, bVar, d02);
            DeserializationConfig config = deserializationContext.getConfig();
            if (this.f14574b.hasDeserializerModifiers()) {
                for (b bVar2 : this.f14574b.deserializerModifiers()) {
                    d02 = bVar2.j(config, bVar, d02);
                }
            }
            if (javaType.isAbstract() && !findValueInstantiator.canInstantiate()) {
                n9 = d02.o();
            } else {
                n9 = d02.n();
            }
            if (this.f14574b.hasDeserializerModifiers()) {
                for (b bVar3 : this.f14574b.deserializerModifiers()) {
                    n9 = bVar3.d(config, bVar, n9);
                }
            }
            return n9;
        } catch (IllegalArgumentException e4) {
            throw InvalidDefinitionException.from(deserializationContext.getParser(), com.fasterxml.jackson.databind.util.g.q(e4), bVar, (com.fasterxml.jackson.databind.introspect.k) null).withCause(e4);
        } catch (NoClassDefFoundError e10) {
            return new com.fasterxml.jackson.databind.deser.impl.c(e10);
        }
    }

    public com.fasterxml.jackson.databind.d<Object> buildThrowableDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        SettableBeanProperty e02;
        DeserializationConfig config = deserializationContext.getConfig();
        a d02 = d0(deserializationContext, bVar);
        d02.G(findValueInstantiator(deserializationContext, bVar));
        X(deserializationContext, bVar, d02);
        AnnotatedMethod r9 = bVar.r("initCause", f14615k);
        if (r9 != null && (e02 = e0(deserializationContext, bVar, r.F(deserializationContext.getConfig(), r9, new PropertyName("cause")), r9.getParameterType(0))) != null) {
            d02.l(e02, true);
        }
        d02.i("localizedMessage");
        d02.i("suppressed");
        if (this.f14574b.hasDeserializerModifiers()) {
            for (b bVar2 : this.f14574b.deserializerModifiers()) {
                d02 = bVar2.j(config, bVar, d02);
            }
        }
        com.fasterxml.jackson.databind.d<?> n9 = d02.n();
        if (n9 instanceof BeanDeserializer) {
            n9 = new ThrowableDeserializer((BeanDeserializer) n9);
        }
        if (this.f14574b.hasDeserializerModifiers()) {
            for (b bVar3 : this.f14574b.deserializerModifiers()) {
                n9 = bVar3.d(config, bVar, n9);
            }
        }
        return n9;
    }

    protected SettableAnyProperty c0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, AnnotatedMember annotatedMember) throws JsonMappingException {
        JavaType keyType;
        BeanProperty.Std std;
        JavaType javaType;
        if (annotatedMember instanceof AnnotatedMethod) {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
            keyType = annotatedMethod.getParameterType(0);
            javaType = R(deserializationContext, annotatedMember, annotatedMethod.getParameterType(1));
            std = new BeanProperty.Std(PropertyName.construct(annotatedMember.getName()), javaType, null, annotatedMember, PropertyMetadata.STD_OPTIONAL);
        } else if (annotatedMember instanceof AnnotatedField) {
            JavaType R = R(deserializationContext, annotatedMember, ((AnnotatedField) annotatedMember).getType());
            keyType = R.getKeyType();
            JavaType contentType = R.getContentType();
            std = new BeanProperty.Std(PropertyName.construct(annotatedMember.getName()), R, null, annotatedMember, PropertyMetadata.STD_OPTIONAL);
            javaType = contentType;
        } else {
            return (SettableAnyProperty) deserializationContext.reportBadDefinition(bVar.H(), String.format("Unrecognized mutator type for any setter: %s", annotatedMember.getClass()));
        }
        com.fasterxml.jackson.databind.h O = O(deserializationContext, annotatedMember);
        if (O == null) {
            O = (com.fasterxml.jackson.databind.h) keyType.getValueHandler();
        }
        if (O == null) {
            O = deserializationContext.findKeyDeserializer(keyType, std);
        } else if (O instanceof d) {
            O = ((d) O).createContextual(deserializationContext, std);
        }
        com.fasterxml.jackson.databind.h hVar = O;
        com.fasterxml.jackson.databind.d<?> M = M(deserializationContext, annotatedMember);
        if (M == null) {
            M = (com.fasterxml.jackson.databind.d) javaType.getValueHandler();
        }
        return new SettableAnyProperty(std, annotatedMember, javaType, hVar, M != null ? deserializationContext.handlePrimaryContextualization(M, std, javaType) : M, (com.fasterxml.jackson.databind.jsontype.b) javaType.getTypeHandler());
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<Object> createBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JavaType l02;
        DeserializationConfig config = deserializationContext.getConfig();
        com.fasterxml.jackson.databind.d<?> r9 = r(javaType, config, bVar);
        if (r9 != null) {
            if (this.f14574b.hasDeserializerModifiers()) {
                for (b bVar2 : this.f14574b.deserializerModifiers()) {
                    r9 = bVar2.d(deserializationContext.getConfig(), bVar, r9);
                }
            }
            return r9;
        } else if (javaType.isThrowable()) {
            return buildThrowableDeserializer(deserializationContext, javaType, bVar);
        } else {
            if (javaType.isAbstract() && !javaType.isPrimitive() && !javaType.isEnumType() && (l02 = l0(deserializationContext, javaType, bVar)) != null) {
                return buildBeanDeserializer(deserializationContext, l02, config.introspect(l02));
            }
            com.fasterxml.jackson.databind.d<?> i02 = i0(deserializationContext, javaType, bVar);
            if (i02 != null) {
                return i02;
            }
            if (k0(javaType.getRawClass())) {
                V(deserializationContext, javaType, bVar);
                com.fasterxml.jackson.databind.d<Object> T = T(deserializationContext, javaType, bVar);
                return T != null ? T : buildBeanDeserializer(deserializationContext, javaType, bVar);
            }
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.g
    public com.fasterxml.jackson.databind.d<Object> createBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar, Class<?> cls) throws JsonMappingException {
        JavaType constructType;
        if (deserializationContext.isEnabled(MapperFeature.INFER_BUILDER_TYPE_BINDINGS)) {
            constructType = deserializationContext.getTypeFactory().constructParametricType(cls, javaType.getBindings());
        } else {
            constructType = deserializationContext.constructType(cls);
        }
        return b0(deserializationContext, javaType, deserializationContext.getConfig().introspectForBuilder(constructType, bVar));
    }

    protected a d0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar) {
        return new a(bVar, deserializationContext);
    }

    protected SettableBeanProperty e0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType) throws JsonMappingException {
        SettableBeanProperty fieldProperty;
        AnnotatedMember p9 = kVar.p();
        if (p9 == null) {
            deserializationContext.reportBadPropertyDefinition(bVar, kVar, "No non-constructor mutator available", new Object[0]);
        }
        JavaType R = R(deserializationContext, p9, javaType);
        com.fasterxml.jackson.databind.jsontype.b bVar2 = (com.fasterxml.jackson.databind.jsontype.b) R.getTypeHandler();
        if (p9 instanceof AnnotatedMethod) {
            fieldProperty = new MethodProperty(kVar, R, bVar2, bVar.z(), (AnnotatedMethod) p9);
        } else {
            fieldProperty = new FieldProperty(kVar, R, bVar2, bVar.z(), (AnnotatedField) p9);
        }
        com.fasterxml.jackson.databind.d<?> N = N(deserializationContext, p9);
        if (N == null) {
            N = (com.fasterxml.jackson.databind.d) R.getValueHandler();
        }
        if (N != null) {
            fieldProperty = fieldProperty.withValueDeserializer(deserializationContext.handlePrimaryContextualization(N, fieldProperty, R));
        }
        AnnotationIntrospector.ReferenceProperty f10 = kVar.f();
        if (f10 != null && f10.e()) {
            fieldProperty.setManagedReferenceName(f10.b());
        }
        p d4 = kVar.d();
        if (d4 != null) {
            fieldProperty.setObjectIdInfo(d4);
        }
        return fieldProperty;
    }

    protected SettableBeanProperty f0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.introspect.k kVar) throws JsonMappingException {
        AnnotatedMethod m9 = kVar.m();
        JavaType R = R(deserializationContext, m9, m9.getType());
        SetterlessProperty setterlessProperty = new SetterlessProperty(kVar, R, (com.fasterxml.jackson.databind.jsontype.b) R.getTypeHandler(), bVar.z(), m9);
        com.fasterxml.jackson.databind.d<?> N = N(deserializationContext, m9);
        if (N == null) {
            N = (com.fasterxml.jackson.databind.d) R.getValueHandler();
        }
        return N != null ? setterlessProperty.withValueDeserializer(deserializationContext.handlePrimaryContextualization(N, setterlessProperty, R)) : setterlessProperty;
    }

    @Deprecated
    protected List<com.fasterxml.jackson.databind.introspect.k> g0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar, List<com.fasterxml.jackson.databind.introspect.k> list, Set<String> set) throws JsonMappingException {
        return h0(deserializationContext, bVar, aVar, list, set, null);
    }

    protected List<com.fasterxml.jackson.databind.introspect.k> h0(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.b bVar, a aVar, List<com.fasterxml.jackson.databind.introspect.k> list, Set<String> set, Set<String> set2) {
        Class<?> s9;
        ArrayList arrayList = new ArrayList(Math.max(4, list.size()));
        HashMap hashMap = new HashMap();
        for (com.fasterxml.jackson.databind.introspect.k kVar : list) {
            String name = kVar.getName();
            if (!IgnorePropertiesUtil.c(name, set, set2)) {
                if (!kVar.u() && (s9 = kVar.s()) != null && j0(deserializationContext.getConfig(), kVar, s9, hashMap)) {
                    aVar.i(name);
                } else {
                    arrayList.add(kVar);
                }
            }
        }
        return arrayList;
    }

    protected com.fasterxml.jackson.databind.d<?> i0(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> findDefaultDeserializer = findDefaultDeserializer(deserializationContext, javaType, bVar);
        if (findDefaultDeserializer != null && this.f14574b.hasDeserializerModifiers()) {
            for (b bVar2 : this.f14574b.deserializerModifiers()) {
                findDefaultDeserializer = bVar2.d(deserializationContext.getConfig(), bVar, findDefaultDeserializer);
            }
        }
        return findDefaultDeserializer;
    }

    protected boolean j0(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.introspect.k kVar, Class<?> cls, Map<Class<?>, Boolean> map) {
        Boolean bool;
        Boolean bool2 = map.get(cls);
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        if (cls != String.class && !cls.isPrimitive()) {
            bool = deserializationConfig.getConfigOverride(cls).getIsIgnoredType();
            if (bool == null) {
                bool = deserializationConfig.getAnnotationIntrospector().isIgnorableType(deserializationConfig.introspectClassAnnotations(cls).A());
                if (bool == null) {
                    bool = Boolean.FALSE;
                }
            }
        } else {
            bool = Boolean.FALSE;
        }
        map.put(cls, bool);
        return bool.booleanValue();
    }

    protected boolean k0(Class<?> cls) {
        String g4 = com.fasterxml.jackson.databind.util.g.g(cls);
        if (g4 == null) {
            if (!com.fasterxml.jackson.databind.util.g.e0(cls)) {
                String b02 = com.fasterxml.jackson.databind.util.g.b0(cls, true);
                if (b02 == null) {
                    return true;
                }
                throw new IllegalArgumentException("Cannot deserialize Class " + cls.getName() + " (of type " + b02 + ") as a Bean");
            }
            throw new IllegalArgumentException("Cannot deserialize Proxy class " + cls.getName() + " as a Bean");
        }
        throw new IllegalArgumentException("Cannot deserialize Class " + cls.getName() + " (of type " + g4 + ") as a Bean");
    }

    protected JavaType l0(DeserializationContext deserializationContext, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        for (com.fasterxml.jackson.databind.a aVar : this.f14574b.abstractTypeResolvers()) {
            JavaType resolveAbstractType = aVar.resolveAbstractType(deserializationContext.getConfig(), bVar);
            if (resolveAbstractType != null) {
                return resolveAbstractType;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.BasicDeserializerFactory
    public g withConfig(DeserializerFactoryConfig deserializerFactoryConfig) {
        if (this.f14574b == deserializerFactoryConfig) {
            return this;
        }
        com.fasterxml.jackson.databind.util.g.z0(BeanDeserializerFactory.class, this, "withConfig");
        return new BeanDeserializerFactory(deserializerFactoryConfig);
    }
}
