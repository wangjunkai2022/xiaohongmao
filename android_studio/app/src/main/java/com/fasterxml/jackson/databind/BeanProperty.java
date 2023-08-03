package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.n;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public interface BeanProperty extends n {

    /* renamed from: a0  reason: collision with root package name */
    public static final JsonFormat.Value f14313a0 = new JsonFormat.Value();

    /* renamed from: b0  reason: collision with root package name */
    public static final JsonInclude.Value f14314b0 = JsonInclude.Value.empty();

    /* loaded from: classes.dex */
    public static class a implements BeanProperty {
        @Override // com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, l lVar) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public List<PropertyName> findAliases(MapperConfig<?> mapperConfig) {
            return Collections.emptyList();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        @Deprecated
        public JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
            return JsonFormat.Value.empty();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
            return JsonFormat.Value.empty();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getAnnotation(Class<A> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getFullName() {
            return PropertyName.NO_NAME;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public AnnotatedMember getMember() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyMetadata getMetadata() {
            return PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
        public String getName() {
            return "";
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JavaType getType() {
            return TypeFactory.unknownType();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getWrapperName() {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public boolean isRequired() {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public boolean isVirtual() {
            return false;
        }
    }

    void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, l lVar) throws JsonMappingException;

    List<PropertyName> findAliases(MapperConfig<?> mapperConfig);

    @Deprecated
    JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector);

    JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls);

    JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls);

    <A extends Annotation> A getAnnotation(Class<A> cls);

    <A extends Annotation> A getContextAnnotation(Class<A> cls);

    PropertyName getFullName();

    AnnotatedMember getMember();

    PropertyMetadata getMetadata();

    @Override // com.fasterxml.jackson.databind.util.n
    String getName();

    JavaType getType();

    PropertyName getWrapperName();

    boolean isRequired();

    boolean isVirtual();

    /* loaded from: classes.dex */
    public static class Std implements BeanProperty, Serializable {

        /* renamed from: f  reason: collision with root package name */
        private static final long f14315f = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final PropertyName f14316a;

        /* renamed from: b  reason: collision with root package name */
        protected final JavaType f14317b;

        /* renamed from: c  reason: collision with root package name */
        protected final PropertyName f14318c;

        /* renamed from: d  reason: collision with root package name */
        protected final PropertyMetadata f14319d;

        /* renamed from: e  reason: collision with root package name */
        protected final AnnotatedMember f14320e;

        public Std(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
            this.f14316a = propertyName;
            this.f14317b = javaType;
            this.f14318c = propertyName2;
            this.f14319d = propertyMetadata;
            this.f14320e = annotatedMember;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(com.fasterxml.jackson.databind.jsonFormatVisitors.k kVar, l lVar) {
            throw new UnsupportedOperationException("Instances of " + getClass().getName() + " should not get visited");
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public List<PropertyName> findAliases(MapperConfig<?> mapperConfig) {
            return Collections.emptyList();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        @Deprecated
        public JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
            JsonFormat.Value findFormat;
            AnnotatedMember annotatedMember = this.f14320e;
            return (annotatedMember == null || annotationIntrospector == null || (findFormat = annotationIntrospector.findFormat(annotatedMember)) == null) ? BeanProperty.f14313a0 : findFormat;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
            AnnotatedMember annotatedMember;
            JsonFormat.Value findFormat;
            JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            return (annotationIntrospector == null || (annotatedMember = this.f14320e) == null || (findFormat = annotationIntrospector.findFormat(annotatedMember)) == null) ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
            AnnotatedMember annotatedMember;
            JsonInclude.Value findPropertyInclusion;
            JsonInclude.Value defaultInclusion = mapperConfig.getDefaultInclusion(cls, this.f14317b.getRawClass());
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            return (annotationIntrospector == null || (annotatedMember = this.f14320e) == null || (findPropertyInclusion = annotationIntrospector.findPropertyInclusion(annotatedMember)) == null) ? defaultInclusion : defaultInclusion.withOverrides(findPropertyInclusion);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getAnnotation(Class<A> cls) {
            AnnotatedMember annotatedMember = this.f14320e;
            if (annotatedMember == null) {
                return null;
            }
            return (A) annotatedMember.getAnnotation(cls);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getFullName() {
            return this.f14316a;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public AnnotatedMember getMember() {
            return this.f14320e;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyMetadata getMetadata() {
            return this.f14319d;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.n
        public String getName() {
            return this.f14316a.getSimpleName();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JavaType getType() {
            return this.f14317b;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getWrapperName() {
            return this.f14318c;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public boolean isRequired() {
            return this.f14319d.isRequired();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public boolean isVirtual() {
            return false;
        }

        public Std withType(JavaType javaType) {
            return new Std(this, javaType);
        }

        @Deprecated
        public Std(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, com.fasterxml.jackson.databind.util.a aVar, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
            this(propertyName, javaType, propertyName2, annotatedMember, propertyMetadata);
        }

        public Std(Std std, JavaType javaType) {
            this(std.f14316a, javaType, std.f14318c, std.f14320e, std.f14319d);
        }
    }
}
