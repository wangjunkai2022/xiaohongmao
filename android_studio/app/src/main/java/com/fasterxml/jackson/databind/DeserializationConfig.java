package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionConfigs;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.ConstructorDetector;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.util.Collection;

/* loaded from: classes.dex */
public final class DeserializationConfig extends MapperConfigBase<DeserializationFeature, DeserializationConfig> implements Serializable {

    /* renamed from: y  reason: collision with root package name */
    private static final long f14322y = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f14323z = MapperConfig.collectFeatureDefaults(DeserializationFeature.class);

    /* renamed from: p  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> f14324p;

    /* renamed from: q  reason: collision with root package name */
    protected final JsonNodeFactory f14325q;

    /* renamed from: r  reason: collision with root package name */
    protected final CoercionConfigs f14326r;

    /* renamed from: s  reason: collision with root package name */
    protected final ConstructorDetector f14327s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f14328t;

    /* renamed from: u  reason: collision with root package name */
    protected final int f14329u;

    /* renamed from: v  reason: collision with root package name */
    protected final int f14330v;

    /* renamed from: w  reason: collision with root package name */
    protected final int f14331w;

    /* renamed from: x  reason: collision with root package name */
    protected final int f14332x;

    public DeserializationConfig(BaseSettings baseSettings, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides, CoercionConfigs coercionConfigs) {
        super(baseSettings, aVar, simpleMixInResolver, rootNameLookup, configOverrides);
        this.f14328t = f14323z;
        this.f14324p = null;
        this.f14325q = JsonNodeFactory.instance;
        this.f14327s = null;
        this.f14326r = coercionConfigs;
        this.f14329u = 0;
        this.f14330v = 0;
        this.f14331w = 0;
        this.f14332x = 0;
    }

