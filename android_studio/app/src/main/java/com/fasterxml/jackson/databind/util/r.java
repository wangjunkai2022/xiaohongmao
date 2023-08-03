package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: SimpleBeanPropertyDefinition.java */
/* loaded from: classes2.dex */
public class r extends com.fasterxml.jackson.databind.introspect.k {

    /* renamed from: b  reason: collision with root package name */
    protected final AnnotationIntrospector f16050b;

    /* renamed from: c  reason: collision with root package name */
    protected final AnnotatedMember f16051c;

    /* renamed from: d  reason: collision with root package name */
    protected final PropertyMetadata f16052d;

    /* renamed from: e  reason: collision with root package name */
    protected final PropertyName f16053e;

    /* renamed from: f  reason: collision with root package name */
    protected final JsonInclude.Value f16054f;

    protected r(AnnotationIntrospector annotationIntrospector, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Value value) {
        this.f16050b = annotationIntrospector;
        this.f16051c = annotatedMember;
        this.f16053e = propertyName;
        this.f16052d = propertyMetadata == null ? PropertyMetadata.STD_OPTIONAL : propertyMetadata;
        this.f16054f = value;
    }

    public static r E(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember) {
        return new r(mapperConfig.getAnnotationIntrospector(), annotatedMember, PropertyName.construct(annotatedMember.getName()), null, com.fasterxml.jackson.databind.introspect.k.f15303a);
    }

    public static r F(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName) {
        return I(mapperConfig, annotatedMember, propertyName, null, com.fasterxml.jackson.databind.introspect.k.f15303a);
    }

    public static r G(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Include include) {
        JsonInclude.Value value;
        if (include != null && include != JsonInclude.Include.USE_DEFAULTS) {
            value = JsonInclude.Value.construct(include, null);
        } else {
            value = com.fasterxml.jackson.databind.introspect.k.f15303a;
        }
        return new r(mapperConfig.getAnnotationIntrospector(), annotatedMember, propertyName, propertyMetadata, value);
    }

    public static r I(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Value value) {
        return new r(mapperConfig.getAnnotationIntrospector(), annotatedMember, propertyName, propertyMetadata, value);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean A() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public com.fasterxml.jackson.databind.introspect.k C(PropertyName propertyName) {
        return this.f16053e.equals(propertyName) ? this : new r(this.f16050b, this.f16051c, propertyName, this.f16052d, this.f16054f);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public com.fasterxml.jackson.databind.introspect.k D(String str) {
        return (!this.f16053e.hasSimpleName(str) || this.f16053e.hasNamespace()) ? new r(this.f16050b, this.f16051c, new PropertyName(str), this.f16052d, this.f16054f) : this;
    }

    public com.fasterxml.jackson.databind.introspect.k J(JsonInclude.Value value) {
        return this.f16054f == value ? this : new r(this.f16050b, this.f16051c, this.f16053e, this.f16052d, value);
    }

    public com.fasterxml.jackson.databind.introspect.k K(PropertyMetadata propertyMetadata) {
        return propertyMetadata.equals(this.f16052d) ? this : new r(this.f16050b, this.f16051c, this.f16053e, propertyMetadata, this.f16054f);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public JsonInclude.Value c() {
        return this.f16054f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyName getFullName() {
        return this.f16053e;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyMetadata getMetadata() {
        return this.f16052d;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k, com.fasterxml.jackson.databind.util.n
    public String getName() {
        return this.f16053e.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public PropertyName getWrapperName() {
        AnnotatedMember annotatedMember;
        AnnotationIntrospector annotationIntrospector = this.f16050b;
        if (annotationIntrospector == null || (annotatedMember = this.f16051c) == null) {
            return null;
        }
        return annotationIntrospector.findWrapperName(annotatedMember);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedParameter i() {
        AnnotatedMember annotatedMember = this.f16051c;
        if (annotatedMember instanceof AnnotatedParameter) {
            return (AnnotatedParameter) annotatedMember;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public Iterator<AnnotatedParameter> k() {
        AnnotatedParameter i4 = i();
        if (i4 == null) {
            return g.p();
        }
        return Collections.singleton(i4).iterator();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedField l() {
        AnnotatedMember annotatedMember = this.f16051c;
        if (annotatedMember instanceof AnnotatedField) {
            return (AnnotatedField) annotatedMember;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMethod m() {
        AnnotatedMember annotatedMember = this.f16051c;
        if ((annotatedMember instanceof AnnotatedMethod) && ((AnnotatedMethod) annotatedMember).getParameterCount() == 0) {
            return (AnnotatedMethod) this.f16051c;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public String n() {
        return getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMember q() {
        return this.f16051c;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public JavaType r() {
        AnnotatedMember annotatedMember = this.f16051c;
        if (annotatedMember == null) {
            return TypeFactory.unknownType();
        }
        return annotatedMember.getType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public Class<?> s() {
        AnnotatedMember annotatedMember = this.f16051c;
        if (annotatedMember == null) {
            return Object.class;
        }
        return annotatedMember.getRawType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public AnnotatedMethod t() {
        AnnotatedMember annotatedMember = this.f16051c;
        if ((annotatedMember instanceof AnnotatedMethod) && ((AnnotatedMethod) annotatedMember).getParameterCount() == 1) {
            return (AnnotatedMethod) this.f16051c;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean u() {
        return this.f16051c instanceof AnnotatedParameter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean v() {
        return this.f16051c instanceof AnnotatedField;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean w() {
        return m() != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean x(PropertyName propertyName) {
        return this.f16053e.equals(propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean y() {
        return t() != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.k
    public boolean z() {
        return false;
    }
}
