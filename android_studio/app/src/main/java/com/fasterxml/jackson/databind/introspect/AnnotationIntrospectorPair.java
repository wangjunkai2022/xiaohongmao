package com.fasterxml.jackson.databind.introspect;

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
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public class AnnotationIntrospectorPair extends AnnotationIntrospector implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15189c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final AnnotationIntrospector f15190a;

    /* renamed from: b  reason: collision with root package name */
    protected final AnnotationIntrospector f15191b;

    public AnnotationIntrospectorPair(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        this.f15190a = annotationIntrospector;
        this.f15191b = annotationIntrospector2;
    }

    public static AnnotationIntrospector create(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        return annotationIntrospector == null ? annotationIntrospector2 : annotationIntrospector2 == null ? annotationIntrospector : new AnnotationIntrospectorPair(annotationIntrospector, annotationIntrospector2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Collection<AnnotationIntrospector> allIntrospectors() {
        return allIntrospectors(new ArrayList());
    }

    protected Object d(Object obj, Class<?> cls) {
        if (obj == null || obj == cls) {
            return null;
        }
        if ((obj instanceof Class) && com.fasterxml.jackson.databind.util.g.T((Class) obj)) {
            return null;
        }
        return obj;
    }

    protected boolean e(Object obj, Class<?> cls) {
        if (obj == null || obj == cls) {
            return false;
        }
        if (obj instanceof Class) {
            return !com.fasterxml.jackson.databind.util.g.T((Class) obj);
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, c cVar, List<BeanPropertyWriter> list) {
        this.f15190a.findAndAddVirtualProperties(mapperConfig, cVar, list);
        this.f15191b.findAndAddVirtualProperties(mapperConfig, cVar, list);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public VisibilityChecker<?> findAutoDetectVisibility(c cVar, VisibilityChecker<?> visibilityChecker) {
        return this.f15190a.findAutoDetectVisibility(cVar, this.f15191b.findAutoDetectVisibility(cVar, visibilityChecker));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findClassDescription(c cVar) {
        String findClassDescription = this.f15190a.findClassDescription(cVar);
        return (findClassDescription == null || findClassDescription.isEmpty()) ? this.f15191b.findClassDescription(cVar) : findClassDescription;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentDeserializer(a aVar) {
        Object findContentDeserializer = this.f15190a.findContentDeserializer(aVar);
        return e(findContentDeserializer, d.a.class) ? findContentDeserializer : d(this.f15191b.findContentDeserializer(aVar), d.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findContentSerializer(a aVar) {
        Object findContentSerializer = this.f15190a.findContentSerializer(aVar);
        return e(findContentSerializer, g.a.class) ? findContentSerializer : d(this.f15191b.findContentSerializer(aVar), g.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonCreator.Mode findCreatorAnnotation(MapperConfig<?> mapperConfig, a aVar) {
        JsonCreator.Mode findCreatorAnnotation = this.f15190a.findCreatorAnnotation(mapperConfig, aVar);
        return findCreatorAnnotation == null ? this.f15191b.findCreatorAnnotation(mapperConfig, aVar) : findCreatorAnnotation;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonCreator.Mode findCreatorBinding(a aVar) {
        JsonCreator.Mode findCreatorBinding = this.f15190a.findCreatorBinding(aVar);
        return findCreatorBinding != null ? findCreatorBinding : this.f15191b.findCreatorBinding(aVar);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Enum<?> findDefaultEnumValue(Class<Enum<?>> cls) {
        Enum<?> findDefaultEnumValue = this.f15190a.findDefaultEnumValue(cls);
        return findDefaultEnumValue == null ? this.f15191b.findDefaultEnumValue(cls) : findDefaultEnumValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        Object findDeserializationContentConverter = this.f15190a.findDeserializationContentConverter(annotatedMember);
        return findDeserializationContentConverter == null ? this.f15191b.findDeserializationContentConverter(annotatedMember) : findDeserializationContentConverter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationContentType(a aVar, JavaType javaType) {
        Class<?> findDeserializationContentType = this.f15190a.findDeserializationContentType(aVar, javaType);
        return findDeserializationContentType == null ? this.f15191b.findDeserializationContentType(aVar, javaType) : findDeserializationContentType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializationConverter(a aVar) {
        Object findDeserializationConverter = this.f15190a.findDeserializationConverter(aVar);
        return findDeserializationConverter == null ? this.f15191b.findDeserializationConverter(aVar) : findDeserializationConverter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationKeyType(a aVar, JavaType javaType) {
        Class<?> findDeserializationKeyType = this.f15190a.findDeserializationKeyType(aVar, javaType);
        return findDeserializationKeyType == null ? this.f15191b.findDeserializationKeyType(aVar, javaType) : findDeserializationKeyType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findDeserializationType(a aVar, JavaType javaType) {
        Class<?> findDeserializationType = this.f15190a.findDeserializationType(aVar, javaType);
        return findDeserializationType != null ? findDeserializationType : this.f15191b.findDeserializationType(aVar, javaType);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findDeserializer(a aVar) {
        Object findDeserializer = this.f15190a.findDeserializer(aVar);
        return e(findDeserializer, d.a.class) ? findDeserializer : d(this.f15191b.findDeserializer(aVar), d.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public void findEnumAliases(Class<?> cls, Enum<?>[] enumArr, String[][] strArr) {
        this.f15191b.findEnumAliases(cls, enumArr, strArr);
        this.f15190a.findEnumAliases(cls, enumArr, strArr);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public String findEnumValue(Enum<?> r22) {
        String findEnumValue = this.f15190a.findEnumValue(r22);
        return findEnumValue == null ? this.f15191b.findEnumValue(r22) : findEnumValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findEnumValues(Class<?> cls, Enum<?>[] enumArr, String[] strArr) {
        return this.f15190a.findEnumValues(cls, enumArr, this.f15191b.findEnumValues(cls, enumArr, strArr));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findFilterId(a aVar) {
        Object findFilterId = this.f15190a.findFilterId(aVar);
        return findFilterId == null ? this.f15191b.findFilterId(aVar) : findFilterId;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonFormat.Value findFormat(a aVar) {
        JsonFormat.Value findFormat = this.f15190a.findFormat(aVar);
        JsonFormat.Value findFormat2 = this.f15191b.findFormat(aVar);
        return findFormat2 == null ? findFormat : findFormat2.withOverrides(findFormat);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Boolean findIgnoreUnknownProperties(c cVar) {
        Boolean findIgnoreUnknownProperties = this.f15190a.findIgnoreUnknownProperties(cVar);
        return findIgnoreUnknownProperties == null ? this.f15191b.findIgnoreUnknownProperties(cVar) : findIgnoreUnknownProperties;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        String findImplicitPropertyName = this.f15190a.findImplicitPropertyName(annotatedMember);
        return findImplicitPropertyName == null ? this.f15191b.findImplicitPropertyName(annotatedMember) : findImplicitPropertyName;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JacksonInject.Value findInjectableValue(AnnotatedMember annotatedMember) {
        JacksonInject.Value findInjectableValue;
        JacksonInject.Value findInjectableValue2 = this.f15190a.findInjectableValue(annotatedMember);
        if ((findInjectableValue2 == null || findInjectableValue2.getUseInput() == null) && (findInjectableValue = this.f15191b.findInjectableValue(annotatedMember)) != null) {
            if (findInjectableValue2 != null) {
                findInjectableValue = findInjectableValue2.withUseInput(findInjectableValue.getUseInput());
            }
            return findInjectableValue;
        }
        return findInjectableValue2;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        Object findInjectableValueId = this.f15190a.findInjectableValueId(annotatedMember);
        return findInjectableValueId == null ? this.f15191b.findInjectableValueId(annotatedMember) : findInjectableValueId;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeyDeserializer(a aVar) {
        Object findKeyDeserializer = this.f15190a.findKeyDeserializer(aVar);
        return e(findKeyDeserializer, h.a.class) ? findKeyDeserializer : d(this.f15191b.findKeyDeserializer(aVar), h.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findKeySerializer(a aVar) {
        Object findKeySerializer = this.f15190a.findKeySerializer(aVar);
        return e(findKeySerializer, g.a.class) ? findKeySerializer : d(this.f15191b.findKeySerializer(aVar), g.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findMergeInfo(a aVar) {
        Boolean findMergeInfo = this.f15190a.findMergeInfo(aVar);
        return findMergeInfo == null ? this.f15191b.findMergeInfo(aVar) : findMergeInfo;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForDeserialization(a aVar) {
        PropertyName findNameForDeserialization;
        PropertyName findNameForDeserialization2 = this.f15190a.findNameForDeserialization(aVar);
        if (findNameForDeserialization2 == null) {
            return this.f15191b.findNameForDeserialization(aVar);
        }
        return (findNameForDeserialization2 != PropertyName.USE_DEFAULT || (findNameForDeserialization = this.f15191b.findNameForDeserialization(aVar)) == null) ? findNameForDeserialization2 : findNameForDeserialization;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findNameForSerialization(a aVar) {
        PropertyName findNameForSerialization;
        PropertyName findNameForSerialization2 = this.f15190a.findNameForSerialization(aVar);
        if (findNameForSerialization2 == null) {
            return this.f15191b.findNameForSerialization(aVar);
        }
        return (findNameForSerialization2 != PropertyName.USE_DEFAULT || (findNameForSerialization = this.f15191b.findNameForSerialization(aVar)) == null) ? findNameForSerialization2 : findNameForSerialization;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNamingStrategy(c cVar) {
        Object findNamingStrategy = this.f15190a.findNamingStrategy(cVar);
        return findNamingStrategy == null ? this.f15191b.findNamingStrategy(cVar) : findNamingStrategy;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findNullSerializer(a aVar) {
        Object findNullSerializer = this.f15190a.findNullSerializer(aVar);
        return e(findNullSerializer, g.a.class) ? findNullSerializer : d(this.f15191b.findNullSerializer(aVar), g.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public p findObjectIdInfo(a aVar) {
        p findObjectIdInfo = this.f15190a.findObjectIdInfo(aVar);
        return findObjectIdInfo == null ? this.f15191b.findObjectIdInfo(aVar) : findObjectIdInfo;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public p findObjectReferenceInfo(a aVar, p pVar) {
        return this.f15190a.findObjectReferenceInfo(aVar, this.f15191b.findObjectReferenceInfo(aVar, pVar));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?> findPOJOBuilder(c cVar) {
        Class<?> findPOJOBuilder = this.f15190a.findPOJOBuilder(cVar);
        return findPOJOBuilder == null ? this.f15191b.findPOJOBuilder(cVar) : findPOJOBuilder;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public e.a findPOJOBuilderConfig(c cVar) {
        e.a findPOJOBuilderConfig = this.f15190a.findPOJOBuilderConfig(cVar);
        return findPOJOBuilderConfig == null ? this.f15191b.findPOJOBuilderConfig(cVar) : findPOJOBuilderConfig;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public String[] findPropertiesToIgnore(a aVar, boolean z9) {
        String[] findPropertiesToIgnore = this.f15190a.findPropertiesToIgnore(aVar, z9);
        return findPropertiesToIgnore == null ? this.f15191b.findPropertiesToIgnore(aVar, z9) : findPropertiesToIgnore;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonProperty.Access findPropertyAccess(a aVar) {
        JsonProperty.Access findPropertyAccess = this.f15190a.findPropertyAccess(aVar);
        if (findPropertyAccess == null || findPropertyAccess == JsonProperty.Access.AUTO) {
            JsonProperty.Access findPropertyAccess2 = this.f15191b.findPropertyAccess(aVar);
            return findPropertyAccess2 != null ? findPropertyAccess2 : JsonProperty.Access.AUTO;
        }
        return findPropertyAccess;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<PropertyName> findPropertyAliases(a aVar) {
        List<PropertyName> findPropertyAliases = this.f15190a.findPropertyAliases(aVar);
        return findPropertyAliases == null ? this.f15191b.findPropertyAliases(aVar) : findPropertyAliases;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyContentTypeResolver = this.f15190a.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType);
        return findPropertyContentTypeResolver == null ? this.f15191b.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType) : findPropertyContentTypeResolver;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDefaultValue(a aVar) {
        String findPropertyDefaultValue = this.f15190a.findPropertyDefaultValue(aVar);
        return (findPropertyDefaultValue == null || findPropertyDefaultValue.isEmpty()) ? this.f15191b.findPropertyDefaultValue(aVar) : findPropertyDefaultValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findPropertyDescription(a aVar) {
        String findPropertyDescription = this.f15190a.findPropertyDescription(aVar);
        return findPropertyDescription == null ? this.f15191b.findPropertyDescription(aVar) : findPropertyDescription;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIgnoreProperties.Value findPropertyIgnoralByName(MapperConfig<?> mapperConfig, a aVar) {
        JsonIgnoreProperties.Value findPropertyIgnoralByName = this.f15191b.findPropertyIgnoralByName(mapperConfig, aVar);
        JsonIgnoreProperties.Value findPropertyIgnoralByName2 = this.f15190a.findPropertyIgnoralByName(mapperConfig, aVar);
        return findPropertyIgnoralByName == null ? findPropertyIgnoralByName2 : findPropertyIgnoralByName.withOverrides(findPropertyIgnoralByName2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonIgnoreProperties.Value findPropertyIgnorals(a aVar) {
        JsonIgnoreProperties.Value findPropertyIgnorals = this.f15191b.findPropertyIgnorals(aVar);
        JsonIgnoreProperties.Value findPropertyIgnorals2 = this.f15190a.findPropertyIgnorals(aVar);
        return findPropertyIgnorals == null ? findPropertyIgnorals2 : findPropertyIgnorals.withOverrides(findPropertyIgnorals2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonInclude.Value findPropertyInclusion(a aVar) {
        JsonInclude.Value findPropertyInclusion = this.f15191b.findPropertyInclusion(aVar);
        JsonInclude.Value findPropertyInclusion2 = this.f15190a.findPropertyInclusion(aVar);
        return findPropertyInclusion == null ? findPropertyInclusion2 : findPropertyInclusion.withOverrides(findPropertyInclusion2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonIncludeProperties.Value findPropertyInclusionByName(MapperConfig<?> mapperConfig, a aVar) {
        JsonIncludeProperties.Value findPropertyInclusionByName = this.f15191b.findPropertyInclusionByName(mapperConfig, aVar);
        JsonIncludeProperties.Value findPropertyInclusionByName2 = this.f15190a.findPropertyInclusionByName(mapperConfig, aVar);
        return findPropertyInclusionByName == null ? findPropertyInclusionByName2 : findPropertyInclusionByName.withOverrides(findPropertyInclusionByName2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Integer findPropertyIndex(a aVar) {
        Integer findPropertyIndex = this.f15190a.findPropertyIndex(aVar);
        return findPropertyIndex == null ? this.f15191b.findPropertyIndex(aVar) : findPropertyIndex;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        com.fasterxml.jackson.databind.jsontype.e<?> findPropertyTypeResolver = this.f15190a.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType);
        return findPropertyTypeResolver == null ? this.f15191b.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType) : findPropertyTypeResolver;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        AnnotationIntrospector.ReferenceProperty findReferenceType = this.f15190a.findReferenceType(annotatedMember);
        return findReferenceType == null ? this.f15191b.findReferenceType(annotatedMember) : findReferenceType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRenameByField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, PropertyName propertyName) {
        PropertyName findRenameByField = this.f15191b.findRenameByField(mapperConfig, annotatedField, propertyName);
        return findRenameByField == null ? this.f15190a.findRenameByField(mapperConfig, annotatedField, propertyName) : findRenameByField;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findRootName(c cVar) {
        PropertyName findRootName;
        PropertyName findRootName2 = this.f15190a.findRootName(cVar);
        if (findRootName2 == null) {
            return this.f15191b.findRootName(cVar);
        }
        return (findRootName2.hasSimpleName() || (findRootName = this.f15191b.findRootName(cVar)) == null) ? findRootName2 : findRootName;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        Object findSerializationContentConverter = this.f15190a.findSerializationContentConverter(annotatedMember);
        return findSerializationContentConverter == null ? this.f15191b.findSerializationContentConverter(annotatedMember) : findSerializationContentConverter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationContentType(a aVar, JavaType javaType) {
        Class<?> findSerializationContentType = this.f15190a.findSerializationContentType(aVar, javaType);
        return findSerializationContentType == null ? this.f15191b.findSerializationContentType(aVar, javaType) : findSerializationContentType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializationConverter(a aVar) {
        Object findSerializationConverter = this.f15190a.findSerializationConverter(aVar);
        return findSerializationConverter == null ? this.f15191b.findSerializationConverter(aVar) : findSerializationConverter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonInclude.Include findSerializationInclusion(a aVar, JsonInclude.Include include) {
        return this.f15190a.findSerializationInclusion(aVar, this.f15191b.findSerializationInclusion(aVar, include));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public JsonInclude.Include findSerializationInclusionForContent(a aVar, JsonInclude.Include include) {
        return this.f15190a.findSerializationInclusionForContent(aVar, this.f15191b.findSerializationInclusionForContent(aVar, include));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationKeyType(a aVar, JavaType javaType) {
        Class<?> findSerializationKeyType = this.f15190a.findSerializationKeyType(aVar, javaType);
        return findSerializationKeyType == null ? this.f15191b.findSerializationKeyType(aVar, javaType) : findSerializationKeyType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String[] findSerializationPropertyOrder(c cVar) {
        String[] findSerializationPropertyOrder = this.f15190a.findSerializationPropertyOrder(cVar);
        return findSerializationPropertyOrder == null ? this.f15191b.findSerializationPropertyOrder(cVar) : findSerializationPropertyOrder;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean findSerializationSortAlphabetically(a aVar) {
        Boolean findSerializationSortAlphabetically = this.f15190a.findSerializationSortAlphabetically(aVar);
        return findSerializationSortAlphabetically == null ? this.f15191b.findSerializationSortAlphabetically(aVar) : findSerializationSortAlphabetically;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public Class<?> findSerializationType(a aVar) {
        Class<?> findSerializationType = this.f15190a.findSerializationType(aVar);
        return findSerializationType == null ? this.f15191b.findSerializationType(aVar) : findSerializationType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSerialize.Typing findSerializationTyping(a aVar) {
        JsonSerialize.Typing findSerializationTyping = this.f15190a.findSerializationTyping(aVar);
        return findSerializationTyping == null ? this.f15191b.findSerializationTyping(aVar) : findSerializationTyping;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findSerializer(a aVar) {
        Object findSerializer = this.f15190a.findSerializer(aVar);
        return e(findSerializer, g.a.class) ? findSerializer : d(this.f15191b.findSerializer(aVar), g.a.class);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JsonSetter.Value findSetterInfo(a aVar) {
        JsonSetter.Value findSetterInfo = this.f15191b.findSetterInfo(aVar);
        JsonSetter.Value findSetterInfo2 = this.f15190a.findSetterInfo(aVar);
        return findSetterInfo == null ? findSetterInfo2 : findSetterInfo.withOverrides(findSetterInfo2);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public List<NamedType> findSubtypes(a aVar) {
        List<NamedType> findSubtypes = this.f15190a.findSubtypes(aVar);
        List<NamedType> findSubtypes2 = this.f15191b.findSubtypes(aVar);
        if (findSubtypes == null || findSubtypes.isEmpty()) {
            return findSubtypes2;
        }
        if (findSubtypes2 == null || findSubtypes2.isEmpty()) {
            return findSubtypes;
        }
        ArrayList arrayList = new ArrayList(findSubtypes.size() + findSubtypes2.size());
        arrayList.addAll(findSubtypes);
        arrayList.addAll(findSubtypes2);
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public String findTypeName(c cVar) {
        String findTypeName = this.f15190a.findTypeName(cVar);
        return (findTypeName == null || findTypeName.isEmpty()) ? this.f15191b.findTypeName(cVar) : findTypeName;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver(MapperConfig<?> mapperConfig, c cVar, JavaType javaType) {
        com.fasterxml.jackson.databind.jsontype.e<?> findTypeResolver = this.f15190a.findTypeResolver(mapperConfig, cVar, javaType);
        return findTypeResolver == null ? this.f15191b.findTypeResolver(mapperConfig, cVar, javaType) : findTypeResolver;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        NameTransformer findUnwrappingNameTransformer = this.f15190a.findUnwrappingNameTransformer(annotatedMember);
        return findUnwrappingNameTransformer == null ? this.f15191b.findUnwrappingNameTransformer(annotatedMember) : findUnwrappingNameTransformer;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Object findValueInstantiator(c cVar) {
        Object findValueInstantiator = this.f15190a.findValueInstantiator(cVar);
        return findValueInstantiator == null ? this.f15191b.findValueInstantiator(cVar) : findValueInstantiator;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Class<?>[] findViews(a aVar) {
        Class<?>[] findViews = this.f15190a.findViews(aVar);
        return findViews == null ? this.f15191b.findViews(aVar) : findViews;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public PropertyName findWrapperName(a aVar) {
        PropertyName findWrapperName;
        PropertyName findWrapperName2 = this.f15190a.findWrapperName(aVar);
        if (findWrapperName2 == null) {
            return this.f15191b.findWrapperName(aVar);
        }
        return (findWrapperName2 != PropertyName.USE_DEFAULT || (findWrapperName = this.f15191b.findWrapperName(aVar)) == null) ? findWrapperName2 : findWrapperName;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnyGetter(a aVar) {
        Boolean hasAnyGetter = this.f15190a.hasAnyGetter(aVar);
        return hasAnyGetter == null ? this.f15191b.hasAnyGetter(aVar) : hasAnyGetter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return this.f15190a.hasAnyGetterAnnotation(annotatedMethod) || this.f15191b.hasAnyGetterAnnotation(annotatedMethod);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAnySetter(a aVar) {
        Boolean hasAnySetter = this.f15190a.hasAnySetter(aVar);
        return hasAnySetter == null ? this.f15191b.hasAnySetter(aVar) : hasAnySetter;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return this.f15190a.hasAnySetterAnnotation(annotatedMethod) || this.f15191b.hasAnySetterAnnotation(annotatedMethod);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsKey(MapperConfig<?> mapperConfig, a aVar) {
        Boolean hasAsKey = this.f15190a.hasAsKey(mapperConfig, aVar);
        return hasAsKey == null ? this.f15191b.hasAsKey(mapperConfig, aVar) : hasAsKey;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasAsValue(a aVar) {
        Boolean hasAsValue = this.f15190a.hasAsValue(aVar);
        return hasAsValue == null ? this.f15191b.hasAsValue(aVar) : hasAsValue;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        return this.f15190a.hasAsValueAnnotation(annotatedMethod) || this.f15191b.hasAsValueAnnotation(annotatedMethod);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    @Deprecated
    public boolean hasCreatorAnnotation(a aVar) {
        return this.f15190a.hasCreatorAnnotation(aVar) || this.f15191b.hasCreatorAnnotation(aVar);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return this.f15190a.hasIgnoreMarker(annotatedMember) || this.f15191b.hasIgnoreMarker(annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        Boolean hasRequiredMarker = this.f15190a.hasRequiredMarker(annotatedMember);
        return hasRequiredMarker == null ? this.f15191b.hasRequiredMarker(annotatedMember) : hasRequiredMarker;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean isAnnotationBundle(Annotation annotation) {
        return this.f15190a.isAnnotationBundle(annotation) || this.f15191b.isAnnotationBundle(annotation);
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isIgnorableType(c cVar) {
        Boolean isIgnorableType = this.f15190a.isIgnorableType(cVar);
        return isIgnorableType == null ? this.f15191b.isIgnorableType(cVar) : isIgnorableType;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        Boolean isTypeId = this.f15190a.isTypeId(annotatedMember);
        return isTypeId == null ? this.f15191b.isTypeId(annotatedMember) : isTypeId;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineDeserializationType(MapperConfig<?> mapperConfig, a aVar, JavaType javaType) throws JsonMappingException {
        return this.f15190a.refineDeserializationType(mapperConfig, aVar, this.f15191b.refineDeserializationType(mapperConfig, aVar, javaType));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public JavaType refineSerializationType(MapperConfig<?> mapperConfig, a aVar, JavaType javaType) throws JsonMappingException {
        return this.f15190a.refineSerializationType(mapperConfig, aVar, this.f15191b.refineSerializationType(mapperConfig, aVar, javaType));
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        AnnotatedMethod resolveSetterConflict = this.f15190a.resolveSetterConflict(mapperConfig, annotatedMethod, annotatedMethod2);
        return resolveSetterConflict == null ? this.f15191b.resolveSetterConflict(mapperConfig, annotatedMethod, annotatedMethod2) : resolveSetterConflict;
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector, com.fasterxml.jackson.core.n
    public Version version() {
        return this.f15190a.version();
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public Collection<AnnotationIntrospector> allIntrospectors(Collection<AnnotationIntrospector> collection) {
        this.f15190a.allIntrospectors(collection);
        this.f15191b.allIntrospectors(collection);
        return collection;
    }
}
