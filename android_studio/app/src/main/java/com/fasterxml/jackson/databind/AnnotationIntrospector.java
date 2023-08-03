package com.fasterxml.jackson.databind;

import c2.e;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AnnotationIntrospector implements n, Serializable {

    /* loaded from: classes.dex */
    public static class ReferenceProperty {

        /* renamed from: a  reason: collision with root package name */
        private final Type f14310a;

        /* renamed from: b  reason: collision with root package name */
        private final String f14311b;

        /* loaded from: classes.dex */
        public enum Type {
            MANAGED_REFERENCE,
            BACK_REFERENCE
        }

        public ReferenceProperty(Type type, String str) {
            this.f14310a = type;
            this.f14311b = str;
        }

        public static ReferenceProperty a(String str) {
            return new ReferenceProperty(Type.BACK_REFERENCE, str);
        }

        public static ReferenceProperty f(String str) {
            return new ReferenceProperty(Type.MANAGED_REFERENCE, str);
        }

        public String b() {
            return this.f14311b;
        }

        public Type c() {
            return this.f14310a;
        }

        public boolean d() {
            return this.f14310a == Type.BACK_REFERENCE;
        }

        public boolean e() {
            return this.f14310a == Type.MANAGED_REFERENCE;
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        String a(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar);

        Boolean b(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar);

        Boolean c(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar);

        Boolean d(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar);
    }

    public static AnnotationIntrospector nopInstance() {
        return NopAnnotationIntrospector.instance;
    }

    public static AnnotationIntrospector pair(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        return new AnnotationIntrospectorPair(annotationIntrospector, annotationIntrospector2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <A extends Annotation> A a(com.fasterxml.jackson.databind.introspect.a aVar, Class<A> cls) {
        return (A) aVar.getAnnotation(cls);
    }

    public Collection<AnnotationIntrospector> allIntrospectors() {
        return Collections.singletonList(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(com.fasterxml.jackson.databind.introspect.a aVar, Class<? extends Annotation> cls) {
        return aVar.hasAnnotation(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(com.fasterxml.jackson.databind.introspect.a aVar, Class<? extends Annotation>[] clsArr) {
        return aVar.hasOneOf(clsArr);
    }

    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, List<BeanPropertyWriter> list) {
    }

    public VisibilityChecker<?> findAutoDetectVisibility(com.fasterxml.jackson.databind.introspect.c cVar, VisibilityChecker<?> visibilityChecker) {
        return visibilityChecker;
    }

    public String findClassDescription(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Object findContentDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Object findContentSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public JsonCreator.Mode findCreatorAnnotation(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        if (hasCreatorAnnotation(aVar)) {
            JsonCreator.Mode findCreatorBinding = findCreatorBinding(aVar);
            return findCreatorBinding == null ? JsonCreator.Mode.DEFAULT : findCreatorBinding;
        }
        return null;
    }

    @Deprecated
    public JsonCreator.Mode findCreatorBinding(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Enum<?> findDefaultEnumValue(Class<Enum<?>> cls) {
        return null;
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        return null;
    }

    @Deprecated
    public Class<?> findDeserializationContentType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    public Object findDeserializationConverter(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    @Deprecated
    public Class<?> findDeserializationKeyType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    @Deprecated
    public Class<?> findDeserializationType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    public Object findDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public void findEnumAliases(Class<?> cls, Enum<?>[] enumArr, String[][] strArr) {
    }

    @Deprecated
    public String findEnumValue(Enum<?> r12) {
        return r12.name();
    }

    public String[] findEnumValues(Class<?> cls, Enum<?>[] enumArr, String[] strArr) {
        return strArr;
    }

    public Object findFilterId(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public JsonFormat.Value findFormat(com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonFormat.Value.empty();
    }

    @Deprecated
    public Boolean findIgnoreUnknownProperties(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        return null;
    }

    public JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        Object findInjectableValueId = findInjectableValueId(annotatedMember);
        if (findInjectableValueId != null) {
            return JacksonInject.Value.forId(findInjectableValueId);
        }
        return null;
    }

    @Deprecated
    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findKeyDeserializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Object findKeySerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Boolean findMergeInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public PropertyName findNameForDeserialization(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public PropertyName findNameForSerialization(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Object findNamingStrategy(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Object findNullSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public p findObjectIdInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public p findObjectReferenceInfo(com.fasterxml.jackson.databind.introspect.a aVar, p pVar) {
        return pVar;
    }

    public Class<?> findPOJOBuilder(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public e.a findPOJOBuilderConfig(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    @Deprecated
    public String[] findPropertiesToIgnore(com.fasterxml.jackson.databind.introspect.a aVar, boolean z9) {
        return null;
    }

    public JsonProperty.Access findPropertyAccess(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public List<PropertyName> findPropertyAliases(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        return null;
    }

    public String findPropertyDefaultValue(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public String findPropertyDescription(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public JsonIgnoreProperties.Value findPropertyIgnoralByName(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        return findPropertyIgnorals(aVar);
    }

    @Deprecated
    public JsonIgnoreProperties.Value findPropertyIgnorals(com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonIgnoreProperties.Value.empty();
    }

    public JsonInclude.Value findPropertyInclusion(com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonInclude.Value.empty();
    }

    public JsonIncludeProperties.Value findPropertyInclusionByName(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonIncludeProperties.Value.all();
    }

    public Integer findPropertyIndex(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        return null;
    }

    public ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        return null;
    }

    public PropertyName findRenameByField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, PropertyName propertyName) {
        return null;
    }

    public PropertyName findRootName(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        return null;
    }

    @Deprecated
    public Class<?> findSerializationContentType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    public Object findSerializationConverter(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    @Deprecated
    public JsonInclude.Include findSerializationInclusion(com.fasterxml.jackson.databind.introspect.a aVar, JsonInclude.Include include) {
        return include;
    }

    @Deprecated
    public JsonInclude.Include findSerializationInclusionForContent(com.fasterxml.jackson.databind.introspect.a aVar, JsonInclude.Include include) {
        return include;
    }

    @Deprecated
    public Class<?> findSerializationKeyType(com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) {
        return null;
    }

    public String[] findSerializationPropertyOrder(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Boolean findSerializationSortAlphabetically(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    @Deprecated
    public Class<?> findSerializationType(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public JsonSerialize.Typing findSerializationTyping(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Object findSerializer(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public JsonSetter.Value findSetterInfo(com.fasterxml.jackson.databind.introspect.a aVar) {
        return JsonSetter.Value.empty();
    }

    public List<NamedType> findSubtypes(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public String findTypeName(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.c cVar, JavaType javaType) {
        return null;
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findValueInstantiator(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Class<?>[] findViews(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public PropertyName findWrapperName(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Boolean hasAnyGetter(com.fasterxml.jackson.databind.introspect.a aVar) {
        if ((aVar instanceof AnnotatedMethod) && hasAnyGetterAnnotation((AnnotatedMethod) aVar)) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Deprecated
    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public Boolean hasAnySetter(com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    @Deprecated
    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public Boolean hasAsKey(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar) {
        return null;
    }

    public Boolean hasAsValue(com.fasterxml.jackson.databind.introspect.a aVar) {
        if ((aVar instanceof AnnotatedMethod) && hasAsValueAnnotation((AnnotatedMethod) aVar)) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Deprecated
    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    @Deprecated
    public boolean hasCreatorAnnotation(com.fasterxml.jackson.databind.introspect.a aVar) {
        return false;
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return false;
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        return null;
    }

    public boolean isAnnotationBundle(Annotation annotation) {
        return false;
    }

    public Boolean isIgnorableType(com.fasterxml.jackson.databind.introspect.c cVar) {
        return null;
    }

    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return null;
    }

    public JavaType refineDeserializationType(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        return javaType;
    }

    public JavaType refineSerializationType(MapperConfig<?> mapperConfig, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        return javaType;
    }

    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        return null;
    }

    @Override // com.fasterxml.jackson.core.n
    public abstract Version version();

    public Collection<AnnotationIntrospector> allIntrospectors(Collection<AnnotationIntrospector> collection) {
        collection.add(this);
        return collection;
    }
}
