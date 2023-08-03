package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;

/* loaded from: classes2.dex */
public final class MapType extends MapLikeType {

    /* renamed from: q  reason: collision with root package name */
    private static final long f15867q = 1;

    private MapType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, JavaType javaType3, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2, javaType3, obj, obj2, z9);
    }

    public static MapType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, JavaType javaType3) {
        return new MapType(cls, typeBindings, javaType, javaTypeArr, javaType2, javaType3, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return new MapType(cls, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new MapType(cls, typeBindings, javaType, javaTypeArr, this.f15865n, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[map type; class " + this.f14354a.getName() + ", " + this.f15865n + " -> " + this.f15866o + "]";
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this.f15866o == javaType ? this : new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, javaType, this.f14356c, this.f14357d, this.f14358e);
    }

    protected MapType(TypeBase typeBase, JavaType javaType, JavaType javaType2) {
        super(typeBase, javaType, javaType2);
    }

    @Deprecated
    public static MapType construct(Class<?> cls, JavaType javaType, JavaType javaType2) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length == 2) {
            emptyBindings = TypeBindings.create(cls, javaType, javaType2);
        } else {
            emptyBindings = TypeBindings.emptyBindings();
        }
        return new MapType(cls, emptyBindings, TypeBase.d0(cls), null, javaType, javaType2, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType
    public MapType withKeyType(JavaType javaType) {
        return javaType == this.f15865n ? this : new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, javaType, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType
    public MapType withKeyTypeHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n.withTypeHandler(obj), this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType
    public MapType withKeyValueHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n.withValueHandler(obj), this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public MapType withContentTypeHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o.withTypeHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public MapType withContentValueHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o.withValueHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public MapType withStaticTyping() {
        return this.f14358e ? this : new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n.withStaticTyping(), this.f15866o.withStaticTyping(), this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public MapType withTypeHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.type.MapLikeType, com.fasterxml.jackson.databind.JavaType
    public MapType withValueHandler(Object obj) {
        return new MapType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, obj, this.f14357d, this.f14358e);
    }
}
