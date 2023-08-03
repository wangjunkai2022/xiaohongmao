package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Objects;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class ReferenceType extends SimpleType {

    /* renamed from: q  reason: collision with root package name */
    private static final long f15871q = 1;

    /* renamed from: o  reason: collision with root package name */
    protected final JavaType f15872o;

    /* renamed from: p  reason: collision with root package name */
    protected final JavaType f15873p;

    protected ReferenceType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, JavaType javaType3, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, Objects.hashCode(javaType2), obj, obj2, z9);
        this.f15872o = javaType2;
        this.f15873p = javaType3 == null ? this : javaType3;
    }

    public static ReferenceType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new ReferenceType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, null, false);
    }

    public static ReferenceType upgradeFrom(JavaType javaType, JavaType javaType2) {
        if (javaType2 != null) {
            if (javaType instanceof TypeBase) {
                return new ReferenceType((TypeBase) javaType, javaType2);
            }
            throw new IllegalArgumentException("Cannot upgrade from an instance of " + javaType.getClass());
        }
        throw new IllegalArgumentException("Missing referencedType");
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return new ReferenceType(cls, this.f15882i, this.f15880g, this.f15881h, this.f15872o, this.f15873p, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            ReferenceType referenceType = (ReferenceType) obj;
            if (referenceType.f14354a != this.f14354a) {
                return false;
            }
            return this.f15872o.equals(referenceType.f15872o);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    protected String g0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14354a.getName());
        if (this.f15872o != null && f0(1)) {
            sb.append(Typography.less);
            sb.append(this.f15872o.toCanonical());
            sb.append(Typography.greater);
        }
        return sb.toString();
    }

    public JavaType getAnchorType() {
        return this.f15873p;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return TypeBase.e0(this.f14354a, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase.e0(this.f14354a, sb, false);
        sb.append(Typography.less);
        StringBuilder genericSignature = this.f15872o.getGenericSignature(sb);
        genericSignature.append(">;");
        return genericSignature;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public boolean hasContentType() {
        return true;
    }

    public boolean isAnchorType() {
        return this.f15873p == this;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isReferenceType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new ReferenceType(cls, this.f15882i, javaType, javaTypeArr, this.f15872o, this.f15873p, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[reference type, class ");
        sb.append(g0());
        sb.append(Typography.less);
        sb.append(this.f15872o);
        sb.append(Typography.greater);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this.f15872o == javaType ? this : new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, javaType, this.f15873p, this.f14356c, this.f14357d, this.f14358e);
    }

    @Deprecated
    public static ReferenceType construct(Class<?> cls, JavaType javaType) {
        return new ReferenceType(cls, TypeBindings.emptyBindings(), null, null, null, javaType, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getContentType() {
        return this.f15872o;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getReferencedType() {
        return this.f15872o;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public ReferenceType withContentTypeHandler(Object obj) {
        return obj == this.f15872o.getTypeHandler() ? this : new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15872o.withTypeHandler(obj), this.f15873p, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public ReferenceType withContentValueHandler(Object obj) {
        if (obj == this.f15872o.getValueHandler()) {
            return this;
        }
        return new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15872o.withValueHandler(obj), this.f15873p, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public ReferenceType withStaticTyping() {
        return this.f14358e ? this : new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15872o.withStaticTyping(), this.f15873p, this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public ReferenceType withTypeHandler(Object obj) {
        return obj == this.f14357d ? this : new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15872o, this.f15873p, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public ReferenceType withValueHandler(Object obj) {
        return obj == this.f14356c ? this : new ReferenceType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15872o, this.f15873p, obj, this.f14357d, this.f14358e);
    }

    protected ReferenceType(TypeBase typeBase, JavaType javaType) {
        super(typeBase);
        this.f15872o = javaType;
        this.f15873p = this;
    }
}
