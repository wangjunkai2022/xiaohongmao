package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import java.util.Collection;

/* compiled from: StdTypeResolverBuilder.java */
/* loaded from: classes.dex */
public class h implements com.fasterxml.jackson.databind.jsontype.e<h> {

    /* renamed from: a  reason: collision with root package name */
    protected JsonTypeInfo.Id f15451a;

    /* renamed from: b  reason: collision with root package name */
    protected JsonTypeInfo.As f15452b;

    /* renamed from: c  reason: collision with root package name */
    protected String f15453c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f15454d;

    /* renamed from: e  reason: collision with root package name */
    protected Class<?> f15455e;

    /* renamed from: f  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.jsontype.c f15456f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StdTypeResolverBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15457a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f15458b;

        static {
            int[] iArr = new int[JsonTypeInfo.Id.values().length];
            f15458b = iArr;
            try {
                iArr[JsonTypeInfo.Id.DEDUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15458b[JsonTypeInfo.Id.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15458b[JsonTypeInfo.Id.MINIMAL_CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15458b[JsonTypeInfo.Id.NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15458b[JsonTypeInfo.Id.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15458b[JsonTypeInfo.Id.CUSTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[JsonTypeInfo.As.values().length];
            f15457a = iArr2;
            try {
                iArr2[JsonTypeInfo.As.WRAPPER_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15457a[JsonTypeInfo.As.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15457a[JsonTypeInfo.As.WRAPPER_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15457a[JsonTypeInfo.As.EXTERNAL_PROPERTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15457a[JsonTypeInfo.As.EXISTING_PROPERTY.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public h() {
        this.f15454d = false;
    }

    public static h noTypeInfoBuilder() {
        return new h().init(JsonTypeInfo.Id.NONE, (com.fasterxml.jackson.databind.jsontype.c) null);
    }

    protected boolean a(MapperConfig<?> mapperConfig, JavaType javaType) {
        return false;
    }

    protected JavaType b(DeserializationConfig deserializationConfig, JavaType javaType) {
        Class<?> cls = this.f15455e;
        if (cls != null) {
            if (cls != Void.class && cls != c2.i.class) {
                if (javaType.hasRawClass(cls)) {
                    return javaType;
                }
                if (javaType.isTypeOrSuperTypeOf(this.f15455e)) {
                    return deserializationConfig.getTypeFactory().constructSpecializedType(javaType, this.f15455e);
                }
                if (javaType.hasRawClass(this.f15455e)) {
                    return javaType;
                }
            } else {
                return deserializationConfig.getTypeFactory().constructType(this.f15455e);
            }
        }
        if (!deserializationConfig.isEnabled(MapperFeature.USE_BASE_TYPE_AS_DEFAULT_IMPL) || javaType.isAbstract()) {
            return null;
        }
        return javaType;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public com.fasterxml.jackson.databind.jsontype.b buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this.f15451a == JsonTypeInfo.Id.NONE) {
            return null;
        }
        if (!javaType.isPrimitive() || a(deserializationConfig, javaType)) {
            com.fasterxml.jackson.databind.jsontype.c c10 = c(deserializationConfig, javaType, e(deserializationConfig, javaType), collection, false, true);
            JavaType b10 = b(deserializationConfig, javaType);
            if (this.f15451a == JsonTypeInfo.Id.DEDUCTION) {
                return new AsDeductionTypeDeserializer(javaType, c10, b10, deserializationConfig, collection);
            }
            int i4 = a.f15457a[this.f15452b.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        return new AsWrapperTypeDeserializer(javaType, c10, this.f15453c, this.f15454d, b10);
                    }
                    if (i4 == 4) {
                        return new AsExternalTypeDeserializer(javaType, c10, this.f15453c, this.f15454d, b10);
                    }
                    if (i4 != 5) {
                        throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this.f15452b);
                    }
                }
                return new AsPropertyTypeDeserializer(javaType, c10, this.f15453c, this.f15454d, b10, this.f15452b);
            }
            return new AsArrayTypeDeserializer(javaType, c10, this.f15453c, this.f15454d, b10);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public com.fasterxml.jackson.databind.jsontype.f buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this.f15451a == JsonTypeInfo.Id.NONE) {
            return null;
        }
        if (!javaType.isPrimitive() || a(serializationConfig, javaType)) {
            com.fasterxml.jackson.databind.jsontype.c c10 = c(serializationConfig, javaType, subTypeValidator(serializationConfig), collection, true, false);
            if (this.f15451a == JsonTypeInfo.Id.DEDUCTION) {
                return new b(c10, null, this.f15453c);
            }
            int i4 = a.f15457a[this.f15452b.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 == 5) {
                                return new b(c10, null, this.f15453c);
                            }
                            throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this.f15452b);
                        }
                        return new c(c10, null, this.f15453c);
                    }
                    return new e(c10, null);
                }
                return new d(c10, null, this.f15453c);
            }
            return new com.fasterxml.jackson.databind.jsontype.impl.a(c10, null);
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.jsontype.c c(MapperConfig<?> mapperConfig, JavaType javaType, PolymorphicTypeValidator polymorphicTypeValidator, Collection<NamedType> collection, boolean z9, boolean z10) {
        com.fasterxml.jackson.databind.jsontype.c cVar = this.f15456f;
        if (cVar != null) {
            return cVar;
        }
        JsonTypeInfo.Id id = this.f15451a;
        if (id != null) {
            int i4 = a.f15458b[id.ordinal()];
            if (i4 == 1 || i4 == 2) {
                return f.j(javaType, mapperConfig, polymorphicTypeValidator);
            }
            if (i4 != 3) {
                if (i4 != 4) {
                    if (i4 == 5) {
                        return null;
                    }
                    throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + this.f15451a);
                }
                return k.j(mapperConfig, javaType, collection, z9, z10);
            }
            return g.l(javaType, mapperConfig, polymorphicTypeValidator);
        }
        throw new IllegalStateException("Cannot build, 'init()' not yet called");
    }

    protected PolymorphicTypeValidator d(MapperConfig<?> mapperConfig, JavaType javaType, PolymorphicTypeValidator polymorphicTypeValidator) {
        throw new IllegalArgumentException(String.format("Configured `PolymorphicTypeValidator` (of type %s) denied resolution of all subtypes of base type %s", com.fasterxml.jackson.databind.util.g.j(polymorphicTypeValidator), com.fasterxml.jackson.databind.util.g.j(javaType.getRawClass())));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public /* bridge */ /* synthetic */ h defaultImpl(Class cls) {
        return defaultImpl2((Class<?>) cls);
    }

