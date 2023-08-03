package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;

/* loaded from: classes2.dex */
public final class CollectionType extends CollectionLikeType {

    /* renamed from: p  reason: collision with root package name */
    private static final long f15862p = 1;

    private CollectionType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2, obj, obj2, z9);
    }

    public static CollectionType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return new CollectionType(cls, this.f15882i, this.f15880g, this.f15881h, this.f15861n, null, null, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, this.f15861n, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[collection type; class " + this.f14354a.getName() + ", contains " + this.f15861n + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this.f15861n == javaType ? this : new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, javaType, this.f14356c, this.f14357d, this.f14358e);
    }

    protected CollectionType(TypeBase typeBase, JavaType javaType) {
        super(typeBase, javaType);
    }

    @Deprecated
    public static CollectionType construct(Class<?> cls, JavaType javaType) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length == 1) {
            emptyBindings = TypeBindings.create(cls, javaType);
        } else {
            emptyBindings = TypeBindings.emptyBindings();
        }
        return new CollectionType(cls, emptyBindings, TypeBase.d0(cls), null, javaType, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public CollectionType withContentTypeHandler(Object obj) {
        return new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withTypeHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public CollectionType withContentValueHandler(Object obj) {
        return new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withValueHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public CollectionType withStaticTyping() {
        return this.f14358e ? this : new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n.withStaticTyping(), this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public CollectionType withTypeHandler(Object obj) {
        return new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public CollectionType withValueHandler(Object obj) {
        return new CollectionType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15861n, obj, this.f14357d, this.f14358e);
    }
}
