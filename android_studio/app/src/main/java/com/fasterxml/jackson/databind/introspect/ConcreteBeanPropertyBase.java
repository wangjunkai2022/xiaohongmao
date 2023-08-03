package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ConcreteBeanPropertyBase implements BeanProperty, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f15201c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final PropertyMetadata f15202a;

    /* renamed from: b  reason: collision with root package name */
    protected transient List<PropertyName> f15203b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ConcreteBeanPropertyBase(PropertyMetadata propertyMetadata) {
        this.f15202a = propertyMetadata == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : propertyMetadata;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public List<PropertyName> findAliases(MapperConfig<?> mapperConfig) {
        AnnotatedMember member;
        List<PropertyName> list = this.f15203b;
        if (list == null) {
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            if (annotationIntrospector != null && (member = getMember()) != null) {
                list = annotationIntrospector.findPropertyAliases(member);
            }
            if (list == null) {
                list = Collections.emptyList();
            }
            this.f15203b = list;
        }
        return list;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    @Deprecated
    public final JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
        AnnotatedMember member;
        JsonFormat.Value findFormat = (annotationIntrospector == null || (member = getMember()) == null) ? null : annotationIntrospector.findFormat(member);
        return findFormat == null ? BeanProperty.f14313a0 : findFormat;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
        AnnotatedMember member;
        JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        JsonFormat.Value findFormat = (annotationIntrospector == null || (member = getMember()) == null) ? null : annotationIntrospector.findFormat(member);
        return defaultPropertyFormat == null ? findFormat == null ? BeanProperty.f14313a0 : findFormat : findFormat == null ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (member == null) {
            return mapperConfig.getDefaultPropertyInclusion(cls);
        }
        JsonInclude.Value defaultInclusion = mapperConfig.getDefaultInclusion(cls, member.getRawType());
        if (annotationIntrospector == null) {
            return defaultInclusion;
        }
        JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(member);
        return defaultInclusion == null ? findPropertyInclusion : defaultInclusion.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyMetadata getMetadata() {
        return this.f15202a;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public boolean isRequired() {
        return this.f15202a.isRequired();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public boolean isVirtual() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ConcreteBeanPropertyBase(ConcreteBeanPropertyBase concreteBeanPropertyBase) {
        this.f15202a = concreteBeanPropertyBase.f15202a;
    }
}
