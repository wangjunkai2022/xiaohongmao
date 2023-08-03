package com.fasterxml.jackson.databind.introspect;

import c2.b;
import c2.e;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.a0;
import com.fasterxml.jackson.annotation.b0;
import com.fasterxml.jackson.annotation.v;
import com.fasterxml.jackson.annotation.w;
import com.fasterxml.jackson.annotation.x;
import com.fasterxml.jackson.annotation.y;
import com.fasterxml.jackson.annotation.z;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.h;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class JacksonAnnotationIntrospector extends AnnotationIntrospector implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15220c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<? extends Annotation>[] f15221d = {JsonSerialize.class, b0.class, JsonFormat.class, JsonTypeInfo.class, com.fasterxml.jackson.annotation.u.class, z.class, com.fasterxml.jackson.annotation.g.class, com.fasterxml.jackson.annotation.q.class};

    /* renamed from: e  reason: collision with root package name */
    private static final Class<? extends Annotation>[] f15222e = {c2.c.class, b0.class, JsonFormat.class, JsonTypeInfo.class, z.class, com.fasterxml.jackson.annotation.g.class, com.fasterxml.jackson.annotation.q.class, com.fasterxml.jackson.annotation.r.class};

    /* renamed from: f  reason: collision with root package name */
    private static final com.fasterxml.jackson.databind.ext.c f15223f;

    /* renamed from: a  reason: collision with root package name */
    protected transient LRUMap<Class<?>, Boolean> f15224a = new LRUMap<>(48, 48);

    /* renamed from: b  reason: collision with root package name */
    protected boolean f15225b = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15226a;

        static {
            int[] iArr = new int[JsonSerialize.Inclusion.values().length];
            f15226a = iArr;
            try {
                iArr[JsonSerialize.Inclusion.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15226a[JsonSerialize.Inclusion.NON_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15226a[JsonSerialize.Inclusion.NON_DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15226a[JsonSerialize.Inclusion.NON_EMPTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15226a[JsonSerialize.Inclusion.DEFAULT_INCLUSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        com.fasterxml.jackson.databind.ext.c cVar;
        try {
            cVar = com.fasterxml.jackson.databind.ext.c.d();
        } catch (Throwable unused) {
            cVar = null;
        }
        f15223f = cVar;
    }

    private JsonMappingException l(String str) {
        return new JsonMappingException((Closeable) null, str);
    }

    private JsonMappingException m(Throwable th, String str) {
        return new JsonMappingException((Closeable) null, str, th);
    }

    private final Boolean o(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.t tVar = (com.fasterxml.jackson.annotation.t) a(aVar, com.fasterxml.jackson.annotation.t.class);
        if (tVar == null || !tVar.alphabetic()) {
            return null;
        }
        return Boolean.TRUE;
    }

    private boolean r(JavaType javaType, Class<?> cls) {
        if (javaType.isPrimitive()) {
            return javaType.hasRawClass(com.fasterxml.jackson.databind.util.g.n0(cls));
        }
        return cls.isPrimitive() && cls == com.fasterxml.jackson.databind.util.g.n0(javaType.getRawClass());
    }

    private boolean s(Class<?> cls, Class<?> cls2) {
        return cls.isPrimitive() ? cls == com.fasterxml.jackson.databind.util.g.n0(cls2) : cls2.isPrimitive() && cls2 == com.fasterxml.jackson.databind.util.g.n0(cls);
    }

    private JsonInclude.Value u(com.fasterxml.jackson.databind.introspect.a aVar, JsonInclude.Value value) {
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize != null) {
            int i4 = a.f15226a[jsonSerialize.include().ordinal()];
            if (i4 == 1) {
                return value.withValueInclusion(JsonInclude.Include.ALWAYS);
            }
            if (i4 == 2) {
                return value.withValueInclusion(JsonInclude.Include.NON_NULL);
            }
            if (i4 == 3) {
                return value.withValueInclusion(JsonInclude.Include.NON_DEFAULT);
            }
            if (i4 == 4) {
                return value.withValueInclusion(JsonInclude.Include.NON_EMPTY);
            }
        }
        return value;
    }

    protected Class<?> d(Class<?> cls) {
        if (cls == null || com.fasterxml.jackson.databind.util.g.T(cls)) {
            return null;
        }
        return cls;
    }

    protected Class<?> e(Class<?> cls, Class<?> cls2) {
        Class<?> d4 = d(cls);
        if (d4 == null || d4 == cls2) {
            return null;
        }
        return d4;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, c cVar, List<BeanPropertyWriter> list) {
        c2.b bVar = (c2.b) a(cVar, c2.b.class);
        if (bVar == null) {
            return;
        }
        boolean prepend = bVar.prepend();
        JavaType javaType = null;
        b.a[] attrs = bVar.attrs();
        int length = attrs.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (javaType == null) {
                javaType = mapperConfig.constructType(Object.class);
            }
            BeanPropertyWriter j4 = j(attrs[i4], mapperConfig, cVar, javaType);
            if (prepend) {
                list.add(i4, j4);
            } else {
                list.add(j4);
            }
        }
        b.InterfaceC0028b[] props = bVar.props();
        int length2 = props.length;
        for (int i10 = 0; i10 < length2; i10++) {
            BeanPropertyWriter k10 = k(props[i10], mapperConfig, cVar);
            if (prepend) {
                list.add(i10, k10);
            } else {
                list.add(k10);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.fasterxml.jackson.databind.introspect.VisibilityChecker, com.fasterxml.jackson.databind.introspect.VisibilityChecker<?>] */
    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public VisibilityChecker<?> findAutoDetectVisibility(c cVar, VisibilityChecker<?> visibilityChecker) {
        JsonAutoDetect jsonAutoDetect = (JsonAutoDetect) a(cVar, JsonAutoDetect.class);
        return jsonAutoDetect == null ? visibilityChecker : visibilityChecker.with(jsonAutoDetect);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findClassDescription(c cVar) {
        com.fasterxml.jackson.annotation.h hVar = (com.fasterxml.jackson.annotation.h) a(cVar, com.fasterxml.jackson.annotation.h.class);
        if (hVar == null) {
            return null;
        }
        return hVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.d> contentUsing;
        c2.c cVar = (c2.c) a(aVar, c2.c.class);
        if (cVar == null || (contentUsing = cVar.contentUsing()) == d.a.class) {
            return null;
        }
        return contentUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.g> contentUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null || (contentUsing = jsonSerialize.contentUsing()) == g.a.class) {
            return null;
        }
        return contentUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonCreator.Mode findCreatorAnnotation(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.databind.ext.c cVar;
        Boolean c10;
        JsonCreator jsonCreator = (JsonCreator) a(aVar, JsonCreator.class);
        if (jsonCreator != null) {
            return jsonCreator.mode();
        }
        if (this.f15225b && mapperConfig.isEnabled(MapperFeature.INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES) && (aVar instanceof AnnotatedConstructor) && (cVar = f15223f) != null && (c10 = cVar.c(aVar)) != null && c10.booleanValue()) {
            return JsonCreator.Mode.PROPERTIES;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonCreator.Mode findCreatorBinding(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonCreator jsonCreator = (JsonCreator) a(aVar, JsonCreator.class);
        if (jsonCreator == null) {
            return null;
        }
        return jsonCreator.mode();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Enum<?> findDefaultEnumValue(Class<Enum<?>> cls) {
        return com.fasterxml.jackson.databind.util.g.x(cls, com.fasterxml.jackson.annotation.i.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        c2.c cVar = (c2.c) a(annotatedMember, c2.c.class);
        if (cVar == null) {
            return null;
        }
        return e(cVar.contentConverter(), h.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationContentType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationConverter(com.fasterxml.jackson.databind.introspect.a aVar) {
        c2.c cVar = (c2.c) a(aVar, c2.c.class);
        if (cVar == null) {
            return null;
        }
        return e(cVar.converter(), h.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationKeyType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.d> using;
        c2.c cVar = (c2.c) a(aVar, c2.c.class);
        if (cVar == null || (using = cVar.using()) == d.a.class) {
            return null;
        }
        return using;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findEnumAliases(Class<?> cls, Enum<?>[] enumArr, String[][] strArr) {
        Field[] declaredFields;
        com.fasterxml.jackson.annotation.d dVar;
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() && (dVar = (com.fasterxml.jackson.annotation.d) field.getAnnotation(com.fasterxml.jackson.annotation.d.class)) != null) {
                String[] value = dVar.value();
                if (value.length != 0) {
                    String name = field.getName();
                    int length = enumArr.length;
                    for (int i4 = 0; i4 < length; i4++) {
                        if (name.equals(enumArr[i4].name())) {
                            strArr[i4] = value;
                        }
                    }
                }
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public String findEnumValue(Enum<?> r32) {
        JsonProperty jsonProperty;
        String value;
        try {
            Field field = r32.getDeclaringClass().getField(r32.name());
            if (field != null && (jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class)) != null && (value = jsonProperty.value()) != null) {
                if (!value.isEmpty()) {
                    return value;
                }
            }
        } catch (NoSuchFieldException | SecurityException unused) {
        }
        return r32.name();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findEnumValues(Class<?> cls, Enum<?>[] enumArr, String[] strArr) {
        Field[] declaredFields;
        JsonProperty jsonProperty;
        HashMap hashMap = null;
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() && (jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class)) != null) {
                String value = jsonProperty.value();
                if (!value.isEmpty()) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    hashMap.put(field.getName(), value);
                }
            }
        }
        if (hashMap != null) {
            int length = enumArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                String str = (String) hashMap.get(enumArr[i4].name());
                if (str != null) {
                    strArr[i4] = str;
                }
            }
        }
        return strArr;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findFilterId(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.j jVar = (com.fasterxml.jackson.annotation.j) a(aVar, com.fasterxml.jackson.annotation.j.class);
        if (jVar != null) {
            String value = jVar.value();
            if (value.isEmpty()) {
                return null;
            }
            return value;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonFormat.Value findFormat(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonFormat jsonFormat = (JsonFormat) a(aVar, JsonFormat.class);
        if (jsonFormat == null) {
            return null;
        }
        return JsonFormat.Value.from(jsonFormat);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        PropertyName n9 = n(annotatedMember);
        if (n9 == null) {
            return null;
        }
        return n9.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        String name;
        JacksonInject jacksonInject = (JacksonInject) a(annotatedMember, JacksonInject.class);
        if (jacksonInject == null) {
            return null;
        }
        JacksonInject.Value from = JacksonInject.Value.from(jacksonInject);
        if (from.hasId()) {
            return from;
        }
        if (!(annotatedMember instanceof AnnotatedMethod)) {
            name = annotatedMember.getRawType().getName();
        } else {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
            if (annotatedMethod.getParameterCount() == 0) {
                name = annotatedMember.getRawType().getName();
            } else {
                name = annotatedMethod.getRawParameterType(0).getName();
            }
        }
        return from.withId(name);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        JacksonInject.Value findInjectableValue = findInjectableValue(annotatedMember);
        if (findInjectableValue == null) {
            return null;
        }
        return findInjectableValue.getId();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeyDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.h> keyUsing;
        c2.c cVar = (c2.c) a(aVar, c2.c.class);
        if (cVar == null || (keyUsing = cVar.keyUsing()) == h.a.class) {
            return null;
        }
        return keyUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeySerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.g> keyUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null || (keyUsing = jsonSerialize.keyUsing()) == g.a.class) {
            return null;
        }
        return keyUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findMergeInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.r rVar = (com.fasterxml.jackson.annotation.r) a(aVar, com.fasterxml.jackson.annotation.r.class);
        if (rVar == null) {
            return null;
        }
        return rVar.value().asBoolean();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForDeserialization(com.fasterxml.jackson.databind.introspect.a aVar) {
        boolean z9;
        JsonSetter jsonSetter = (JsonSetter) a(aVar, JsonSetter.class);
        if (jsonSetter != null) {
            String value = jsonSetter.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z9 = true;
        } else {
            z9 = false;
        }
        JsonProperty jsonProperty = (JsonProperty) a(aVar, JsonProperty.class);
        String str = null;
        if (jsonProperty != null) {
            String namespace = jsonProperty.namespace();
            if (namespace == null || !namespace.isEmpty()) {
                str = namespace;
            }
            return PropertyName.construct(jsonProperty.value(), str);
        } else if (z9 || c(aVar, f15222e)) {
            return PropertyName.USE_DEFAULT;
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForSerialization(com.fasterxml.jackson.databind.introspect.a aVar) {
        boolean z9;
        com.fasterxml.jackson.annotation.k kVar = (com.fasterxml.jackson.annotation.k) a(aVar, com.fasterxml.jackson.annotation.k.class);
        if (kVar != null) {
            String value = kVar.value();
            if (!value.isEmpty()) {
                return PropertyName.construct(value);
            }
            z9 = true;
        } else {
            z9 = false;
        }
        JsonProperty jsonProperty = (JsonProperty) a(aVar, JsonProperty.class);
        String str = null;
        if (jsonProperty != null) {
            String namespace = jsonProperty.namespace();
            if (namespace == null || !namespace.isEmpty()) {
                str = namespace;
            }
            return PropertyName.construct(jsonProperty.value(), str);
        } else if (z9 || c(aVar, f15221d)) {
            return PropertyName.USE_DEFAULT;
        } else {
            return null;
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNamingStrategy(c cVar) {
        c2.d dVar = (c2.d) a(cVar, c2.d.class);
        if (dVar == null) {
            return null;
        }
        return dVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNullSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.g> nullsUsing;
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null || (nullsUsing = jsonSerialize.nullsUsing()) == g.a.class) {
            return null;
        }
        return nullsUsing;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public p findObjectIdInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.l lVar = (com.fasterxml.jackson.annotation.l) a(aVar, com.fasterxml.jackson.annotation.l.class);
        if (lVar == null || lVar.generator() == ObjectIdGenerators.None.class) {
            return null;
        }
        return new p(PropertyName.construct(lVar.property()), lVar.scope(), lVar.generator(), lVar.resolver());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public p findObjectReferenceInfo(com.fasterxml.jackson.databind.introspect.a aVar, p pVar) {
        com.fasterxml.jackson.annotation.m mVar = (com.fasterxml.jackson.annotation.m) a(aVar, com.fasterxml.jackson.annotation.m.class);
        if (mVar == null) {
            return pVar;
        }
        if (pVar == null) {
            pVar = p.a();
        }
        return pVar.g(mVar.alwaysAsId());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?> findPOJOBuilder(c cVar) {
        c2.c cVar2 = (c2.c) a(cVar, c2.c.class);
        if (cVar2 == null) {
            return null;
        }
        return d(cVar2.builder());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public e.a findPOJOBuilderConfig(c cVar) {
        c2.e eVar = (c2.e) a(cVar, c2.e.class);
        if (eVar == null) {
            return null;
        }
        return new e.a(eVar);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonProperty.Access findPropertyAccess(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonProperty jsonProperty = (JsonProperty) a(aVar, JsonProperty.class);
        if (jsonProperty != null) {
            return jsonProperty.access();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<PropertyName> findPropertyAliases(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.d dVar = (com.fasterxml.jackson.annotation.d) a(aVar, com.fasterxml.jackson.annotation.d.class);
        if (dVar == null) {
            return null;
        }
        String[] value = dVar.value();
        int length = value.length;
        if (length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(length);
        for (String str : value) {
            arrayList.add(PropertyName.construct(str));
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        if (javaType.getContentType() != null) {
            return p(mapperConfig, annotatedMember, javaType);
        }
        throw new IllegalArgumentException("Must call method with a container or reference type (got " + javaType + ")");
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDefaultValue(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonProperty jsonProperty = (JsonProperty) a(aVar, JsonProperty.class);
        if (jsonProperty == null) {
            return null;
        }
        String defaultValue = jsonProperty.defaultValue();
        if (defaultValue.isEmpty()) {
            return null;
        }
        return defaultValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDescription(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.s sVar = (com.fasterxml.jackson.annotation.s) a(aVar, com.fasterxml.jackson.annotation.s.class);
        if (sVar == null) {
            return null;
        }
        return sVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIgnoreProperties.Value findPropertyIgnoralByName(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) a(aVar, JsonIgnoreProperties.class);
        if (jsonIgnoreProperties == null) {
            return JsonIgnoreProperties.Value.empty();
        }
        return JsonIgnoreProperties.Value.from(jsonIgnoreProperties);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonIgnoreProperties.Value findPropertyIgnorals(com.fasterxml.jackson.databind.introspect.a aVar) {
        return findPropertyIgnoralByName(null, aVar);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonInclude.Value findPropertyInclusion(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonInclude jsonInclude = (JsonInclude) a(aVar, JsonInclude.class);
        JsonInclude.Value empty = jsonInclude == null ? JsonInclude.Value.empty() : JsonInclude.Value.from(jsonInclude);
        return empty.getValueInclusion() == JsonInclude.Include.USE_DEFAULTS ? u(aVar, empty) : empty;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIncludeProperties.Value findPropertyInclusionByName(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonIncludeProperties jsonIncludeProperties = (JsonIncludeProperties) a(aVar, JsonIncludeProperties.class);
        if (jsonIncludeProperties == null) {
            return JsonIncludeProperties.Value.all();
        }
        return JsonIncludeProperties.Value.from(jsonIncludeProperties);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Integer findPropertyIndex(com.fasterxml.jackson.databind.introspect.a aVar) {
        int index;
        JsonProperty jsonProperty = (JsonProperty) a(aVar, JsonProperty.class);
        if (jsonProperty == null || (index = jsonProperty.index()) == -1) {
            return null;
        }
        return Integer.valueOf(index);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        if (javaType.isContainerType() || javaType.isReferenceType()) {
            return null;
        }
        return p(mapperConfig, annotatedMember, javaType);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        com.fasterxml.jackson.annotation.q qVar = (com.fasterxml.jackson.annotation.q) a(annotatedMember, com.fasterxml.jackson.annotation.q.class);
        if (qVar != null) {
            return AnnotationIntrospector.ReferenceProperty.f(qVar.value());
        }
        com.fasterxml.jackson.annotation.g gVar = (com.fasterxml.jackson.annotation.g) a(annotatedMember, com.fasterxml.jackson.annotation.g.class);
        if (gVar != null) {
            return AnnotationIntrospector.ReferenceProperty.a(gVar.value());
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRenameByField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, PropertyName propertyName) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRootName(c cVar) {
        v vVar = (v) a(cVar, v.class);
        String str = null;
        if (vVar == null) {
            return null;
        }
        String namespace = vVar.namespace();
        if (namespace == null || !namespace.isEmpty()) {
            str = namespace;
        }
        return PropertyName.construct(vVar.value(), str);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        JsonSerialize jsonSerialize = (JsonSerialize) a(annotatedMember, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return e(jsonSerialize.contentConverter(), h.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationContentType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationConverter(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return e(jsonSerialize.converter(), h.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationKeyType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findSerializationPropertyOrder(c cVar) {
        com.fasterxml.jackson.annotation.t tVar = (com.fasterxml.jackson.annotation.t) a(cVar, com.fasterxml.jackson.annotation.t.class);
        if (tVar == null) {
            return null;
        }
        return tVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findSerializationSortAlphabetically(com.fasterxml.jackson.databind.introspect.a aVar) {
        return o(aVar);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationType(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSerialize.Typing findSerializationTyping(com.fasterxml.jackson.databind.introspect.a aVar) {
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null) {
            return null;
        }
        return jsonSerialize.typing();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        Class<? extends com.fasterxml.jackson.databind.g> using;
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        if (jsonSerialize == null || (using = jsonSerialize.using()) == g.a.class) {
            com.fasterxml.jackson.annotation.u uVar = (com.fasterxml.jackson.annotation.u) a(aVar, com.fasterxml.jackson.annotation.u.class);
            if (uVar == null || !uVar.value()) {
                return null;
            }
            return new RawSerializer(aVar.getRawType());
        }
        return using;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSetter.Value findSetterInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonSetter.Value.from((JsonSetter) a(aVar, JsonSetter.class));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<NamedType> findSubtypes(com.fasterxml.jackson.databind.introspect.a aVar) {
        w wVar = (w) a(aVar, w.class);
        if (wVar == null) {
            return null;
        }
        w.a[] value = wVar.value();
        ArrayList arrayList = new ArrayList(value.length);
        for (w.a aVar2 : value) {
            arrayList.add(new NamedType(aVar2.value(), aVar2.name()));
            for (String str : aVar2.names()) {
                arrayList.add(new NamedType(aVar2.value(), str));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findTypeName(c cVar) {
        y yVar = (y) a(cVar, y.class);
        if (yVar == null) {
            return null;
        }
        return yVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver(MapperConfig<?> mapperConfig, c cVar, JavaType javaType) {
        return p(mapperConfig, cVar, javaType);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        z zVar = (z) a(annotatedMember, z.class);
        if (zVar == null || !zVar.enabled()) {
            return null;
        }
        return NameTransformer.simpleTransformer(zVar.prefix(), zVar.suffix());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findValueInstantiator(c cVar) {
        c2.h hVar = (c2.h) a(cVar, c2.h.class);
        if (hVar == null) {
            return null;
        }
        return hVar.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?>[] findViews(com.fasterxml.jackson.databind.introspect.a aVar) {
        b0 b0Var = (b0) a(aVar, b0.class);
        if (b0Var == null) {
            return null;
        }
        return b0Var.value();
    }

    protected com.fasterxml.jackson.databind.jsontype.impl.h h() {
        return com.fasterxml.jackson.databind.jsontype.impl.h.noTypeInfoBuilder();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnyGetter(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.e eVar = (com.fasterxml.jackson.annotation.e) a(aVar, com.fasterxml.jackson.annotation.e.class);
        if (eVar == null) {
            return null;
        }
        return Boolean.valueOf(eVar.enabled());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return b(annotatedMethod, com.fasterxml.jackson.annotation.e.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnySetter(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.f fVar = (com.fasterxml.jackson.annotation.f) a(aVar, com.fasterxml.jackson.annotation.f.class);
        if (fVar == null) {
            return null;
        }
        return Boolean.valueOf(fVar.enabled());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return b(annotatedMethod, com.fasterxml.jackson.annotation.f.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsKey(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.annotation.p pVar = (com.fasterxml.jackson.annotation.p) a(aVar, com.fasterxml.jackson.annotation.p.class);
        if (pVar == null) {
            return null;
        }
        return Boolean.valueOf(pVar.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsValue(com.fasterxml.jackson.databind.introspect.a aVar) {
        a0 a0Var = (a0) a(aVar, a0.class);
        if (a0Var == null) {
            return null;
        }
        return Boolean.valueOf(a0Var.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        a0 a0Var = (a0) a(annotatedMethod, a0.class);
        return a0Var != null && a0Var.value();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasCreatorAnnotation(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.databind.ext.c cVar;
        Boolean c10;
        JsonCreator jsonCreator = (JsonCreator) a(aVar, JsonCreator.class);
        if (jsonCreator != null) {
            return jsonCreator.mode() != JsonCreator.Mode.DISABLED;
        } else if (!this.f15225b || !(aVar instanceof AnnotatedConstructor) || (cVar = f15223f) == null || (c10 = cVar.c(aVar)) == null) {
            return false;
        } else {
            return c10.booleanValue();
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return q(annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        JsonProperty jsonProperty = (JsonProperty) a(annotatedMember, JsonProperty.class);
        if (jsonProperty != null) {
            return Boolean.valueOf(jsonProperty.required());
        }
        return null;
    }

    protected com.fasterxml.jackson.databind.jsontype.impl.h i() {
        return new com.fasterxml.jackson.databind.jsontype.impl.h();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean isAnnotationBundle(Annotation annotation) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Boolean bool = this.f15224a.get(annotationType);
        if (bool == null) {
            bool = Boolean.valueOf(annotationType.getAnnotation(com.fasterxml.jackson.annotation.c.class) != null);
            this.f15224a.putIfAbsent(annotationType, bool);
        }
        return bool.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isIgnorableType(c cVar) {
        com.fasterxml.jackson.annotation.o oVar = (com.fasterxml.jackson.annotation.o) a(cVar, com.fasterxml.jackson.annotation.o.class);
        if (oVar == null) {
            return null;
        }
        return Boolean.valueOf(oVar.value());
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return Boolean.valueOf(b(annotatedMember, x.class));
    }

    protected BeanPropertyWriter j(b.a aVar, MapperConfig<?> mapperConfig, c cVar, JavaType javaType) {
        PropertyMetadata propertyMetadata = aVar.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        String value = aVar.value();
        PropertyName t9 = t(aVar.propName(), aVar.propNamespace());
        if (!t9.hasSimpleName()) {
            t9 = PropertyName.construct(value);
        }
        return AttributePropertyWriter.construct(value, com.fasterxml.jackson.databind.util.r.G(mapperConfig, new VirtualAnnotatedMember(cVar, cVar.getRawType(), value, javaType), t9, propertyMetadata, aVar.include()), cVar.n(), javaType);
    }

    protected BeanPropertyWriter k(b.InterfaceC0028b interfaceC0028b, MapperConfig<?> mapperConfig, c cVar) {
        PropertyMetadata propertyMetadata = interfaceC0028b.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        PropertyName t9 = t(interfaceC0028b.name(), interfaceC0028b.namespace());
        JavaType constructType = mapperConfig.constructType(interfaceC0028b.type());
        com.fasterxml.jackson.databind.util.r G = com.fasterxml.jackson.databind.util.r.G(mapperConfig, new VirtualAnnotatedMember(cVar, cVar.getRawType(), t9.getSimpleName(), constructType), t9, propertyMetadata, interfaceC0028b.include());
        Class<? extends VirtualBeanPropertyWriter> value = interfaceC0028b.value();
        com.fasterxml.jackson.databind.cfg.c handlerInstantiator = mapperConfig.getHandlerInstantiator();
        VirtualBeanPropertyWriter l10 = handlerInstantiator == null ? null : handlerInstantiator.l(mapperConfig, value);
        if (l10 == null) {
            l10 = (VirtualBeanPropertyWriter) com.fasterxml.jackson.databind.util.g.n(value, mapperConfig.canOverrideAccessModifiers());
        }
        return l10.withConfig(mapperConfig, cVar, G, constructType);
    }

    protected PropertyName n(com.fasterxml.jackson.databind.introspect.a aVar) {
        com.fasterxml.jackson.databind.ext.c cVar;
        PropertyName a10;
        if (aVar instanceof AnnotatedParameter) {
            AnnotatedParameter annotatedParameter = (AnnotatedParameter) aVar;
            if (annotatedParameter.getOwner() == null || (cVar = f15223f) == null || (a10 = cVar.a(annotatedParameter)) == null) {
                return null;
            }
            return a10;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.fasterxml.jackson.databind.jsontype.e] */
    protected com.fasterxml.jackson.databind.jsontype.e<?> p(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        com.fasterxml.jackson.databind.jsontype.e<?> i4;
        JsonTypeInfo jsonTypeInfo = (JsonTypeInfo) a(aVar, JsonTypeInfo.class);
        c2.g gVar = (c2.g) a(aVar, c2.g.class);
        if (gVar != null) {
            if (jsonTypeInfo == null) {
                return null;
            }
            i4 = mapperConfig.typeResolverBuilderInstance(aVar, gVar.value());
        } else if (jsonTypeInfo == null) {
            return null;
        } else {
            if (jsonTypeInfo.use() == JsonTypeInfo.Id.NONE) {
                return h();
            }
            i4 = i();
        }
        c2.f fVar = (c2.f) a(aVar, c2.f.class);
        com.fasterxml.jackson.databind.jsontype.c typeIdResolverInstance = fVar != null ? mapperConfig.typeIdResolverInstance(aVar, fVar.value()) : null;
        if (typeIdResolverInstance != null) {
            typeIdResolverInstance.c(javaType);
        }
        ?? init = i4.init(jsonTypeInfo.use(), typeIdResolverInstance);
        JsonTypeInfo.As include = jsonTypeInfo.include();
        if (include == JsonTypeInfo.As.EXTERNAL_PROPERTY && (aVar instanceof c)) {
            include = JsonTypeInfo.As.PROPERTY;
        }
        com.fasterxml.jackson.databind.jsontype.e typeProperty = init.inclusion(include).typeProperty(jsonTypeInfo.property());
        Class<?> defaultImpl = jsonTypeInfo.defaultImpl();
        if (defaultImpl != JsonTypeInfo.a.class && !defaultImpl.isAnnotation()) {
            typeProperty = typeProperty.defaultImpl(defaultImpl);
        }
        return typeProperty.typeIdVisibility(jsonTypeInfo.visible());
    }

    protected boolean q(com.fasterxml.jackson.databind.introspect.a aVar) {
        Boolean b10;
        com.fasterxml.jackson.annotation.n nVar = (com.fasterxml.jackson.annotation.n) a(aVar, com.fasterxml.jackson.annotation.n.class);
        if (nVar != null) {
            return nVar.value();
        }
        com.fasterxml.jackson.databind.ext.c cVar = f15223f;
        if (cVar == null || (b10 = cVar.b(aVar)) == null) {
            return false;
        }
        return b10.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineDeserializationType(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        c2.c cVar = (c2.c) a(aVar, c2.c.class);
        Class<?> d4 = cVar == null ? null : d(cVar.as());
        if (d4 != null && !javaType.hasRawClass(d4) && !r(javaType, d4)) {
            try {
                javaType = typeFactory.constructSpecializedType(javaType, d4);
            } catch (IllegalArgumentException e4) {
                throw m(e4, String.format("Failed to narrow type %s with annotation (value %s), from '%s': %s", javaType, d4.getName(), aVar.getName(), e4.getMessage()));
            }
        }
        if (javaType.isMapLikeType()) {
            JavaType keyType = javaType.getKeyType();
            Class<?> d10 = cVar == null ? null : d(cVar.keyAs());
            if (d10 != null && !r(keyType, d10)) {
                try {
                    javaType = ((MapLikeType) javaType).withKeyType(typeFactory.constructSpecializedType(keyType, d10));
                } catch (IllegalArgumentException e10) {
                    throw m(e10, String.format("Failed to narrow key type of %s with concrete-type annotation (value %s), from '%s': %s", javaType, d10.getName(), aVar.getName(), e10.getMessage()));
                }
            }
        }
        JavaType contentType = javaType.getContentType();
        if (contentType != null) {
            Class<?> d11 = cVar != null ? d(cVar.contentAs()) : null;
            if (d11 == null || r(contentType, d11)) {
                return javaType;
            }
            try {
                return javaType.withContentType(typeFactory.constructSpecializedType(contentType, d11));
            } catch (IllegalArgumentException e11) {
                throw m(e11, String.format("Failed to narrow value type of %s with concrete-type annotation (value %s), from '%s': %s", javaType, d11.getName(), aVar.getName(), e11.getMessage()));
            }
        }
        return javaType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineSerializationType(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        JavaType withStaticTyping;
        JavaType withStaticTyping2;
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        JsonSerialize jsonSerialize = (JsonSerialize) a(aVar, JsonSerialize.class);
        Class<?> d4 = jsonSerialize == null ? null : d(jsonSerialize.as());
        if (d4 != null) {
            if (javaType.hasRawClass(d4)) {
                javaType = javaType.withStaticTyping();
            } else {
                Class<?> rawClass = javaType.getRawClass();
                try {
                    if (d4.isAssignableFrom(rawClass)) {
                        javaType = typeFactory.constructGeneralizedType(javaType, d4);
                    } else if (rawClass.isAssignableFrom(d4)) {
                        javaType = typeFactory.constructSpecializedType(javaType, d4);
                    } else if (s(rawClass, d4)) {
                        javaType = javaType.withStaticTyping();
                    } else {
                        throw l(String.format("Cannot refine serialization type %s into %s; types not related", javaType, d4.getName()));
                    }
                } catch (IllegalArgumentException e4) {
                    throw m(e4, String.format("Failed to widen type %s with annotation (value %s), from '%s': %s", javaType, d4.getName(), aVar.getName(), e4.getMessage()));
                }
            }
        }
        if (javaType.isMapLikeType()) {
            JavaType keyType = javaType.getKeyType();
            Class<?> d10 = jsonSerialize == null ? null : d(jsonSerialize.keyAs());
            if (d10 != null) {
                if (keyType.hasRawClass(d10)) {
                    withStaticTyping2 = keyType.withStaticTyping();
                } else {
                    Class<?> rawClass2 = keyType.getRawClass();
                    try {
                        if (d10.isAssignableFrom(rawClass2)) {
                            withStaticTyping2 = typeFactory.constructGeneralizedType(keyType, d10);
                        } else if (rawClass2.isAssignableFrom(d10)) {
                            withStaticTyping2 = typeFactory.constructSpecializedType(keyType, d10);
                        } else if (s(rawClass2, d10)) {
                            withStaticTyping2 = keyType.withStaticTyping();
                        } else {
                            throw l(String.format("Cannot refine serialization key type %s into %s; types not related", keyType, d10.getName()));
                        }
                    } catch (IllegalArgumentException e10) {
                        throw m(e10, String.format("Failed to widen key type of %s with concrete-type annotation (value %s), from '%s': %s", javaType, d10.getName(), aVar.getName(), e10.getMessage()));
                    }
                }
                javaType = ((MapLikeType) javaType).withKeyType(withStaticTyping2);
            }
        }
        JavaType contentType = javaType.getContentType();
        if (contentType != null) {
            Class<?> d11 = jsonSerialize != null ? d(jsonSerialize.contentAs()) : null;
            if (d11 != null) {
                if (contentType.hasRawClass(d11)) {
                    withStaticTyping = contentType.withStaticTyping();
                } else {
                    Class<?> rawClass3 = contentType.getRawClass();
                    try {
                        if (d11.isAssignableFrom(rawClass3)) {
                            withStaticTyping = typeFactory.constructGeneralizedType(contentType, d11);
                        } else if (rawClass3.isAssignableFrom(d11)) {
                            withStaticTyping = typeFactory.constructSpecializedType(contentType, d11);
                        } else if (s(rawClass3, d11)) {
                            withStaticTyping = contentType.withStaticTyping();
                        } else {
                            throw l(String.format("Cannot refine serialization content type %s into %s; types not related", contentType, d11.getName()));
                        }
                    } catch (IllegalArgumentException e11) {
                        throw m(e11, String.format("Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from '%s': %s", javaType, d11.getName(), aVar.getName(), e11.getMessage()));
                    }
                }
                return javaType.withContentType(withStaticTyping);
            }
            return javaType;
        }
        return javaType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        Class<?> rawParameterType2 = annotatedMethod2.getRawParameterType(0);
        if (rawParameterType.isPrimitive()) {
            if (rawParameterType2.isPrimitive()) {
                return null;
            }
            return annotatedMethod;
        } else if (rawParameterType2.isPrimitive()) {
            return annotatedMethod2;
        } else {
            if (rawParameterType == String.class) {
                if (rawParameterType2 != String.class) {
                    return annotatedMethod;
                }
            } else if (rawParameterType2 == String.class) {
                return annotatedMethod2;
            }
            return null;
        }
    }

    public JacksonAnnotationIntrospector setConstructorPropertiesImpliesCreator(boolean z9) {
        this.f15225b = z9;
        return this;
    }

    protected PropertyName t(String str, String str2) {
        if (str.isEmpty()) {
            return PropertyName.USE_DEFAULT;
        }
        if (str2 != null && !str2.isEmpty()) {
            return PropertyName.construct(str, str2);
        }
        return PropertyName.construct(str);
    }

    protected Object v() {
        if (this.f15224a == null) {
            this.f15224a = new LRUMap<>(48, 48);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector, com.fasterxml.jackson.core.n
    public Version version() {
        return com.fasterxml.jackson.databind.cfg.e.f14557a;
    }
}