    protected PolymorphicTypeValidator e(MapperConfig<?> mapperConfig, JavaType javaType) {
        PolymorphicTypeValidator subTypeValidator = subTypeValidator(mapperConfig);
        JsonTypeInfo.Id id = this.f15451a;
        if (id == JsonTypeInfo.Id.CLASS || id == JsonTypeInfo.Id.MINIMAL_CLASS) {
            PolymorphicTypeValidator.Validity validateBaseType = subTypeValidator.validateBaseType(mapperConfig, javaType);
            if (validateBaseType == PolymorphicTypeValidator.Validity.DENIED) {
                return d(mapperConfig, javaType, subTypeValidator);
            }
            if (validateBaseType == PolymorphicTypeValidator.Validity.ALLOWED) {
                return LaissezFaireSubTypeValidator.instance;
            }
        }
        return subTypeValidator;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public Class<?> getDefaultImpl() {
        return this.f15455e;
    }

    public String getTypeProperty() {
        return this.f15453c;
    }

    public boolean isTypeIdVisible() {
        return this.f15454d;
    }

    public PolymorphicTypeValidator subTypeValidator(MapperConfig<?> mapperConfig) {
        return mapperConfig.getPolymorphicTypeValidator();
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public /* bridge */ /* synthetic */ h withDefaultImpl(Class cls) {
        return withDefaultImpl2((Class<?>) cls);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    /* renamed from: defaultImpl  reason: avoid collision after fix types in other method */
    public h defaultImpl2(Class<?> cls) {
        this.f15455e = cls;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public h inclusion(JsonTypeInfo.As as) {
        if (as != null) {
            this.f15452b = as;
            return this;
        }
        throw new IllegalArgumentException("includeAs cannot be null");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public h init(JsonTypeInfo.Id id, com.fasterxml.jackson.databind.jsontype.c cVar) {
        if (id != null) {
            this.f15451a = id;
            this.f15456f = cVar;
            this.f15453c = id.getDefaultPropertyName();
            return this;
        }
        throw new IllegalArgumentException("idType cannot be null");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public h typeIdVisibility(boolean z9) {
        this.f15454d = z9;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    public h typeProperty(String str) {
        if (str == null || str.isEmpty()) {
            str = this.f15451a.getDefaultPropertyName();
        }
        this.f15453c = str;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.e
    /* renamed from: withDefaultImpl  reason: avoid collision after fix types in other method */
    public h withDefaultImpl2(Class<?> cls) {
        if (this.f15455e == cls) {
            return this;
        }
        com.fasterxml.jackson.databind.util.g.z0(h.class, this, "withDefaultImpl");
        return new h(this, cls);
    }

    protected h(JsonTypeInfo.Id id, JsonTypeInfo.As as, String str) {
        this.f15454d = false;
        this.f15451a = id;
        this.f15452b = as;
        this.f15453c = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(h hVar, Class<?> cls) {
        this.f15454d = false;
        this.f15451a = hVar.f15451a;
        this.f15452b = hVar.f15452b;
        this.f15453c = hVar.f15453c;
        this.f15454d = hVar.f15454d;
        this.f15456f = hVar.f15456f;
        this.f15455e = cls;
    }
}
