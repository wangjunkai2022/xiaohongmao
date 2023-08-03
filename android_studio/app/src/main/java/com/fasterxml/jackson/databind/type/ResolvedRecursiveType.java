package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;

/* loaded from: classes2.dex */
public class ResolvedRecursiveType extends TypeBase {

    /* renamed from: o  reason: collision with root package name */
    private static final long f15874o = 1;

    /* renamed from: n  reason: collision with root package name */
    protected JavaType f15875n;

    public ResolvedRecursiveType(Class<?> cls, TypeBindings typeBindings) {
        super(cls, typeBindings, null, null, 0, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public TypeBindings getBindings() {
        JavaType javaType = this.f15875n;
        if (javaType != null) {
            return javaType.getBindings();
        }
        return super.getBindings();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        JavaType javaType = this.f15875n;
        return javaType != null ? javaType.getErasedSignature(sb) : sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        JavaType javaType = this.f15875n;
        if (javaType != null) {
            return javaType.getErasedSignature(sb);
        }
        sb.append("?");
        return sb;
    }

    public JavaType getSelfReferencedType() {
        return this.f15875n;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public JavaType getSuperClass() {
        JavaType javaType = this.f15875n;
        if (javaType != null) {
            return javaType.getSuperClass();
        }
        return super.getSuperClass();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return null;
    }

    public void setReference(JavaType javaType) {
        if (this.f15875n == null) {
            this.f15875n = javaType;
            return;
        }
        throw new IllegalStateException("Trying to re-set self reference; old value = " + this.f15875n + ", new = " + javaType);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[recursive type; ");
        JavaType javaType = this.f15875n;
        if (javaType == null) {
            sb.append("UNRESOLVED");
        } else {
            sb.append(javaType.getRawClass().getName());
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentTypeHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentValueHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withStaticTyping() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withTypeHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withValueHandler(Object obj) {
        return this;
    }
}
