package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class PlaceholderForType extends TypeBase {

    /* renamed from: p  reason: collision with root package name */
    private static final long f15868p = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final int f15869n;

    /* renamed from: o  reason: collision with root package name */
    protected JavaType f15870o;

    public PlaceholderForType(int i4) {
        super(Object.class, TypeBindings.emptyBindings(), TypeFactory.unknownType(), null, 1, null, null, false);
        this.f15869n = i4;
    }

    private <T> T h0() {
        throw new UnsupportedOperationException("Operation should not be attempted on " + getClass().getName());
    }

    public JavaType actualType() {
        return this.f15870o;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String g0() {
        return toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        sb.append(Typography.dollar);
        sb.append(this.f15869n + 1);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        return getErasedSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return getErasedSignature(new StringBuilder()).toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentTypeHandler(Object obj) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentValueHandler(Object obj) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withStaticTyping() {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withTypeHandler(Object obj) {
        return (JavaType) h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withValueHandler(Object obj) {
        return (JavaType) h0();
    }

    public void actualType(JavaType javaType) {
        this.f15870o = javaType;
    }
}
