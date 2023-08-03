package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.StreamReadFeature;
import com.fasterxml.jackson.core.StreamWriteFeature;
import com.fasterxml.jackson.core.TokenStreamFactory;
import com.fasterxml.jackson.core.i;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.InjectableValues;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.d;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.j;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.ser.f;
import com.fasterxml.jackson.databind.ser.k;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.TimeZone;
import java.util.function.Consumer;

/* compiled from: MapperBuilder.java */
/* loaded from: classes.dex */
public abstract class d<M extends ObjectMapper, B extends d<M, B>> {

    /* renamed from: a  reason: collision with root package name */
    protected final M f14554a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapperBuilder.java */
    /* loaded from: classes.dex */
    public static class a implements PrivilegedAction<ServiceLoader<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassLoader f14555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f14556b;

        a(ClassLoader classLoader, Class cls) {
            this.f14555a = classLoader;
            this.f14556b = cls;
        }

        /* JADX WARN: Unknown type variable: T in type: java.util.ServiceLoader<T> */
        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public ServiceLoader<T> run() {
            ClassLoader classLoader = this.f14555a;
            return classLoader == null ? ServiceLoader.load(this.f14556b) : ServiceLoader.load(this.f14556b, classLoader);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(M m9) {
        this.f14554a = m9;
    }

    public static List<j> X() {
        return Y(null);
    }

    public static List<j> Y(ClassLoader classLoader) {
        ArrayList arrayList = new ArrayList();
        Iterator it = n0(j.class, classLoader).iterator();
        while (it.hasNext()) {
            arrayList.add((j) it.next());
        }
        return arrayList;
    }

    private static <T> ServiceLoader<T> n0(Class<T> cls, ClassLoader classLoader) {
        if (System.getSecurityManager() == null) {
            return classLoader == null ? ServiceLoader.load(cls) : ServiceLoader.load(cls, classLoader);
        }
        return (ServiceLoader) AccessController.doPrivileged(new a(classLoader, cls));
    }

    public B A(Boolean bool) {
        this.f14554a.setDefaultLeniency(bool);
        return a();
    }

    public B B(Locale locale) {
        this.f14554a.setLocale(locale);
        return a();
    }

    public B C(Boolean bool) {
        this.f14554a.setDefaultMergeable(bool);
        return a();
    }

    public B D(i iVar) {
        this.f14554a.setDefaultPrettyPrinter(iVar);
        return a();
    }

    public B E(JsonInclude.Value value) {
        this.f14554a.setDefaultPropertyInclusion(value);
        return a();
    }

    public B F(JsonSetter.Value value) {
        this.f14554a.setDefaultSetterInfo(value);
        return a();
    }

    public B G(TimeZone timeZone) {
        this.f14554a.setTimeZone(timeZone);
        return a();
    }

    public B H(JsonGenerator.Feature... featureArr) {
        this.f14554a.disable(featureArr);
        return a();
    }

    public B I(JsonParser.Feature... featureArr) {
        this.f14554a.disable(featureArr);
        return a();
    }

    public B J(StreamReadFeature... streamReadFeatureArr) {
        for (StreamReadFeature streamReadFeature : streamReadFeatureArr) {
            this.f14554a.disable(streamReadFeature.mappedFeature());
        }
        return a();
    }

    public B K(StreamWriteFeature... streamWriteFeatureArr) {
        for (StreamWriteFeature streamWriteFeature : streamWriteFeatureArr) {
            this.f14554a.disable(streamWriteFeature.mappedFeature());
        }
        return a();
    }

    public B L(DeserializationFeature... deserializationFeatureArr) {
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            this.f14554a.disable(deserializationFeature);
        }
        return a();
    }

    public B M(MapperFeature... mapperFeatureArr) {
        this.f14554a.disable(mapperFeatureArr);
        return a();
    }

