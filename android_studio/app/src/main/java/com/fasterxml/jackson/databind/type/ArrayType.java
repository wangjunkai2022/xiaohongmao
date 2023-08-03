package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class ArrayType extends TypeBase {

    /* renamed from: p  reason: collision with root package name */
    private static final long f15853p = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final JavaType f15854n;

    /* renamed from: o  reason: collision with root package name */
    protected final Object f15855o;

    protected ArrayType(JavaType javaType, TypeBindings typeBindings, Object obj, Object obj2, Object obj3, boolean z9) {
        super(obj.getClass(), typeBindings, null, null, javaType.hashCode(), obj2, obj3, z9);
        this.f15854n = javaType;
        this.f15855o = obj;
    }

    public static ArrayType construct(JavaType javaType, TypeBindings typeBindings) {
        return construct(javaType, typeBindings, null, null);
    }

    private JavaType h0() {
        throw new UnsupportedOperationException("Cannot narrow or widen array types");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        return h0();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == ArrayType.class) {
            return this.f15854n.equals(((ArrayType) obj).f15854n);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentTypeHandler() {
        return this.f15854n.getTypeHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentValueHandler() {
        return this.f15854n.getValueHandler();
    }

    public Object[] getEmptyArray() {
        return (Object[]) this.f15855o;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        sb.append('[');
        return this.f15854n.getErasedSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        sb.append('[');
        return this.f15854n.getGenericSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean hasGenericTypes() {
        return this.f15854n.hasGenericTypes();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasHandlers() {
        return super.hasHandlers() || this.f15854n.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isAbstract() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isArrayType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isConcrete() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[array type, component type: " + this.f15854n + "]";
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return new ArrayType(javaType, this.f15882i, Array.newInstance(javaType.getRawClass(), 0), this.f14356c, this.f14357d, this.f14358e);
    }

    public static ArrayType construct(JavaType javaType, TypeBindings typeBindings, Object obj, Object obj2) {
        return new ArrayType(javaType, typeBindings, Array.newInstance(javaType.getRawClass(), 0), obj, obj2, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public JavaType getContentType() {
        return this.f15854n;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public ArrayType withContentTypeHandler(Object obj) {
        return obj == this.f15854n.getTypeHandler() ? this : new ArrayType(this.f15854n.withTypeHandler(obj), this.f15882i, this.f15855o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public ArrayType withContentValueHandler(Object obj) {
        return obj == this.f15854n.getValueHandler() ? this : new ArrayType(this.f15854n.withValueHandler(obj), this.f15882i, this.f15855o, this.f14356c, this.f14357d, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public ArrayType withStaticTyping() {
        return this.f14358e ? this : new ArrayType(this.f15854n.withStaticTyping(), this.f15882i, this.f15855o, this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public ArrayType withTypeHandler(Object obj) {
        return obj == this.f14357d ? this : new ArrayType(this.f15854n, this.f15882i, this.f15855o, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public ArrayType withValueHandler(Object obj) {
        return obj == this.f14356c ? this : new ArrayType(this.f15854n, this.f15882i, this.f15855o, obj, this.f14357d, this.f14358e);
    }
}