    private DeserializationConfig d(com.fasterxml.jackson.core.b... bVarArr) {
        JsonParser.Feature mappedFeature;
        int i4 = this.f14329u;
        int i10 = this.f14330v;
        int i11 = this.f14331w;
        int i12 = i4;
        int i13 = i10;
        int i14 = i11;
        int i15 = this.f14332x;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i14 |= mask;
            i15 |= mask;
            if ((bVar instanceof JsonReadFeature) && (mappedFeature = ((JsonReadFeature) bVar).mappedFeature()) != null) {
                int mask2 = mappedFeature.getMask();
                i12 |= mask2;
                i13 |= mask2;
            }
        }
        return (this.f14331w == i14 && this.f14332x == i15 && this.f14329u == i12 && this.f14330v == i13) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, i12, i13, i14, i15);
    }

    private DeserializationConfig h(com.fasterxml.jackson.core.b... bVarArr) {
        JsonParser.Feature mappedFeature;
        int i4 = this.f14329u;
        int i10 = this.f14330v;
        int i11 = this.f14331w;
        int i12 = i4;
        int i13 = i10;
        int i14 = i11;
        int i15 = this.f14332x;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i14 &= ~mask;
            i15 |= mask;
            if ((bVar instanceof JsonReadFeature) && (mappedFeature = ((JsonReadFeature) bVar).mappedFeature()) != null) {
                int mask2 = mappedFeature.getMask();
                i12 &= ~mask2;
                i13 |= mask2;
            }
        }
        return (this.f14331w == i14 && this.f14332x == i15 && this.f14329u == i12 && this.f14330v == i13) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, i12, i13, i14, i15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: c */
    public final DeserializationConfig a(BaseSettings baseSettings) {
        return this.f14526b == baseSettings ? this : new DeserializationConfig(this, baseSettings);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: e */
    public final DeserializationConfig b(long j4) {
        return new DeserializationConfig(this, j4, this.f14328t, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    public CoercionAction findCoercionAction(LogicalType logicalType, Class<?> cls, CoercionInputShape coercionInputShape) {
        return this.f14326r.findCoercion(this, logicalType, cls, coercionInputShape);
    }

    public CoercionAction findCoercionFromBlankString(LogicalType logicalType, Class<?> cls, CoercionAction coercionAction) {
        return this.f14326r.findCoercionFromBlankString(this, logicalType, cls, coercionAction);
    }

    public com.fasterxml.jackson.databind.jsontype.b findTypeDeserializer(JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.introspect.c A = introspectClassAnnotations(javaType.getRawClass()).A();
        com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver = getAnnotationIntrospector().findTypeResolver(this, A, javaType);
        Collection<NamedType> collection = null;
        if (findTypeResolver == null) {
            findTypeResolver = getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
        } else {
            collection = getSubtypeResolver().collectAndResolveSubtypesByTypeId(this, A);
        }
        return findTypeResolver.buildTypeDeserializer(this, javaType, collection);
    }

    public ConstructorDetector getConstructorDetector() {
        ConstructorDetector constructorDetector = this.f14327s;
        return constructorDetector == null ? ConstructorDetector.DEFAULT : constructorDetector;
    }

    public final int getDeserializationFeatures() {
        return this.f14328t;
    }

    public final JsonNodeFactory getNodeFactory() {
        return this.f14325q;
    }

    public com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> getProblemHandlers() {
        return this.f14324p;
    }

    public final boolean hasDeserializationFeatures(int i4) {
        return (this.f14328t & i4) == i4;
    }

    public final boolean hasSomeOfFeatures(int i4) {
        return (i4 & this.f14328t) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseSettings i() {
        return this.f14526b;
    }

    public JsonParser initialize(JsonParser jsonParser) {
        int i4 = this.f14330v;
        if (i4 != 0) {
            jsonParser.C1(this.f14329u, i4);
        }
        int i10 = this.f14332x;
        if (i10 != 0) {
            jsonParser.B1(this.f14331w, i10);
        }
        return jsonParser;
    }

    public b introspect(JavaType javaType) {
        return getClassIntrospector().forDeserialization(this, javaType, this);
    }

    public b introspectForBuilder(JavaType javaType, b bVar) {
        return getClassIntrospector().forDeserializationWithBuilder(this, javaType, this, bVar);
    }

    public b introspectForCreation(JavaType javaType) {
        return getClassIntrospector().forCreation(this, javaType, this);
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (deserializationFeature.getMask() & this.f14328t) != 0;
    }

    public final boolean requiresFullValue() {
        return DeserializationFeature.FAIL_ON_TRAILING_TOKENS.enabledIn(this.f14328t);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public boolean useRootWrapping() {
        PropertyName propertyName = this.f14532h;
        if (propertyName != null) {
            return !propertyName.isEmpty();
        }
        return isEnabled(DeserializationFeature.UNWRAP_ROOT_VALUE);
    }

    public DeserializationConfig withFeatures(DeserializationFeature... deserializationFeatureArr) {
        int i4 = this.f14328t;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            i4 |= deserializationFeature.getMask();
        }
        return i4 == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, i4, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    public DeserializationConfig withHandler(com.fasterxml.jackson.databind.deser.f fVar) {
        return com.fasterxml.jackson.databind.util.l.a(this.f14324p, fVar) ? this : new DeserializationConfig(this, new com.fasterxml.jackson.databind.util.l(fVar, this.f14324p));
    }

    public DeserializationConfig withNoProblemHandlers() {
        return this.f14324p == null ? this : new DeserializationConfig(this, (com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f>) null);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public /* bridge */ /* synthetic */ DeserializationConfig withView(Class cls) {
        return withView((Class<?>) cls);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature) {
        int i4 = this.f14328t & (~deserializationFeature.getMask());
        return i4 == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, i4, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    public DeserializationConfig withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        int i4 = this.f14328t;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            i4 &= ~deserializationFeature.getMask();
        }
        return i4 == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, i4, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    @Deprecated
    public b introspectForBuilder(JavaType javaType) {
        return getClassIntrospector().forDeserializationWithBuilder(this, javaType, this);
    }

    public final boolean isEnabled(JsonParser.Feature feature, JsonFactory jsonFactory) {
        if ((feature.getMask() & this.f14330v) != 0) {
            return (feature.getMask() & this.f14329u) != 0;
        }
        return jsonFactory.isEnabled(feature);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withRootName(PropertyName propertyName) {
        if (propertyName == null) {
            if (this.f14532h == null) {
                return this;
            }
        } else if (propertyName.equals(this.f14532h)) {
            return this;
        }
        return new DeserializationConfig(this, propertyName);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig withView(Class<?> cls) {
        return this.f14533i == cls ? this : new DeserializationConfig(this, cls);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(com.fasterxml.jackson.databind.jsontype.a aVar) {
        return this.f14531g == aVar ? this : new DeserializationConfig(this, aVar);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int i4 = (~deserializationFeature.getMask()) & this.f14328t;
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            i4 &= ~deserializationFeature2.getMask();
        }
        return i4 == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, i4, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public DeserializationConfig with(ContextAttributes contextAttributes) {
        return contextAttributes == this.f14534j ? this : new DeserializationConfig(this, contextAttributes);
    }

    public JsonParser initialize(JsonParser jsonParser, com.fasterxml.jackson.core.c cVar) {
        int i4 = this.f14330v;
        if (i4 != 0) {
            jsonParser.C1(this.f14329u, i4);
        }
        int i10 = this.f14332x;
        if (i10 != 0) {
            jsonParser.B1(this.f14331w, i10);
        }
        if (cVar != null) {
            jsonParser.T1(cVar);
        }
        return jsonParser;
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature) {
        int mask = this.f14328t | deserializationFeature.getMask();
        return mask == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, mask, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    public DeserializationConfig withFeatures(JsonParser.Feature... featureArr) {
        int i4 = this.f14329u;
        int i10 = i4;
        int i11 = this.f14330v;
        for (JsonParser.Feature feature : featureArr) {
            int mask = feature.getMask();
            i10 |= mask;
            i11 |= mask;
        }
        return (this.f14329u == i10 && this.f14330v == i11) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, i10, i11, this.f14331w, this.f14332x);
    }

    public DeserializationConfig withoutFeatures(JsonParser.Feature... featureArr) {
        int i4 = this.f14329u;
        int i10 = i4;
        int i11 = this.f14330v;
        for (JsonParser.Feature feature : featureArr) {
            int mask = feature.getMask();
            i10 &= ~mask;
            i11 |= mask;
        }
        return (this.f14329u == i10 && this.f14330v == i11) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, i10, i11, this.f14331w, this.f14332x);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int mask = deserializationFeature.getMask() | this.f14328t;
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            mask |= deserializationFeature2.getMask();
        }
        return mask == this.f14328t ? this : new DeserializationConfig(this, this.f14525a, mask, this.f14329u, this.f14330v, this.f14331w, this.f14332x);
    }

    public DeserializationConfig without(JsonParser.Feature feature) {
        int i4 = this.f14329u & (~feature.getMask());
        int mask = this.f14330v | feature.getMask();
        return (this.f14329u == i4 && this.f14330v == mask) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, i4, mask, this.f14331w, this.f14332x);
    }

    public DeserializationConfig withFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        if (bVarArr.length > 0 && (bVarArr[0] instanceof JsonReadFeature)) {
            return d(bVarArr);
        }
        int i4 = this.f14331w;
        int i10 = i4;
        int i11 = this.f14332x;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i10 |= mask;
            i11 |= mask;
        }
        return (this.f14331w == i10 && this.f14332x == i11) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, this.f14329u, this.f14330v, i10, i11);
    }

    public DeserializationConfig without(com.fasterxml.jackson.core.b bVar) {
        if (bVar instanceof JsonReadFeature) {
            return h(bVar);
        }
        int i4 = this.f14331w & (~bVar.getMask());
        int mask = this.f14332x | bVar.getMask();
        return (this.f14331w == i4 && this.f14332x == mask) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, this.f14329u, this.f14330v, i4, mask);
    }

    public DeserializationConfig withoutFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        if (bVarArr.length > 0 && (bVarArr[0] instanceof JsonReadFeature)) {
            return h(bVarArr);
        }
        int i4 = this.f14331w;
        int i10 = i4;
        int i11 = this.f14332x;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i10 &= ~mask;
            i11 |= mask;
        }
        return (this.f14331w == i10 && this.f14332x == i11) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, this.f14329u, this.f14330v, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationConfig(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides, CoercionConfigs coercionConfigs) {
        super(deserializationConfig, aVar, simpleMixInResolver, rootNameLookup, configOverrides);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14327s = deserializationConfig.f14327s;
        this.f14326r = coercionConfigs;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    public DeserializationConfig with(JsonParser.Feature feature) {
        int mask = this.f14329u | feature.getMask();
        int mask2 = this.f14330v | feature.getMask();
        return (this.f14329u == mask && this.f14330v == mask2) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, mask, mask2, this.f14331w, this.f14332x);
    }

    public DeserializationConfig with(com.fasterxml.jackson.core.b bVar) {
        if (bVar instanceof JsonReadFeature) {
            return d(bVar);
        }
        int mask = this.f14331w | bVar.getMask();
        int mask2 = this.f14332x | bVar.getMask();
        return (this.f14331w == mask && this.f14332x == mask2) ? this : new DeserializationConfig(this, this.f14525a, this.f14328t, this.f14329u, this.f14330v, mask, mask2);
    }

    public DeserializationConfig with(JsonNodeFactory jsonNodeFactory) {
        return this.f14325q == jsonNodeFactory ? this : new DeserializationConfig(this, jsonNodeFactory);
    }

    @Deprecated
    public DeserializationConfig(BaseSettings baseSettings, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        this(baseSettings, aVar, simpleMixInResolver, rootNameLookup, configOverrides, new CoercionConfigs());
    }

    public DeserializationConfig with(ConstructorDetector constructorDetector) {
        return this.f14327s == constructorDetector ? this : new DeserializationConfig(this, constructorDetector);
    }

    @Deprecated
    protected DeserializationConfig(DeserializationConfig deserializationConfig, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        this(deserializationConfig, deserializationConfig.f14531g, simpleMixInResolver, rootNameLookup, configOverrides, new CoercionConfigs());
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, long j4, int i4, int i10, int i11, int i12, int i13) {
        super(deserializationConfig, j4);
        this.f14328t = i4;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = i10;
        this.f14330v = i11;
        this.f14331w = i12;
        this.f14332x = i13;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.jsontype.a aVar) {
        super(deserializationConfig, aVar);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, BaseSettings baseSettings) {
        super(deserializationConfig, baseSettings);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, JsonNodeFactory jsonNodeFactory) {
        super(deserializationConfig);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = jsonNodeFactory;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, ConstructorDetector constructorDetector) {
        super(deserializationConfig);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = constructorDetector;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, com.fasterxml.jackson.databind.util.l<com.fasterxml.jackson.databind.deser.f> lVar) {
        super(deserializationConfig);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = lVar;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, PropertyName propertyName) {
        super(deserializationConfig, propertyName);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, Class<?> cls) {
        super(deserializationConfig, cls);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    protected DeserializationConfig(DeserializationConfig deserializationConfig, ContextAttributes contextAttributes) {
        super(deserializationConfig, contextAttributes);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationConfig(DeserializationConfig deserializationConfig, SimpleMixInResolver simpleMixInResolver) {
        super(deserializationConfig, simpleMixInResolver);
        this.f14328t = deserializationConfig.f14328t;
        this.f14324p = deserializationConfig.f14324p;
        this.f14325q = deserializationConfig.f14325q;
        this.f14326r = deserializationConfig.f14326r;
        this.f14327s = deserializationConfig.f14327s;
        this.f14329u = deserializationConfig.f14329u;
        this.f14330v = deserializationConfig.f14330v;
        this.f14331w = deserializationConfig.f14331w;
        this.f14332x = deserializationConfig.f14332x;
    }
}
