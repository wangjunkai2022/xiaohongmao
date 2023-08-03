package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class CollectionLikeType extends TypeBase {

    /* renamed from: o  reason: collision with root package name */
    private static final long f15860o = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final JavaType f15861n;

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionLikeType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2.hashCode(), obj, obj2, z9);
        this.f15861n = javaType2;
    }

    public static CollectionLikeType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new CollectionLikeType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, false);
    }

    public static CollectionLikeType upgradeFrom(JavaType javaType, JavaType javaType2) {
        if (javaType instanceof TypeBase) {
            return new CollectionLikeType((TypeBase) javaType, javaType2);
        }
        throw new IllegalArgumentException("Cannot upgrade from an instance of " + javaType.getClass());
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return new CollectionLikeType(cls, this.f15882i, this.f15880g, this.f15881h, this.f15861n, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            CollectionLikeType collectionLikeType = (CollectionLikeType) obj;
            return this.f14354a == collectionLikeType.f14354a && this.f15861n.equals(collectionLikeType.f15861n);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String g0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14354a.getName());
        if (this.f15861n != null && f0(1)) {
            sb.append(Typography.less);
            sb.append(this.f15861n.toCanonical());
            sb.append(Typography.greater);
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentTypeHandler() {
        return this.f15861n.getTypeHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentValueHandler() {
        return this.f15861n.getValueHandler();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return TypeBase.e0(this.f14354a, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase.e0(this.f14354a, sb, false);
        sb.append(Typography.less);
        this.f15861n.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasHandlers() {
        return super.hasHandlers() || this.f15861n.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isCollectionLikeType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return true;
    }

    @Deprecated
    public boolean isTrueCollectionType() {
        return Collection.class.isAssignableFrom(this.f14354a);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionLikeType(cls, typeBindings, javaType, javaTypeArr, this.f15861n, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[collection-like type; class " + this.f14354a.getName() + ", contains " + this.f15861n + "]";
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this.f15861n == javaType ? this : new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, javaType, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withHandlersFrom(JavaType javaType) {
        JavaType withHandlersFrom;
        JavaType withHandlersFrom2 = super.withHandlersFrom(javaType);
        JavaType contentType = javaType.getContentType();
        return (contentType == null || (withHandlersFrom = this.f15861n.withHandlersFrom(contentType)) == this.f15861n) ? withHandlersFrom2 : withHandlersFrom2.withContentType(withHandlersFrom);
    }

    @Deprecated
    public static CollectionLikeType construct(Class<?> cls, JavaType javaType) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length == 1) {
            emptyBindings = TypeBindings.create(cls, javaType);
        } else {
            emptyBindings = TypeBindings.emptyBindings();
        }
        return new CollectionLikeType(cls, emptyBindings, TypeBase.d0(cls), null, javaType, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getContentType() {
        return this.f15861n;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withContentTypeHandler(Object obj) {
        return new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withTypeHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withContentValueHandler(Object obj) {
        return new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withValueHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withStaticTyping() {
        return this.f14358e ? this : new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withStaticTyping(), this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withTypeHandler(Object obj) {
        return new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withValueHandler(Object obj) {
        return new CollectionLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n, obj, this.f14357d, this.f14358e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionLikeType(TypeBase typeBase, JavaType javaType) {
        super(typeBase);
        this.f15861n = javaType;
    }
}
