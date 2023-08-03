package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.json.JsonWriteFeature;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.text.DateFormat;

/* loaded from: classes.dex */
public final class SerializationConfig extends MapperConfigBase<SerializationFeature, SerializationConfig> implements Serializable {

    /* renamed from: w  reason: collision with root package name */
    private static final long f14450w = 1;

    /* renamed from: x  reason: collision with root package name */
    protected static final com.fasterxml.jackson.core.i f14451x = new DefaultPrettyPrinter();

    /* renamed from: y  reason: collision with root package name */
    private static final int f14452y = MapperConfig.collectFeatureDefaults(SerializationFeature.class);

    /* renamed from: p  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.f f14453p;

    /* renamed from: q  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.i f14454q;

    /* renamed from: r  reason: collision with root package name */
    protected final int f14455r;

    /* renamed from: s  reason: collision with root package name */
    protected final int f14456s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f14457t;

    /* renamed from: u  reason: collision with root package name */
    protected final int f14458u;

    /* renamed from: v  reason: collision with root package name */
    protected final int f14459v;

    public SerializationConfig(BaseSettings baseSettings, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, aVar, simpleMixInResolver, rootNameLookup, configOverrides);
        this.f14455r = f14452y;
        this.f14453p = null;
        this.f14454q = f14451x;
        this.f14456s = 0;
        this.f14457t = 0;
        this.f14458u = 0;
        this.f14459v = 0;
    }

    private SerializationConfig d(com.fasterxml.jackson.core.b... bVarArr) {
        JsonGenerator.Feature mappedFeature;
        int i4 = this.f14456s;
        int i10 = this.f14457t;
        int i11 = this.f14458u;
        int i12 = i4;
        int i13 = i10;
        int i14 = i11;
        int i15 = this.f14459v;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i14 |= mask;
            i15 |= mask;
            if ((bVar instanceof JsonWriteFeature) && (mappedFeature = ((JsonWriteFeature) bVar).mappedFeature()) != null) {
                int mask2 = mappedFeature.getMask();
                i12 |= mask2;
                i13 |= mask2;
            }
        }
        return (this.f14458u == i14 && this.f14459v == i15 && this.f14456s == i12 && this.f14457t == i13) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, i12, i13, i14, i15);
    }

    private SerializationConfig h(com.fasterxml.jackson.core.b... bVarArr) {
        JsonGenerator.Feature mappedFeature;
        int i4 = this.f14456s;
        int i10 = this.f14457t;
        int i11 = this.f14458u;
        int i12 = i4;
        int i13 = i10;
        int i14 = i11;
        int i15 = this.f14459v;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i14 &= ~mask;
            i15 |= mask;
            if ((bVar instanceof JsonWriteFeature) && (mappedFeature = ((JsonWriteFeature) bVar).mappedFeature()) != null) {
                int mask2 = mappedFeature.getMask();
                i12 &= ~mask2;
                i13 |= mask2;
            }
        }
        return (this.f14458u == i14 && this.f14459v == i15 && this.f14456s == i12 && this.f14457t == i13) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, i12, i13, i14, i15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: c */
    public final SerializationConfig a(BaseSettings baseSettings) {
        return this.f14526b == baseSettings ? this : new SerializationConfig(this, baseSettings);
    }

    public com.fasterxml.jackson.core.i constructDefaultPrettyPrinter() {
        com.fasterxml.jackson.core.i iVar = this.f14454q;
        return iVar instanceof com.fasterxml.jackson.core.util.d ? (com.fasterxml.jackson.core.i) ((com.fasterxml.jackson.core.util.d) iVar).createInstance() : iVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: e */
    public final SerializationConfig b(long j4) {
        return new SerializationConfig(this, j4, this.f14455r, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public com.fasterxml.jackson.core.i getDefaultPrettyPrinter() {
        return this.f14454q;
    }

    public com.fasterxml.jackson.databind.ser.f getFilterProvider() {
        return this.f14453p;
    }

    public final int getSerializationFeatures() {
        return this.f14455r;
    }

    @Deprecated
    public JsonInclude.Include getSerializationInclusion() {
        JsonInclude.Include valueInclusion = getDefaultPropertyInclusion().getValueInclusion();
        return valueInclusion == JsonInclude.Include.USE_DEFAULTS ? JsonInclude.Include.ALWAYS : valueInclusion;
    }

    public final boolean hasSerializationFeatures(int i4) {
        return (this.f14455r & i4) == i4;
    }

    public void initialize(JsonGenerator jsonGenerator) {
        com.fasterxml.jackson.core.i constructDefaultPrettyPrinter;
        if (SerializationFeature.INDENT_OUTPUT.enabledIn(this.f14455r) && jsonGenerator.n0() == null && (constructDefaultPrettyPrinter = constructDefaultPrettyPrinter()) != null) {
            jsonGenerator.z0(constructDefaultPrettyPrinter);
        }
        boolean enabledIn = SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN.enabledIn(this.f14455r);
        int i4 = this.f14457t;
        if (i4 != 0 || enabledIn) {
            int i10 = this.f14456s;
            if (enabledIn) {
                int mask = JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN.getMask();
                i10 |= mask;
                i4 |= mask;
            }
            jsonGenerator.t0(i10, i4);
        }
        int i11 = this.f14459v;
        if (i11 != 0) {
            jsonGenerator.s0(this.f14458u, i11);
        }
    }

    public b introspect(JavaType javaType) {
        return getClassIntrospector().forSerialization(this, javaType, this);
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return (serializationFeature.getMask() & this.f14455r) != 0;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public boolean useRootWrapping() {
        PropertyName propertyName = this.f14532h;
        if (propertyName != null) {
            return !propertyName.isEmpty();
        }
        return isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
    }

    public SerializationConfig withDefaultPrettyPrinter(com.fasterxml.jackson.core.i iVar) {
        return this.f14454q == iVar ? this : new SerializationConfig(this, iVar);
    }

    public SerializationConfig withFeatures(SerializationFeature... serializationFeatureArr) {
        int i4 = this.f14455r;
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            i4 |= serializationFeature.getMask();
        }
        return i4 == this.f14455r ? this : new SerializationConfig(this, this.f14525a, i4, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public SerializationConfig withFilters(com.fasterxml.jackson.databind.ser.f fVar) {
        return fVar == this.f14453p ? this : new SerializationConfig(this, fVar);
    }

    @Deprecated
    public SerializationConfig withPropertyInclusion(JsonInclude.Value value) {
        this.f14536l.setDefaultInclusion(value);
        return this;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public /* bridge */ /* synthetic */ SerializationConfig withView(Class cls) {
        return withView((Class<?>) cls);
    }

    public SerializationConfig without(SerializationFeature serializationFeature) {
        int i4 = this.f14455r & (~serializationFeature.getMask());
        return i4 == this.f14455r ? this : new SerializationConfig(this, this.f14525a, i4, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public SerializationConfig withoutFeatures(SerializationFeature... serializationFeatureArr) {
        int i4 = this.f14455r;
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            i4 &= ~serializationFeature.getMask();
        }
        return i4 == this.f14455r ? this : new SerializationConfig(this, this.f14525a, i4, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public final boolean isEnabled(JsonGenerator.Feature feature, JsonFactory jsonFactory) {
        if ((feature.getMask() & this.f14457t) != 0) {
            return (feature.getMask() & this.f14456s) != 0;
        }
        return jsonFactory.isEnabled(feature);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public SerializationConfig withRootName(PropertyName propertyName) {
        if (propertyName == null) {
            if (this.f14532h == null) {
                return this;
            }
        } else if (propertyName.equals(this.f14532h)) {
            return this;
        }
        return new SerializationConfig(this, propertyName);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public SerializationConfig withView(Class<?> cls) {
        return this.f14533i == cls ? this : new SerializationConfig(this, cls);
    }

    public SerializationConfig without(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        int i4 = (~serializationFeature.getMask()) & this.f14455r;
        for (SerializationFeature serializationFeature2 : serializationFeatureArr) {
            i4 &= ~serializationFeature2.getMask();
        }
        return i4 == this.f14455r ? this : new SerializationConfig(this, this.f14525a, i4, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public SerializationConfig with(com.fasterxml.jackson.databind.jsontype.a aVar) {
        return aVar == this.f14531g ? this : new SerializationConfig(this, aVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public SerializationConfig with(ContextAttributes contextAttributes) {
        return contextAttributes == this.f14534j ? this : new SerializationConfig(this, contextAttributes);
    }

    public SerializationConfig withFeatures(JsonGenerator.Feature... featureArr) {
        int i4 = this.f14456s;
        int i10 = i4;
        int i11 = this.f14457t;
        for (JsonGenerator.Feature feature : featureArr) {
            int mask = feature.getMask();
            i10 |= mask;
            i11 |= mask;
        }
        return (this.f14456s == i10 && this.f14457t == i11) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, i10, i11, this.f14458u, this.f14459v);
    }

    public SerializationConfig withoutFeatures(JsonGenerator.Feature... featureArr) {
        int i4 = this.f14456s;
        int i10 = i4;
        int i11 = this.f14457t;
        for (JsonGenerator.Feature feature : featureArr) {
            int mask = feature.getMask();
            i10 &= ~mask;
            i11 |= mask;
        }
        return (this.f14456s == i10 && this.f14457t == i11) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, i10, i11, this.f14458u, this.f14459v);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    public SerializationConfig with(DateFormat dateFormat) {
        SerializationConfig serializationConfig = (SerializationConfig) super.with(dateFormat);
        if (dateFormat == null) {
            return serializationConfig.with(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        return serializationConfig.without(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    }

    public SerializationConfig without(JsonGenerator.Feature feature) {
        int i4 = this.f14456s & (~feature.getMask());
        int mask = this.f14457t | feature.getMask();
        return (this.f14456s == i4 && this.f14457t == mask) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, i4, mask, this.f14458u, this.f14459v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SerializationConfig(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.jsontype.a aVar, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(serializationConfig, aVar, simpleMixInResolver, rootNameLookup, configOverrides);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    public SerializationConfig with(SerializationFeature serializationFeature) {
        int mask = this.f14455r | serializationFeature.getMask();
        return mask == this.f14455r ? this : new SerializationConfig(this, this.f14525a, mask, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public SerializationConfig withFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        if (bVarArr.length > 0 && (bVarArr[0] instanceof JsonWriteFeature)) {
            return d(bVarArr);
        }
        int i4 = this.f14458u;
        int i10 = i4;
        int i11 = this.f14459v;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i10 |= mask;
            i11 |= mask;
        }
        return (this.f14458u == i10 && this.f14459v == i11) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, this.f14456s, this.f14457t, i10, i11);
    }

    public SerializationConfig without(com.fasterxml.jackson.core.b bVar) {
        if (bVar instanceof JsonWriteFeature) {
            return h(bVar);
        }
        int i4 = this.f14458u & (~bVar.getMask());
        int mask = this.f14459v | bVar.getMask();
        return (this.f14458u == i4 && this.f14459v == mask) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, this.f14456s, this.f14457t, i4, mask);
    }

    public SerializationConfig withoutFeatures(com.fasterxml.jackson.core.b... bVarArr) {
        if (bVarArr.length > 0 && (bVarArr[0] instanceof JsonWriteFeature)) {
            return h(bVarArr);
        }
        int i4 = this.f14458u;
        int i10 = i4;
        int i11 = this.f14459v;
        for (com.fasterxml.jackson.core.b bVar : bVarArr) {
            int mask = bVar.getMask();
            i10 &= ~mask;
            i11 |= mask;
        }
        return (this.f14458u == i10 && this.f14459v == i11) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, this.f14456s, this.f14457t, i10, i11);
    }

    public SerializationConfig with(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        int mask = serializationFeature.getMask() | this.f14455r;
        for (SerializationFeature serializationFeature2 : serializationFeatureArr) {
            mask |= serializationFeature2.getMask();
        }
        return mask == this.f14455r ? this : new SerializationConfig(this, this.f14525a, mask, this.f14456s, this.f14457t, this.f14458u, this.f14459v);
    }

    public SerializationConfig with(JsonGenerator.Feature feature) {
        int mask = this.f14456s | feature.getMask();
        int mask2 = this.f14457t | feature.getMask();
        return (this.f14456s == mask && this.f14457t == mask2) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, mask, mask2, this.f14458u, this.f14459v);
    }

    @Deprecated
    protected SerializationConfig(SerializationConfig serializationConfig, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        this(serializationConfig, serializationConfig.f14531g, simpleMixInResolver, rootNameLookup, configOverrides);
    }

    private SerializationConfig(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.jsontype.a aVar) {
        super(serializationConfig, aVar);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    public SerializationConfig with(com.fasterxml.jackson.core.b bVar) {
        if (bVar instanceof JsonWriteFeature) {
            return d(bVar);
        }
        int mask = this.f14458u | bVar.getMask();
        int mask2 = this.f14459v | bVar.getMask();
        return (this.f14458u == mask && this.f14459v == mask2) ? this : new SerializationConfig(this, this.f14525a, this.f14455r, this.f14456s, this.f14457t, mask, mask2);
    }

    private SerializationConfig(SerializationConfig serializationConfig, long j4, int i4, int i10, int i11, int i12, int i13) {
        super(serializationConfig, j4);
        this.f14455r = i4;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = i10;
        this.f14457t = i11;
        this.f14458u = i12;
        this.f14459v = i13;
    }

    private SerializationConfig(SerializationConfig serializationConfig, BaseSettings baseSettings) {
        super(serializationConfig, baseSettings);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    private SerializationConfig(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.ser.f fVar) {
        super(serializationConfig);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = fVar;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    private SerializationConfig(SerializationConfig serializationConfig, Class<?> cls) {
        super(serializationConfig, cls);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    private SerializationConfig(SerializationConfig serializationConfig, PropertyName propertyName) {
        super(serializationConfig, propertyName);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    protected SerializationConfig(SerializationConfig serializationConfig, ContextAttributes contextAttributes) {
        super(serializationConfig, contextAttributes);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SerializationConfig(SerializationConfig serializationConfig, SimpleMixInResolver simpleMixInResolver) {
        super(serializationConfig, simpleMixInResolver);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = serializationConfig.f14454q;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }

    protected SerializationConfig(SerializationConfig serializationConfig, com.fasterxml.jackson.core.i iVar) {
        super(serializationConfig);
        this.f14455r = serializationConfig.f14455r;
        this.f14453p = serializationConfig.f14453p;
        this.f14454q = iVar;
        this.f14456s = serializationConfig.f14456s;
        this.f14457t = serializationConfig.f14457t;
        this.f14458u = serializationConfig.f14458u;
        this.f14459v = serializationConfig.f14459v;
    }
}
