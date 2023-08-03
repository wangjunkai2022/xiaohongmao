package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.cfg.a;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
public abstract class MapperConfigBase<CFG extends a, T extends MapperConfigBase<CFG, T>> extends MapperConfig<T> implements Serializable {

    /* renamed from: m  reason: collision with root package name */
    protected static final b f14527m = b.empty();

    /* renamed from: n  reason: collision with root package name */
    private static final long f14528n = MapperFeature.collectLongDefaults();

    /* renamed from: o  reason: collision with root package name */
    private static final long f14529o = (((MapperFeature.AUTO_DETECT_FIELDS.getLongMask() | MapperFeature.AUTO_DETECT_GETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_IS_GETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_SETTERS.getLongMask()) | MapperFeature.AUTO_DETECT_CREATORS.getLongMask();

    /* renamed from: f  reason: collision with root package name */
    protected final SimpleMixInResolver f14530f;

    /* renamed from: g  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.a f14531g;

    /* renamed from: h  reason: collision with root package name */
    protected final PropertyName f14532h;

    /* renamed from: i  reason: collision with root package name */
    protected final Class<?> f14533i;

    /* renamed from: j  reason: collision with root package name */
    protected final ContextAttributes f14534j;

    /* renamed from: k  reason: collision with root package name */
    protected final RootNameLookup f14535k;

    /* renamed from: l  reason: collision with root package name */
    protected final ConfigOverrides f14536l;

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(BaseSettings baseSettings, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, f14528n);
        this.f14530f = simpleMixInResolver;
        this.f14531g = aVar;
        this.f14535k = rootNameLookup;
        this.f14532h = null;
        this.f14533i = null;
        this.f14534j = ContextAttributes.getEmpty();
        this.f14536l = configOverrides;
    }

    protected abstract T a(BaseSettings baseSettings);

    protected abstract T b(long j4);

    @Override // com.fasterxml.jackson.databind.introspect.l.a
    public l.a copy() {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final b findConfigOverride(Class<?> cls) {
        return this.f14536l.findOverride(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l.a
    public final Class<?> findMixInClassFor(Class<?> cls) {
        return this.f14530f.findMixInClassFor(cls);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public PropertyName findRootName(JavaType javaType) {
        PropertyName propertyName = this.f14532h;
        return propertyName != null ? propertyName : this.f14535k.findRootName(javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final Class<?> getActiveView() {
        return this.f14533i;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final ContextAttributes getAttributes() {
        return this.f14534j;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final b getConfigOverride(Class<?> cls) {
        b findOverride = this.f14536l.findOverride(cls);
        return findOverride == null ? f14527m : findOverride;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonInclude.Value getDefaultInclusion(Class<?> cls, Class<?> cls2) {
        JsonInclude.Value includeAsProperty = getConfigOverride(cls2).getIncludeAsProperty();
        JsonInclude.Value defaultPropertyInclusion = getDefaultPropertyInclusion(cls);
        return defaultPropertyInclusion == null ? includeAsProperty : defaultPropertyInclusion.withOverrides(includeAsProperty);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public Boolean getDefaultMergeable() {
        return this.f14536l.getDefaultMergeable();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this.f14536l.findFormatDefaults(cls);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls) {
        JsonIgnoreProperties.Value ignorals;
        b findOverride = this.f14536l.findOverride(cls);
        if (findOverride == null || (ignorals = findOverride.getIgnorals()) == null) {
            return null;
        }
        return ignorals;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonInclude.Value getDefaultPropertyInclusion() {
        return this.f14536l.getDefaultInclusion();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonIncludeProperties.Value getDefaultPropertyInclusions(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar) {
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPropertyInclusionByName(this, cVar);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonSetter.Value getDefaultSetterInfo() {
        return this.f14536l.getDefaultSetterInfo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.fasterxml.jackson.databind.introspect.VisibilityChecker, com.fasterxml.jackson.databind.introspect.VisibilityChecker<?>] */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final VisibilityChecker<?> getDefaultVisibilityChecker() {
        VisibilityChecker<?> defaultVisibility = this.f14536l.getDefaultVisibility();
        long j4 = this.f14525a;
        long j10 = f14529o;
        if ((j4 & j10) != j10) {
            VisibilityChecker<?> visibilityChecker = defaultVisibility;
            if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
                visibilityChecker = defaultVisibility.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker2 = visibilityChecker;
            if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS)) {
                visibilityChecker2 = visibilityChecker.withGetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
            if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS)) {
                visibilityChecker3 = visibilityChecker2.withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            VisibilityChecker<?> visibilityChecker4 = visibilityChecker3;
            if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
                visibilityChecker4 = visibilityChecker3.withSetterVisibility(JsonAutoDetect.Visibility.NONE);
            }
            return !isEnabled(MapperFeature.AUTO_DETECT_CREATORS) ? visibilityChecker4.withCreatorVisibility(JsonAutoDetect.Visibility.NONE) : visibilityChecker4;
        }
        return defaultVisibility;
    }

    public final PropertyName getFullRootName() {
        return this.f14532h;
    }

    @Deprecated
    public final String getRootName() {
        PropertyName propertyName = this.f14532h;
        if (propertyName == null) {
            return null;
        }
        return propertyName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final com.fasterxml.jackson.databind.jsontype.a getSubtypeResolver() {
        return this.f14531g;
    }

    public final int mixInCount() {
        return this.f14530f.localSize();
    }

    public abstract T with(ContextAttributes contextAttributes);

    public abstract T with(com.fasterxml.jackson.databind.jsontype.a aVar);

    public final T withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return a(this.f14526b.withAppendedAnnotationIntrospector(annotationIntrospector));
    }

    public T withAttribute(Object obj, Object obj2) {
        return with(getAttributes().withSharedAttribute(obj, obj2));
    }

    public T withAttributes(Map<?, ?> map) {
        return with(getAttributes().withSharedAttributes(map));
    }

    public final T withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return a(this.f14526b.withInsertedAnnotationIntrospector(annotationIntrospector));
    }

    public abstract T withRootName(PropertyName propertyName);

    public T withRootName(String str) {
        if (str == null) {
            return withRootName((PropertyName) null);
        }
        return withRootName(PropertyName.construct(str));
    }

    public abstract T withView(Class<?> cls);

    public T withoutAttribute(Object obj) {
        return with(getAttributes().withoutSharedAttribute(obj));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public Boolean getDefaultMergeable(Class<?> cls) {
        Boolean mergeable;
        b findOverride = this.f14536l.findOverride(cls);
        return (findOverride == null || (mergeable = findOverride.getMergeable()) == null) ? this.f14536l.getDefaultMergeable() : mergeable;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        JsonInclude.Value include = getConfigOverride(cls).getInclude();
        JsonInclude.Value defaultPropertyInclusion = getDefaultPropertyInclusion();
        return defaultPropertyInclusion == null ? include : defaultPropertyInclusion.withOverrides(include);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final T without(MapperFeature... mapperFeatureArr) {
        long j4 = this.f14525a;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            j4 &= ~mapperFeature.getLongMask();
        }
        return j4 == this.f14525a ? this : b(j4);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public PropertyName findRootName(Class<?> cls) {
        PropertyName propertyName = this.f14532h;
        return propertyName != null ? propertyName : this.f14535k.findRootName(cls, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar) {
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        return JsonIgnoreProperties.Value.merge(annotationIntrospector == null ? null : annotationIntrospector.findPropertyIgnoralByName(this, cVar), getDefaultPropertyIgnorals(cls));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final T with(MapperFeature... mapperFeatureArr) {
        long j4 = this.f14525a;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            j4 |= mapperFeature.getLongMask();
        }
        return j4 == this.f14525a ? this : b(j4);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final T with(MapperFeature mapperFeature, boolean z9) {
        long j4;
        if (z9) {
            j4 = mapperFeature.getLongMask() | this.f14525a;
        } else {
            j4 = (~mapperFeature.getLongMask()) & this.f14525a;
        }
        return j4 == this.f14525a ? this : b(j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(mapperConfigBase, mapperConfigBase.f14526b.copy());
        this.f14530f = simpleMixInResolver;
        this.f14531g = aVar;
        this.f14535k = rootNameLookup;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = configOverrides;
    }

    public final T with(AnnotationIntrospector annotationIntrospector) {
        return a(this.f14526b.withAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.fasterxml.jackson.databind.introspect.VisibilityChecker, com.fasterxml.jackson.databind.introspect.VisibilityChecker<?>] */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final VisibilityChecker<?> getDefaultVisibilityChecker(Class<?> cls, com.fasterxml.jackson.databind.introspect.c cVar) {
        VisibilityChecker<?> defaultVisibilityChecker;
        if (g.Y(cls)) {
            defaultVisibilityChecker = VisibilityChecker.Std.allPublicInstance();
        } else {
            defaultVisibilityChecker = getDefaultVisibilityChecker();
        }
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        if (annotationIntrospector != null) {
            defaultVisibilityChecker = annotationIntrospector.findAutoDetectVisibility(cVar, defaultVisibilityChecker);
        }
        b findOverride = this.f14536l.findOverride(cls);
        return findOverride != null ? defaultVisibilityChecker.withOverrides(findOverride.getVisibility()) : defaultVisibilityChecker;
    }

    public final T with(l lVar) {
        return a(this.f14526b.withClassIntrospector(lVar));
    }

    public final T with(TypeFactory typeFactory) {
        return a(this.f14526b.withTypeFactory(typeFactory));
    }

    public final T with(com.fasterxml.jackson.databind.jsontype.e<?> eVar) {
        return a(this.f14526b.withTypeResolverBuilder(eVar));
    }

    public final T with(PropertyNamingStrategy propertyNamingStrategy) {
        return a(this.f14526b.withPropertyNamingStrategy(propertyNamingStrategy));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase) {
        super(mapperConfigBase);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    public final T with(AccessorNamingStrategy.Provider provider) {
        return a(this.f14526b.withAccessorNaming(provider));
    }

    public final T with(c cVar) {
        return a(this.f14526b.withHandlerInstantiator(cVar));
    }

    public final T with(Base64Variant base64Variant) {
        return a(this.f14526b.with(base64Variant));
    }

    public T with(DateFormat dateFormat) {
        return a(this.f14526b.withDateFormat(dateFormat));
    }

    public final T with(Locale locale) {
        return a(this.f14526b.with(locale));
    }

    public final T with(TimeZone timeZone) {
        return a(this.f14526b.with(timeZone));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, BaseSettings baseSettings) {
        super(mapperConfigBase, baseSettings);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, long j4) {
        super(mapperConfigBase, j4);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, com.fasterxml.jackson.databind.jsontype.a aVar) {
        super(mapperConfigBase);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = aVar;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, PropertyName propertyName) {
        super(mapperConfigBase);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = propertyName;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, Class<?> cls) {
        super(mapperConfigBase);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = cls;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SimpleMixInResolver simpleMixInResolver) {
        super(mapperConfigBase);
        this.f14530f = simpleMixInResolver;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = mapperConfigBase.f14534j;
        this.f14536l = mapperConfigBase.f14536l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, ContextAttributes contextAttributes) {
        super(mapperConfigBase);
        this.f14530f = mapperConfigBase.f14530f;
        this.f14531g = mapperConfigBase.f14531g;
        this.f14535k = mapperConfigBase.f14535k;
        this.f14532h = mapperConfigBase.f14532h;
        this.f14533i = mapperConfigBase.f14533i;
        this.f14534j = contextAttributes;
        this.f14536l = mapperConfigBase.f14536l;
    }
}
