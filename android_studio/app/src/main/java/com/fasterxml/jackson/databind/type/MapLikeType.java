package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class MapLikeType extends TypeBase {

    /* renamed from: p  reason: collision with root package name */
    private static final long f15864p = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final JavaType f15865n;

    /* renamed from: o  reason: collision with root package name */
    protected final JavaType f15866o;

    /* JADX INFO: Access modifiers changed from: protected */
    public MapLikeType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, JavaType javaType3, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2.hashCode() ^ javaType3.hashCode(), obj, obj2, z9);
        this.f15865n = javaType2;
        this.f15866o = javaType3;
    }

    @Deprecated
    public static MapLikeType construct(Class<?> cls, JavaType javaType, JavaType javaType2) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length == 2) {
            emptyBindings = TypeBindings.create(cls, javaType, javaType2);
        } else {
            emptyBindings = TypeBindings.emptyBindings();
        }
        return new MapLikeType(cls, emptyBindings, TypeBase.d0(cls), null, javaType, javaType2, null, null, false);
    }

    public static MapLikeType upgradeFrom(JavaType javaType, JavaType javaType2, JavaType javaType3) {
        if (javaType instanceof TypeBase) {
            return new MapLikeType((TypeBase) javaType, javaType2, javaType3);
        }
        throw new IllegalArgumentException("Cannot upgrade from an instance of " + javaType.getClass());
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return new MapLikeType(cls, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            MapLikeType mapLikeType = (MapLikeType) obj;
            return this.f14354a == mapLikeType.f14354a && this.f15865n.equals(mapLikeType.f15865n) && this.f15866o.equals(mapLikeType.f15866o);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String g0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14354a.getName());
        if (this.f15865n != null && f0(2)) {
            sb.append(Typography.less);
            sb.append(this.f15865n.toCanonical());
            sb.append(',');
            sb.append(this.f15866o.toCanonical());
            sb.append(Typography.greater);
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentTypeHandler() {
        return this.f15866o.getTypeHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentValueHandler() {
        return this.f15866o.getValueHandler();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return TypeBase.e0(this.f14354a, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase.e0(this.f14354a, sb, false);
        sb.append(Typography.less);
        this.f15865n.getGenericSignature(sb);
        this.f15866o.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasHandlers() {
        return super.hasHandlers() || this.f15866o.hasHandlers() || this.f15865n.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isMapLikeType() {
        return true;
    }

    @Deprecated
    public boolean isTrueMapType() {
        return Map.class.isAssignableFrom(this.f14354a);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new MapLikeType(cls, typeBindings, javaType, javaTypeArr, this.f15865n, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return String.format("[map-like type; class %s, %s -> %s]", this.f14354a.getName(), this.f15865n, this.f15866o);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this.f15866o == javaType ? this : new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, javaType, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withHandlersFrom(JavaType javaType) {
        JavaType withHandlersFrom;
        JavaType withHandlersFrom2;
        JavaType withHandlersFrom3 = super.withHandlersFrom(javaType);
        JavaType keyType = javaType.getKeyType();
        if ((withHandlersFrom3 instanceof MapLikeType) && keyType != null && (withHandlersFrom2 = this.f15865n.withHandlersFrom(keyType)) != this.f15865n) {
            withHandlersFrom3 = ((MapLikeType) withHandlersFrom3).withKeyType(withHandlersFrom2);
        }
        JavaType contentType = javaType.getContentType();
        return (contentType == null || (withHandlersFrom = this.f15866o.withHandlersFrom(contentType)) == this.f15866o) ? withHandlersFrom3 : withHandlersFrom3.withContentType(withHandlersFrom);
    }

    public MapLikeType withKeyType(JavaType javaType) {
        return javaType == this.f15865n ? this : new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, javaType, this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    public MapLikeType withKeyTypeHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n.withTypeHandler(obj), this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    public MapLikeType withKeyValueHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n.withValueHandler(obj), this.f15866o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getContentType() {
        return this.f15866o;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getKeyType() {
        return this.f15865n;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public MapLikeType withContentTypeHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o.withTypeHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public MapLikeType withContentValueHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o.withValueHandler(obj), this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public MapLikeType withStaticTyping() {
        return this.f14358e ? this : new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o.withStaticTyping(), this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public MapLikeType withTypeHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public MapLikeType withValueHandler(Object obj) {
        return new MapLikeType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f15865n, this.f15866o, obj, this.f14357d, this.f14358e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapLikeType(TypeBase typeBase, JavaType javaType, JavaType javaType2) {
        super(typeBase);
        this.f15865n = javaType;
        this.f15866o = javaType2;
    }
}