    public B N(SerializationFeature... serializationFeatureArr) {
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            this.f14554a.disable(serializationFeature);
        }
        return a();
    }

    public B O(JsonGenerator.Feature... featureArr) {
        this.f14554a.enable(featureArr);
        return a();
    }

    public B P(JsonParser.Feature... featureArr) {
        this.f14554a.enable(featureArr);
        return a();
    }

    public B Q(StreamReadFeature... streamReadFeatureArr) {
        for (StreamReadFeature streamReadFeature : streamReadFeatureArr) {
            this.f14554a.enable(streamReadFeature.mappedFeature());
        }
        return a();
    }

    public B R(StreamWriteFeature... streamWriteFeatureArr) {
        for (StreamWriteFeature streamWriteFeature : streamWriteFeatureArr) {
            this.f14554a.enable(streamWriteFeature.mappedFeature());
        }
        return a();
    }

    public B S(DeserializationFeature... deserializationFeatureArr) {
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            this.f14554a.enable(deserializationFeature);
        }
        return a();
    }

    public B T(MapperFeature... mapperFeatureArr) {
        this.f14554a.enable(mapperFeatureArr);
        return a();
    }

    public B U(SerializationFeature... serializationFeatureArr) {
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            this.f14554a.enable(serializationFeature);
        }
        return a();
    }

    public B V(f fVar) {
        this.f14554a.setFilterProvider(fVar);
        return a();
    }

    public B W() {
        return j(X());
    }

    public B Z(c cVar) {
        this.f14554a.setHandlerInstantiator(cVar);
        return a();
    }

    protected final B a() {
        return this;
    }

    public B a0(InjectableValues injectableValues) {
        this.f14554a.setInjectableValues(injectableValues);
        return a();
    }

    public B b(AccessorNamingStrategy.Provider provider) {
        if (provider == null) {
            provider = new DefaultAccessorNamingStrategy.Provider();
        }
        this.f14554a.setAccessorNaming(provider);
        return a();
    }

    public boolean b0(JsonGenerator.Feature feature) {
        return this.f14554a.isEnabled(feature);
    }

    public B c(PolymorphicTypeValidator polymorphicTypeValidator) {
        this.f14554a.activateDefaultTyping(polymorphicTypeValidator);
        return a();
    }

    public boolean c0(JsonParser.Feature feature) {
        return this.f14554a.isEnabled(feature);
    }

    public B d(PolymorphicTypeValidator polymorphicTypeValidator, ObjectMapper.DefaultTyping defaultTyping) {
        this.f14554a.activateDefaultTyping(polymorphicTypeValidator, defaultTyping);
        return a();
    }

    public boolean d0(DeserializationFeature deserializationFeature) {
        return this.f14554a.isEnabled(deserializationFeature);
    }

    public B e(PolymorphicTypeValidator polymorphicTypeValidator, ObjectMapper.DefaultTyping defaultTyping, JsonTypeInfo.As as) {
        this.f14554a.activateDefaultTyping(polymorphicTypeValidator, defaultTyping, as);
        return a();
    }

    public boolean e0(MapperFeature mapperFeature) {
        return this.f14554a.isEnabled(mapperFeature);
    }

    public B f(PolymorphicTypeValidator polymorphicTypeValidator, ObjectMapper.DefaultTyping defaultTyping, String str) {
        this.f14554a.activateDefaultTypingAsProperty(polymorphicTypeValidator, defaultTyping, str);
        return a();
    }

    public boolean f0(SerializationFeature serializationFeature) {
        return this.f14554a.isEnabled(serializationFeature);
    }

    public B g(com.fasterxml.jackson.databind.deser.f fVar) {
        this.f14554a.addHandler(fVar);
        return a();
    }

    public B g0(JsonNodeFactory jsonNodeFactory) {
        this.f14554a.setNodeFactory(jsonNodeFactory);
        return a();
    }

    public B h(Class<?> cls, Class<?> cls2) {
        this.f14554a.addMixIn(cls, cls2);
        return a();
    }

    public B h0(PolymorphicTypeValidator polymorphicTypeValidator) {
        this.f14554a.setPolymorphicTypeValidator(polymorphicTypeValidator);
        return a();
    }

    public B i(j jVar) {
        this.f14554a.registerModule(jVar);
        return a();
    }

    public B i0(PropertyNamingStrategy propertyNamingStrategy) {
        this.f14554a.setPropertyNamingStrategy(propertyNamingStrategy);
        return a();
    }

    public B j(Iterable<? extends j> iterable) {
        for (j jVar : iterable) {
            i(jVar);
        }
        return a();
    }

    public B j0(Collection<Class<?>> collection) {
        this.f14554a.registerSubtypes(collection);
        return a();
    }

    public B k(j... jVarArr) {
        for (j jVar : jVarArr) {
            i(jVar);
        }
        return a();
    }

    public B k0(NamedType... namedTypeArr) {
        this.f14554a.registerSubtypes(namedTypeArr);
        return a();
    }

    public B l(AnnotationIntrospector annotationIntrospector) {
        this.f14554a.setAnnotationIntrospector(annotationIntrospector);
        return a();
    }

    public B l0(Class<?>... clsArr) {
        this.f14554a.registerSubtypes(clsArr);
        return a();
    }

    public M m() {
        return this.f14554a;
    }

    public B m0(Class<?> cls) {
        this.f14554a.addMixIn(cls, null);
        return a();
    }

    public B n() {
        this.f14554a.clearProblemHandlers();
        return a();
    }

    public B o(JsonGenerator.Feature feature, boolean z9) {
        this.f14554a.configure(feature, z9);
        return a();
    }

    public B o0(JsonInclude.Include include) {
        this.f14554a.setSerializationInclusion(include);
        return a();
    }

    public B p(JsonParser.Feature feature, boolean z9) {
        this.f14554a.configure(feature, z9);
        return a();
    }

    public B p0(k kVar) {
        this.f14554a.setSerializerFactory(kVar);
        return a();
    }

    public B q(StreamReadFeature streamReadFeature, boolean z9) {
        this.f14554a.configure(streamReadFeature.mappedFeature(), z9);
        return a();
    }

    public B q0(com.fasterxml.jackson.databind.jsontype.e<?> eVar) {
        this.f14554a.setDefaultTyping(eVar);
        return a();
    }

    public B r(StreamWriteFeature streamWriteFeature, boolean z9) {
        this.f14554a.configure(streamWriteFeature.mappedFeature(), z9);
        return a();
    }

    public TokenStreamFactory r0() {
        return this.f14554a.tokenStreamFactory();
    }

    public B s(DeserializationFeature deserializationFeature, boolean z9) {
        this.f14554a.configure(deserializationFeature, z9);
        return a();
    }

    public B s0(com.fasterxml.jackson.databind.jsontype.a aVar) {
        this.f14554a.setSubtypeResolver(aVar);
        return a();
    }

    public B t(MapperFeature mapperFeature, boolean z9) {
        this.f14554a.configure(mapperFeature, z9);
        return a();
    }

    public B t0(TypeFactory typeFactory) {
        this.f14554a.setTypeFactory(typeFactory);
        return a();
    }

    public B u(SerializationFeature serializationFeature, boolean z9) {
        this.f14554a.configure(serializationFeature, z9);
        return a();
    }

    public B u0(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
        this.f14554a.setVisibility(propertyAccessor, visibility);
        return a();
    }

    public B v(ConstructorDetector constructorDetector) {
        this.f14554a.setConstructorDetector(constructorDetector);
        return a();
    }

    public B v0(VisibilityChecker<?> visibilityChecker) {
        this.f14554a.setVisibility(visibilityChecker);
        return a();
    }

    public B w() {
        this.f14554a.deactivateDefaultTyping();
        return a();
    }

    public B w0(LogicalType logicalType, Consumer<MutableCoercionConfig> consumer) {
        consumer.accept(this.f14554a.coercionConfigFor(logicalType));
        return a();
    }

    public B x(ContextAttributes contextAttributes) {
        this.f14554a.setDefaultAttributes(contextAttributes);
        return a();
    }

    public B x0(Class<?> cls, Consumer<MutableCoercionConfig> consumer) {
        consumer.accept(this.f14554a.coercionConfigFor(cls));
        return a();
    }

    public B y(Base64Variant base64Variant) {
        this.f14554a.setBase64Variant(base64Variant);
        return a();
    }

    public B y0(Consumer<MutableCoercionConfig> consumer) {
        consumer.accept(this.f14554a.coercionConfigDefaults());
        return a();
    }

    public B z(DateFormat dateFormat) {
        this.f14554a.setDateFormat(dateFormat);
        return a();
    }

    public B z0(Class<?> cls, Consumer<MutableConfigOverride> consumer) {
        consumer.accept(this.f14554a.configOverride(cls));
        return a();
    }
}
