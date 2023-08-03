package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.jsontype.DefaultBaseTypeLimitingValidator;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public abstract class MapperConfig<T extends MapperConfig<T>> implements l.a, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14522c = 2;

    /* renamed from: d  reason: collision with root package name */
    protected static final JsonInclude.Value f14523d = JsonInclude.Value.empty();

    /* renamed from: e  reason: collision with root package name */
    protected static final JsonFormat.Value f14524e = JsonFormat.Value.empty();

    /* renamed from: a  reason: collision with root package name */
    protected final long f14525a;

    /* renamed from: b  reason: collision with root package name */
    protected final BaseSettings f14526b;

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(BaseSettings baseSettings, long j4) {
        this.f14526b = baseSettings;
        this.f14525a = j4;
    }

    public static <F extends Enum<F> & a> int collectFeatureDefaults(Class<F> cls) {
        int i4 = 0;
        for (Enum r32 : (Enum[]) cls.getEnumConstants()) {
            a aVar = (a) r32;
            if (aVar.enabledByDefault()) {
                i4 |= aVar.getMask();
            }
        }
        return i4;
    }

    public final boolean canOverrideAccessModifiers() {
        return isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    public j compileString(String str) {
        return new SerializedString(str);
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        return getTypeFactory().constructSpecializedType(javaType, cls, true);
    }

    public final JavaType constructType(Class<?> cls) {
        return getTypeFactory().constructType(cls);
    }

    public abstract b findConfigOverride(Class<?> cls);

    public abstract PropertyName findRootName(JavaType javaType);

    public abstract PropertyName findRootName(Class<?> cls);

    public final AccessorNamingStrategy.Provider getAccessorNaming() {
        return this.f14526b.getAccessorNaming();
    }

    public abstract Class<?> getActiveView();

    public AnnotationIntrospector getAnnotationIntrospector() {
        if (isEnabled(MapperFeature.USE_ANNOTATIONS)) {
            return this.f14526b.getAnnotationIntrospector();
        }
        return NopAnnotationIntrospector.instance;
    }

    public abstract ContextAttributes getAttributes();

    public Base64Variant getBase64Variant() {
        return this.f14526b.getBase64Variant();
    }

    public l getClassIntrospector() {
        return this.f14526b.getClassIntrospector();
    }

    public abstract b getConfigOverride(Class<?> cls);

    public final DateFormat getDateFormat() {
        return this.f14526b.getDateFormat();
    }

    public abstract JsonInclude.Value getDefaultInclusion(Class<?> cls, Class<?> cls2);

    public JsonInclude.Value getDefaultInclusion(Class<?> cls, Class<?> cls2, JsonInclude.Value value) {
        return JsonInclude.Value.mergeAll(value, getConfigOverride(cls).getInclude(), getConfigOverride(cls2).getIncludeAsProperty());
    }

    public abstract Boolean getDefaultMergeable();

    public abstract Boolean getDefaultMergeable(Class<?> cls);

    public abstract JsonFormat.Value getDefaultPropertyFormat(Class<?> cls);

    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls);

    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar);

    public abstract JsonInclude.Value getDefaultPropertyInclusion();

    public abstract JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls);

    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls, JsonInclude.Value value) {
        JsonInclude.Value include = getConfigOverride(cls).getInclude();
        return include != null ? include : value;
    }

    public abstract JsonIncludeProperties.Value getDefaultPropertyInclusions(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar);

    public abstract JsonSetter.Value getDefaultSetterInfo();

    public final com.fasterxml.jackson.databind.jsontype.e<?> getDefaultTyper(JavaType javaType) {
        return this.f14526b.getTypeResolverBuilder();
    }

    public abstract VisibilityChecker<?> getDefaultVisibilityChecker();

    public abstract VisibilityChecker<?> getDefaultVisibilityChecker(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar);

    public final c getHandlerInstantiator() {
        return this.f14526b.getHandlerInstantiator();
    }

    public final Locale getLocale() {
        return this.f14526b.getLocale();
    }

    public PolymorphicTypeValidator getPolymorphicTypeValidator() {
        PolymorphicTypeValidator polymorphicTypeValidator = this.f14526b.getPolymorphicTypeValidator();
        return (polymorphicTypeValidator == LaissezFaireSubTypeValidator.instance && isEnabled(MapperFeature.BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES)) ? new DefaultBaseTypeLimitingValidator() : polymorphicTypeValidator;
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        return this.f14526b.getPropertyNamingStrategy();
    }

    public abstract com.fasterxml.jackson.databind.jsontype.a getSubtypeResolver();

    public final TimeZone getTimeZone() {
        return this.f14526b.getTimeZone();
    }

    public final TypeFactory getTypeFactory() {
        return this.f14526b.getTypeFactory();
    }

    public boolean hasExplicitTimeZone() {
        return this.f14526b.hasExplicitTimeZone();
    }

    @Deprecated
    public final boolean hasMapperFeatures(int i4) {
        long j4 = i4;
        return (this.f14525a & j4) == j4;
    }

    public com.fasterxml.jackson.databind.b introspectClassAnnotations(Class<?> cls) {
        return introspectClassAnnotations(constructType(cls));
    }

    public com.fasterxml.jackson.databind.b introspectDirectClassAnnotations(Class<?> cls) {
        return introspectDirectClassAnnotations(constructType(cls));
    }

    public final boolean isAnnotationProcessingEnabled() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS);
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return mapperFeature.enabledIn(this.f14525a);
    }

    public final boolean shouldSortPropertiesAlphabetically() {
        return isEnabled(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY);
    }

    public com.fasterxml.jackson.databind.jsontype.c typeIdResolverInstance(com.fasterxml.jackson.databind.introspect.a aVar, Class<? extends com.fasterxml.jackson.databind.jsontype.c> cls) {
        com.fasterxml.jackson.databind.jsontype.c i4;
        c handlerInstantiator = getHandlerInstantiator();
        return (handlerInstantiator == null || (i4 = handlerInstantiator.i(this, aVar, cls)) == null) ? (com.fasterxml.jackson.databind.jsontype.c) g.n(cls, canOverrideAccessModifiers()) : i4;
    }

    public com.fasterxml.jackson.databind.jsontype.e<?> typeResolverBuilderInstance(com.fasterxml.jackson.databind.introspect.a aVar, Class<? extends com.fasterxml.jackson.databind.jsontype.e<?>> cls) {
        com.fasterxml.jackson.databind.jsontype.e<?> j4;
        c handlerInstantiator = getHandlerInstantiator();
        return (handlerInstantiator == null || (j4 = handlerInstantiator.j(this, aVar, cls)) == null) ? (com.fasterxml.jackson.databind.jsontype.e) g.n(cls, canOverrideAccessModifiers()) : j4;
    }

    public abstract boolean useRootWrapping();

    public abstract T with(MapperFeature mapperFeature, boolean z9);

    public abstract T with(MapperFeature... mapperFeatureArr);

    public abstract T without(MapperFeature... mapperFeatureArr);

    public final JavaType constructType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return getTypeFactory().constructType(bVar.b());
    }

    public com.fasterxml.jackson.databind.b introspectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().forClassAnnotations(this, javaType, this);
    }

    public final com.fasterxml.jackson.databind.b introspectDirectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().forDirectClassAnnotations(this, javaType, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig, long j4) {
        this.f14526b = mapperConfig.f14526b;
        this.f14525a = j4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig, BaseSettings baseSettings) {
        this.f14526b = baseSettings;
        this.f14525a = mapperConfig.f14525a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig) {
        this.f14526b = mapperConfig.f14526b;
        this.f14525a = mapperConfig.f14525a;
    }
}
