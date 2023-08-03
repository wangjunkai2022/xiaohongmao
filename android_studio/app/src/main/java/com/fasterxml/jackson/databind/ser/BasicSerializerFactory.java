package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.impl.IndexedListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedStringListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IteratorSerializer;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.ByteBufferSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.CollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSetSerializer;
import com.fasterxml.jackson.databind.ser.std.InetAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.InetSocketAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.IterableSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers;
import com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer;
import com.fasterxml.jackson.databind.ser.std.SerializableSerializer;
import com.fasterxml.jackson.databind.ser.std.StdArraySerializers;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers;
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.TimeZoneSerializer;
import com.fasterxml.jackson.databind.ser.std.ToEmptyObjectSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.t;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class BasicSerializerFactory extends k implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    protected static final HashMap<String, com.fasterxml.jackson.databind.g<?>> f15592b;

    /* renamed from: c  reason: collision with root package name */
    protected static final HashMap<String, Class<? extends com.fasterxml.jackson.databind.g<?>>> f15593c;

    /* renamed from: a  reason: collision with root package name */
    protected final SerializerFactoryConfig f15594a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15595a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f15596b;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            f15596b = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15596b[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15596b[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15596b[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15596b[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15596b[JsonInclude.Include.USE_DEFAULTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[JsonFormat.Shape.values().length];
            f15595a = iArr2;
            try {
                iArr2[JsonFormat.Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15595a[JsonFormat.Shape.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15595a[JsonFormat.Shape.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    static {
        HashMap<String, Class<? extends com.fasterxml.jackson.databind.g<?>>> hashMap = new HashMap<>();
        HashMap<String, com.fasterxml.jackson.databind.g<?>> hashMap2 = new HashMap<>();
        hashMap2.put(String.class.getName(), new StringSerializer());
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        hashMap2.put(StringBuffer.class.getName(), toStringSerializer);
        hashMap2.put(StringBuilder.class.getName(), toStringSerializer);
        hashMap2.put(Character.class.getName(), toStringSerializer);
        hashMap2.put(Character.TYPE.getName(), toStringSerializer);
        NumberSerializers.a(hashMap2);
        hashMap2.put(Boolean.TYPE.getName(), new BooleanSerializer(true));
        hashMap2.put(Boolean.class.getName(), new BooleanSerializer(false));
        hashMap2.put(BigInteger.class.getName(), new NumberSerializer(BigInteger.class));
        hashMap2.put(BigDecimal.class.getName(), new NumberSerializer(BigDecimal.class));
        hashMap2.put(Calendar.class.getName(), CalendarSerializer.instance);
        hashMap2.put(Date.class.getName(), DateSerializer.instance);
        for (Map.Entry<Class<?>, Object> entry : StdJdkSerializers.a()) {
            Object value = entry.getValue();
            if (value instanceof com.fasterxml.jackson.databind.g) {
                hashMap2.put(entry.getKey().getName(), (com.fasterxml.jackson.databind.g) value);
            } else {
                hashMap.put(entry.getKey().getName(), (Class) value);
            }
        }
        hashMap.put(t.class.getName(), TokenBufferSerializer.class);
        f15592b = hashMap2;
        f15593c = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        this.f15594a = serializerFactoryConfig == null ? new SerializerFactoryConfig() : serializerFactoryConfig;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean A(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, com.fasterxml.jackson.databind.jsontype.f fVar) {
        if (fVar != null) {
            return false;
        }
        JsonSerialize.Typing findSerializationTyping = serializationConfig.getAnnotationIntrospector().findSerializationTyping(bVar.A());
        if (findSerializationTyping == null || findSerializationTyping == JsonSerialize.Typing.DEFAULT_TYPING) {
            return serializationConfig.isEnabled(MapperFeature.USE_STATIC_TYPING);
        }
        return findSerializationTyping == JsonSerialize.Typing.STATIC;
    }

    protected MapSerializer a(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar, MapSerializer mapSerializer) throws JsonMappingException {
        JavaType contentType = mapSerializer.getContentType();
        JsonInclude.Value c10 = c(lVar, bVar, contentType, Map.class);
        JsonInclude.Include contentInclusion = c10 == null ? JsonInclude.Include.USE_DEFAULTS : c10.getContentInclusion();
        boolean z9 = true;
        Object obj = null;
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            return !lVar.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? mapSerializer.withContentInclusion(null, true) : mapSerializer;
        }
        int i4 = a.f15596b[contentInclusion.ordinal()];
        if (i4 == 1) {
            obj = com.fasterxml.jackson.databind.util.d.b(contentType);
            if (obj != null && obj.getClass().isArray()) {
                obj = com.fasterxml.jackson.databind.util.b.b(obj);
            }
        } else if (i4 != 2) {
            if (i4 == 3) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
            } else if (i4 == 4 && (obj = lVar.includeFilterInstance(null, c10.getContentFilter())) != null) {
                z9 = lVar.includeFilterSuppressNulls(obj);
            }
        } else if (contentType.isReferenceType()) {
            obj = MapSerializer.MARKER_FOR_EMPTY;
        }
        return mapSerializer.withContentInclusion(obj, z9);
    }

    protected com.fasterxml.jackson.databind.g<Object> b(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findContentSerializer = lVar.getAnnotationIntrospector().findContentSerializer(aVar);
        if (findContentSerializer != null) {
            return lVar.serializerInstance(aVar, findContentSerializer);
        }
        return null;
    }

    public ContainerSerializer<?> buildCollectionSerializer(JavaType javaType, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
        return new CollectionSerializer(javaType, z9, fVar, gVar);
    }

    public com.fasterxml.jackson.databind.g<?> buildEnumSetSerializer(JavaType javaType) {
        return new EnumSetSerializer(javaType);
    }

    public ContainerSerializer<?> buildIndexedListSerializer(JavaType javaType, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) {
        return new IndexedListSerializer(javaType, z9, fVar, gVar);
    }

    protected JsonInclude.Value c(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.b bVar, JavaType javaType, Class<?> cls) throws JsonMappingException {
        SerializationConfig config = lVar.getConfig();
        JsonInclude.Value defaultPropertyInclusion = config.getDefaultPropertyInclusion(cls, bVar.v(config.getDefaultPropertyInclusion()));
        JsonInclude.Value defaultPropertyInclusion2 = config.getDefaultPropertyInclusion(javaType.getRawClass(), null);
        if (defaultPropertyInclusion2 != null) {
            int i4 = a.f15596b[defaultPropertyInclusion2.getValueInclusion().ordinal()];
            if (i4 != 4) {
                return i4 != 6 ? defaultPropertyInclusion.withContentInclusion(defaultPropertyInclusion2.getValueInclusion()) : defaultPropertyInclusion;
            }
            return defaultPropertyInclusion.withContentFilter(defaultPropertyInclusion2.getContentFilter());
        }
        return defaultPropertyInclusion;
    }

    @Override // com.fasterxml.jackson.databind.ser.k
    public com.fasterxml.jackson.databind.g<Object> createKeySerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.g<?> gVar2;
        SerializationConfig config = lVar.getConfig();
        com.fasterxml.jackson.databind.b introspect = config.introspect(javaType);
        if (this.f15594a.hasKeySerializers()) {
            Iterator<l> it = this.f15594a.keySerializers().iterator();
            gVar2 = null;
            while (it.hasNext() && (gVar2 = it.next().findSerializer(config, javaType, introspect)) == null) {
            }
        } else {
            gVar2 = null;
        }
        if (gVar2 == null) {
            com.fasterxml.jackson.databind.g<?> d4 = d(lVar, introspect.A());
            if (d4 == null) {
                if (gVar == null) {
                    d4 = StdKeySerializers.c(config, javaType.getRawClass(), false);
                    if (d4 == null) {
                        AnnotatedMember o9 = introspect.o();
                        if (o9 == null) {
                            o9 = introspect.p();
                        }
                        if (o9 != null) {
                            com.fasterxml.jackson.databind.g<Object> createKeySerializer = createKeySerializer(lVar, o9.getType(), gVar);
                            if (config.canOverrideAccessModifiers()) {
                                com.fasterxml.jackson.databind.util.g.i(o9.getMember(), config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                            }
                            gVar = new JsonValueSerializer(o9, null, createKeySerializer);
                        } else {
                            gVar = StdKeySerializers.b(config, javaType.getRawClass());
                        }
                    }
                }
            }
            gVar = d4;
        } else {
            gVar = gVar2;
        }
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar = dVar.f(config, javaType, introspect, gVar);
            }
        }
        return gVar;
    }

    @Override // com.fasterxml.jackson.databind.ser.k
    public abstract com.fasterxml.jackson.databind.g<Object> createSerializer(com.fasterxml.jackson.databind.l lVar, JavaType javaType) throws JsonMappingException;

    @Override // com.fasterxml.jackson.databind.ser.k
    public com.fasterxml.jackson.databind.jsontype.f createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) {
        Collection<NamedType> collectAndResolveSubtypesByClass;
        com.fasterxml.jackson.databind.introspect.c A = serializationConfig.introspectClassAnnotations(javaType.getRawClass()).A();
        com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver = serializationConfig.getAnnotationIntrospector().findTypeResolver(serializationConfig, A, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = serializationConfig.getDefaultTyper(javaType);
            collectAndResolveSubtypesByClass = null;
        } else {
            collectAndResolveSubtypesByClass = serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, A);
        }
        if (findTypeResolver == null) {
            return null;
        }
        return findTypeResolver.buildTypeSerializer(serializationConfig, javaType, collectAndResolveSubtypesByClass);
    }

    protected com.fasterxml.jackson.databind.g<Object> d(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findKeySerializer = lVar.getAnnotationIntrospector().findKeySerializer(aVar);
        if (findKeySerializer != null) {
            return lVar.serializerInstance(aVar, findKeySerializer);
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.g<?> e(com.fasterxml.jackson.databind.l lVar, ArrayType arrayType, com.fasterxml.jackson.databind.b bVar, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException {
        SerializationConfig config = lVar.getConfig();
        Iterator<l> it = p().iterator();
        com.fasterxml.jackson.databind.g<?> gVar2 = null;
        while (it.hasNext() && (gVar2 = it.next().findArraySerializer(config, arrayType, bVar, fVar, gVar)) == null) {
        }
        if (gVar2 == null) {
            Class<?> rawClass = arrayType.getRawClass();
            if (gVar == null || com.fasterxml.jackson.databind.util.g.a0(gVar)) {
                if (String[].class == rawClass) {
                    gVar2 = StringArraySerializer.instance;
                } else {
                    gVar2 = StdArraySerializers.a(rawClass);
                }
            }
            if (gVar2 == null) {
                gVar2 = new ObjectArraySerializer(arrayType.getContentType(), z9, fVar, gVar);
            }
        }
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar2 = dVar.b(config, arrayType, bVar, gVar2);
            }
        }
        return gVar2;
    }

    public com.fasterxml.jackson.databind.g<?> findReferenceSerializer(com.fasterxml.jackson.databind.l lVar, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        JavaType contentType = referenceType.getContentType();
        com.fasterxml.jackson.databind.jsontype.f fVar = (com.fasterxml.jackson.databind.jsontype.f) contentType.getTypeHandler();
        SerializationConfig config = lVar.getConfig();
        if (fVar == null) {
            fVar = createTypeSerializer(config, contentType);
        }
        com.fasterxml.jackson.databind.jsontype.f fVar2 = fVar;
        com.fasterxml.jackson.databind.g<Object> gVar = (com.fasterxml.jackson.databind.g) contentType.getValueHandler();
        for (l lVar2 : p()) {
            com.fasterxml.jackson.databind.g<?> findReferenceSerializer = lVar2.findReferenceSerializer(config, referenceType, bVar, fVar2, gVar);
            if (findReferenceSerializer != null) {
                return findReferenceSerializer;
            }
        }
        if (referenceType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return h(lVar, referenceType, bVar, z9, fVar2, gVar);
        }
        return null;
    }

    public SerializerFactoryConfig getFactoryConfig() {
        return this.f15594a;
    }

    protected com.fasterxml.jackson.databind.g<?> h(com.fasterxml.jackson.databind.l lVar, ReferenceType referenceType, com.fasterxml.jackson.databind.b bVar, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException {
        JavaType referencedType = referenceType.getReferencedType();
        JsonInclude.Value c10 = c(lVar, bVar, referencedType, AtomicReference.class);
        JsonInclude.Include contentInclusion = c10 == null ? JsonInclude.Include.USE_DEFAULTS : c10.getContentInclusion();
        boolean z10 = true;
        Object obj = null;
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            z10 = false;
        } else {
            int i4 = a.f15596b[contentInclusion.ordinal()];
            if (i4 == 1) {
                obj = com.fasterxml.jackson.databind.util.d.b(referencedType);
                if (obj != null && obj.getClass().isArray()) {
                    obj = com.fasterxml.jackson.databind.util.b.b(obj);
                }
            } else if (i4 != 2) {
                if (i4 == 3) {
                    obj = MapSerializer.MARKER_FOR_EMPTY;
                } else if (i4 == 4 && (obj = lVar.includeFilterInstance(null, c10.getContentFilter())) != null) {
                    z10 = lVar.includeFilterSuppressNulls(obj);
                }
            } else if (referencedType.isReferenceType()) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
            }
        }
        return new AtomicReferenceSerializer(referenceType, z9, fVar, gVar).withContentInclusion(obj, z10);
    }

    protected com.fasterxml.jackson.databind.g<?> i(com.fasterxml.jackson.databind.l lVar, CollectionType collectionType, com.fasterxml.jackson.databind.b bVar, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar) throws JsonMappingException {
        SerializationConfig config = lVar.getConfig();
        Iterator<l> it = p().iterator();
        com.fasterxml.jackson.databind.g<?> gVar2 = null;
        while (it.hasNext() && (gVar2 = it.next().findCollectionSerializer(config, collectionType, bVar, fVar, gVar)) == null) {
        }
        if (gVar2 == null && (gVar2 = v(lVar, collectionType, bVar)) == null) {
            if (bVar.l(null).getShape() == JsonFormat.Shape.OBJECT) {
                return null;
            }
            Class<?> rawClass = collectionType.getRawClass();
            if (EnumSet.class.isAssignableFrom(rawClass)) {
                JavaType contentType = collectionType.getContentType();
                gVar2 = buildEnumSetSerializer(contentType.isEnumImplType() ? contentType : null);
            } else {
                Class<?> rawClass2 = collectionType.getContentType().getRawClass();
                if (z(rawClass)) {
                    if (rawClass2 == String.class) {
                        if (com.fasterxml.jackson.databind.util.g.a0(gVar)) {
                            gVar2 = IndexedStringListSerializer.instance;
                        }
                    } else {
                        gVar2 = buildIndexedListSerializer(collectionType.getContentType(), z9, fVar, gVar);
                    }
                } else if (rawClass2 == String.class && com.fasterxml.jackson.databind.util.g.a0(gVar)) {
                    gVar2 = StringCollectionSerializer.instance;
                }
                if (gVar2 == null) {
                    gVar2 = buildCollectionSerializer(collectionType.getContentType(), z9, fVar, gVar);
                }
            }
        }
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar2 = dVar.d(config, collectionType, bVar, gVar2);
            }
        }
        return gVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.g<?> j(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        com.fasterxml.jackson.databind.b bVar2;
        com.fasterxml.jackson.databind.b bVar3 = bVar;
        SerializationConfig config = lVar.getConfig();
        boolean z10 = (z9 || !javaType.useStaticType() || (javaType.isContainerType() && javaType.getContentType().isJavaLangObject())) ? z9 : true;
        com.fasterxml.jackson.databind.jsontype.f createTypeSerializer = createTypeSerializer(config, javaType.getContentType());
        boolean z11 = createTypeSerializer != null ? false : z10;
        com.fasterxml.jackson.databind.g<Object> b10 = b(lVar, bVar.A());
        com.fasterxml.jackson.databind.g<?> gVar = null;
        if (javaType.isMapLikeType()) {
            MapLikeType mapLikeType = (MapLikeType) javaType;
            com.fasterxml.jackson.databind.g<Object> d4 = d(lVar, bVar.A());
            if (mapLikeType instanceof MapType) {
                return o(lVar, (MapType) mapLikeType, bVar, z11, d4, createTypeSerializer, b10);
            }
            Iterator<l> it = p().iterator();
            while (it.hasNext() && (gVar = it.next().findMapLikeSerializer(config, mapLikeType, bVar, d4, createTypeSerializer, b10)) == null) {
            }
            if (gVar == null) {
                gVar = v(lVar, javaType, bVar);
            }
            if (gVar != null && this.f15594a.hasSerializerModifiers()) {
                for (d dVar : this.f15594a.serializerModifiers()) {
                    gVar = dVar.g(config, mapLikeType, bVar3, gVar);
                }
            }
            return gVar;
        } else if (javaType.isCollectionLikeType()) {
            CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
            if (collectionLikeType instanceof CollectionType) {
                return i(lVar, (CollectionType) collectionLikeType, bVar, z11, createTypeSerializer, b10);
            }
            Iterator<l> it2 = p().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    bVar2 = bVar3;
                    break;
                }
                bVar2 = bVar3;
                gVar = it2.next().findCollectionLikeSerializer(config, collectionLikeType, bVar, createTypeSerializer, b10);
                if (gVar != null) {
                    break;
                }
                bVar3 = bVar2;
            }
            if (gVar == null) {
                gVar = v(lVar, javaType, bVar);
            }
            if (gVar != null && this.f15594a.hasSerializerModifiers()) {
                for (d dVar2 : this.f15594a.serializerModifiers()) {
                    gVar = dVar2.c(config, collectionLikeType, bVar2, gVar);
                }
            }
            return gVar;
        } else if (javaType.isArrayType()) {
            return e(lVar, (ArrayType) javaType, bVar, z11, createTypeSerializer, b10);
        } else {
            return null;
        }
    }

    protected com.fasterxml.jackson.databind.g<?> k(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        JsonFormat.Value l10 = bVar.l(null);
        if (l10.getShape() == JsonFormat.Shape.OBJECT) {
            ((com.fasterxml.jackson.databind.introspect.j) bVar).Y("declaringClass");
            return null;
        }
        com.fasterxml.jackson.databind.g<?> construct = EnumSerializer.construct(javaType.getRawClass(), serializationConfig, bVar, l10);
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                construct = dVar.e(serializationConfig, javaType, bVar, construct);
            }
        }
        return construct;
    }

    protected com.fasterxml.jackson.databind.g<?> l(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9, JavaType javaType2) throws JsonMappingException {
        return new IterableSerializer(javaType2, z9, createTypeSerializer(serializationConfig, javaType2));
    }

    protected com.fasterxml.jackson.databind.g<?> m(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9, JavaType javaType2) throws JsonMappingException {
        return new IteratorSerializer(javaType2, z9, createTypeSerializer(serializationConfig, javaType2));
    }

    protected com.fasterxml.jackson.databind.g<?> n(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9, JavaType javaType2, JavaType javaType3) throws JsonMappingException {
        Object obj = null;
        if (JsonFormat.Value.merge(bVar.l(null), lVar.getDefaultPropertyFormat(Map.Entry.class)).getShape() == JsonFormat.Shape.OBJECT) {
            return null;
        }
        MapEntrySerializer mapEntrySerializer = new MapEntrySerializer(javaType3, javaType2, javaType3, z9, createTypeSerializer(lVar.getConfig(), javaType3), null);
        JavaType contentType = mapEntrySerializer.getContentType();
        JsonInclude.Value c10 = c(lVar, bVar, contentType, Map.Entry.class);
        JsonInclude.Include contentInclusion = c10 == null ? JsonInclude.Include.USE_DEFAULTS : c10.getContentInclusion();
        if (contentInclusion == JsonInclude.Include.USE_DEFAULTS || contentInclusion == JsonInclude.Include.ALWAYS) {
            return mapEntrySerializer;
        }
        int i4 = a.f15596b[contentInclusion.ordinal()];
        boolean z10 = true;
        if (i4 == 1) {
            obj = com.fasterxml.jackson.databind.util.d.b(contentType);
            if (obj != null && obj.getClass().isArray()) {
                obj = com.fasterxml.jackson.databind.util.b.b(obj);
            }
        } else if (i4 != 2) {
            if (i4 == 3) {
                obj = MapSerializer.MARKER_FOR_EMPTY;
            } else if (i4 == 4 && (obj = lVar.includeFilterInstance(null, c10.getContentFilter())) != null) {
                z10 = lVar.includeFilterSuppressNulls(obj);
            }
        } else if (contentType.isReferenceType()) {
            obj = MapSerializer.MARKER_FOR_EMPTY;
        }
        return mapEntrySerializer.withContentInclusion(obj, z10);
    }

    protected com.fasterxml.jackson.databind.g<?> o(com.fasterxml.jackson.databind.l lVar, MapType mapType, com.fasterxml.jackson.databind.b bVar, boolean z9, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.g<Object> gVar2) throws JsonMappingException {
        if (bVar.l(null).getShape() == JsonFormat.Shape.OBJECT) {
            return null;
        }
        SerializationConfig config = lVar.getConfig();
        Iterator<l> it = p().iterator();
        com.fasterxml.jackson.databind.g<?> gVar3 = null;
        while (it.hasNext() && (gVar3 = it.next().findMapSerializer(config, mapType, bVar, gVar, fVar, gVar2)) == null) {
        }
        if (gVar3 == null && (gVar3 = v(lVar, mapType, bVar)) == null) {
            Object s9 = s(config, bVar);
            JsonIgnoreProperties.Value defaultPropertyIgnorals = config.getDefaultPropertyIgnorals(Map.class, bVar.A());
            Set<String> findIgnoredForSerialization = defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForSerialization();
            JsonIncludeProperties.Value defaultPropertyInclusions = config.getDefaultPropertyInclusions(Map.class, bVar.A());
            gVar3 = a(lVar, bVar, MapSerializer.construct(findIgnoredForSerialization, defaultPropertyInclusions != null ? defaultPropertyInclusions.getIncluded() : null, mapType, z9, fVar, gVar, gVar2, s9));
        }
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar3 = dVar.h(config, mapType, bVar, gVar3);
            }
        }
        return gVar3;
    }

    protected abstract Iterable<l> p();

    protected com.fasterxml.jackson.databind.util.h<Object, Object> q(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findSerializationConverter = lVar.getAnnotationIntrospector().findSerializationConverter(aVar);
        if (findSerializationConverter == null) {
            return null;
        }
        return lVar.converterInstance(aVar, findSerializationConverter);
    }

    protected com.fasterxml.jackson.databind.g<?> r(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.a aVar, com.fasterxml.jackson.databind.g<?> gVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.util.h<Object, Object> q9 = q(lVar, aVar);
        return q9 == null ? gVar : new StdDelegatingSerializer(q9, q9.b(lVar.getTypeFactory()), gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object s(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar) {
        return serializationConfig.getAnnotationIntrospector().findFilterId(bVar.A());
    }

    protected com.fasterxml.jackson.databind.g<?> t(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findSerializer(lVar.getConfig(), javaType, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.g<?> u(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (Iterator.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterator.class);
            return m(serializationConfig, javaType, bVar, z9, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]);
        } else if (Iterable.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters2 = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterable.class);
            return l(serializationConfig, javaType, bVar, z9, (findTypeParameters2 == null || findTypeParameters2.length != 1) ? TypeFactory.unknownType() : findTypeParameters2[0]);
        } else if (CharSequence.class.isAssignableFrom(rawClass)) {
            return ToStringSerializer.instance;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.g<?> v(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        if (com.fasterxml.jackson.databind.f.class.isAssignableFrom(javaType.getRawClass())) {
            return SerializableSerializer.instance;
        }
        AnnotatedMember p9 = bVar.p();
        if (p9 != null) {
            if (lVar.canOverrideAccessModifiers()) {
                com.fasterxml.jackson.databind.util.g.i(p9.getMember(), lVar.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            JavaType type = p9.getType();
            com.fasterxml.jackson.databind.g<Object> y9 = y(lVar, p9);
            if (y9 == null) {
                y9 = (com.fasterxml.jackson.databind.g) type.getValueHandler();
            }
            com.fasterxml.jackson.databind.jsontype.f fVar = (com.fasterxml.jackson.databind.jsontype.f) type.getTypeHandler();
            if (fVar == null) {
                fVar = createTypeSerializer(lVar.getConfig(), type);
            }
            return new JsonValueSerializer(p9, fVar, y9);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.g<?> w(JavaType javaType, SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar, boolean z9) {
        Class<? extends com.fasterxml.jackson.databind.g<?>> cls;
        String name = javaType.getRawClass().getName();
        com.fasterxml.jackson.databind.g<?> gVar = f15592b.get(name);
        return (gVar != null || (cls = f15593c.get(name)) == null) ? gVar : (com.fasterxml.jackson.databind.g) com.fasterxml.jackson.databind.util.g.n(cls, false);
    }

    @Override // com.fasterxml.jackson.databind.ser.k
    public final k withAdditionalKeySerializers(l lVar) {
        return withConfig(this.f15594a.withAdditionalKeySerializers(lVar));
    }

    @Override // com.fasterxml.jackson.databind.ser.k
    public final k withAdditionalSerializers(l lVar) {
        return withConfig(this.f15594a.withAdditionalSerializers(lVar));
    }

    public abstract k withConfig(SerializerFactoryConfig serializerFactoryConfig);

    @Override // com.fasterxml.jackson.databind.ser.k
    public final k withSerializerModifier(d dVar) {
        return withConfig(this.f15594a.withSerializerModifier(dVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.fasterxml.jackson.databind.g<?> x(com.fasterxml.jackson.databind.l lVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar, boolean z9) throws JsonMappingException {
        if (javaType.isEnumType()) {
            return k(lVar.getConfig(), javaType, bVar);
        }
        Class<?> rawClass = javaType.getRawClass();
        com.fasterxml.jackson.databind.g<?> t9 = t(lVar, javaType, bVar, z9);
        if (t9 != null) {
            return t9;
        }
        if (Calendar.class.isAssignableFrom(rawClass)) {
            return CalendarSerializer.instance;
        }
        if (Date.class.isAssignableFrom(rawClass)) {
            return DateSerializer.instance;
        }
        if (Map.Entry.class.isAssignableFrom(rawClass)) {
            JavaType findSuperType = javaType.findSuperType(Map.Entry.class);
            return n(lVar, javaType, bVar, z9, findSuperType.containedTypeOrUnknown(0), findSuperType.containedTypeOrUnknown(1));
        } else if (ByteBuffer.class.isAssignableFrom(rawClass)) {
            return new ByteBufferSerializer();
        } else {
            if (InetAddress.class.isAssignableFrom(rawClass)) {
                return new InetAddressSerializer();
            }
            if (InetSocketAddress.class.isAssignableFrom(rawClass)) {
                return new InetSocketAddressSerializer();
            }
            if (TimeZone.class.isAssignableFrom(rawClass)) {
                return new TimeZoneSerializer();
            }
            if (Charset.class.isAssignableFrom(rawClass)) {
                return ToStringSerializer.instance;
            }
            if (Number.class.isAssignableFrom(rawClass)) {
                int i4 = a.f15595a[bVar.l(null).getShape().ordinal()];
                if (i4 != 1) {
                    if (i4 == 2 || i4 == 3) {
                        return null;
                    }
                    return NumberSerializer.instance;
                }
                return ToStringSerializer.instance;
            } else if (ClassLoader.class.isAssignableFrom(rawClass)) {
                return new ToEmptyObjectSerializer(javaType);
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.fasterxml.jackson.databind.g<Object> y(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findSerializer = lVar.getAnnotationIntrospector().findSerializer(aVar);
        if (findSerializer == null) {
            return null;
        }
        return r(lVar, aVar, lVar.serializerInstance(aVar, findSerializer));
    }

    protected boolean z(Class<?> cls) {
        return RandomAccess.class.isAssignableFrom(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.ser.k
    @Deprecated
    public com.fasterxml.jackson.databind.g<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) {
        com.fasterxml.jackson.databind.b introspect = serializationConfig.introspect(javaType);
        com.fasterxml.jackson.databind.g<?> gVar2 = null;
        if (this.f15594a.hasKeySerializers()) {
            Iterator<l> it = this.f15594a.keySerializers().iterator();
            while (it.hasNext() && (gVar2 = it.next().findSerializer(serializationConfig, javaType, introspect)) == null) {
            }
        }
        if (gVar2 != null) {
            gVar = gVar2;
        } else if (gVar == null && (gVar = StdKeySerializers.c(serializationConfig, javaType.getRawClass(), false)) == null) {
            gVar = StdKeySerializers.b(serializationConfig, javaType.getRawClass());
        }
        if (this.f15594a.hasSerializerModifiers()) {
            for (d dVar : this.f15594a.serializerModifiers()) {
                gVar = dVar.f(serializationConfig, javaType, introspect, gVar);
            }
        }
        return gVar;
    }
}
