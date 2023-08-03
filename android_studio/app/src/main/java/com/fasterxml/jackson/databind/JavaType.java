package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes.dex */
public abstract class JavaType extends com.fasterxml.jackson.core.type.a implements Serializable, Type {

    /* renamed from: f  reason: collision with root package name */
    private static final long f14353f = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final Class<?> f14354a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f14355b;

    /* renamed from: c  reason: collision with root package name */
    protected final Object f14356c;

    /* renamed from: d  reason: collision with root package name */
    protected final Object f14357d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f14358e;

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType(Class<?> cls, int i4, Object obj, Object obj2, boolean z9) {
        this.f14354a = cls;
        this.f14355b = cls.getName().hashCode() + i4;
        this.f14356c = obj;
        this.f14357d = obj2;
        this.f14358e = z9;
    }

    @Deprecated
    protected abstract JavaType c0(Class<?> cls);

    @Override // com.fasterxml.jackson.core.type.a
    public abstract JavaType containedType(int i4);

    @Override // com.fasterxml.jackson.core.type.a
    public abstract int containedTypeCount();

    @Override // com.fasterxml.jackson.core.type.a
    @Deprecated
    public abstract String containedTypeName(int i4);

    public JavaType containedTypeOrUnknown(int i4) {
        JavaType containedType = containedType(i4);
        return containedType == null ? TypeFactory.unknownType() : containedType;
    }

    public abstract boolean equals(Object obj);

    public abstract JavaType findSuperType(Class<?> cls);

    public abstract JavaType[] findTypeParameters(Class<?> cls);

    @Deprecated
    public JavaType forcedNarrowBy(Class<?> cls) {
        return cls == this.f14354a ? this : c0(cls);
    }

    public abstract TypeBindings getBindings();

    @Override // com.fasterxml.jackson.core.type.a
    public JavaType getContentType() {
        return null;
    }

    public Object getContentTypeHandler() {
        return null;
    }

    public Object getContentValueHandler() {
        return null;
    }

    public String getErasedSignature() {
        StringBuilder sb = new StringBuilder(40);
        getErasedSignature(sb);
        return sb.toString();
    }

    public abstract StringBuilder getErasedSignature(StringBuilder sb);

    public String getGenericSignature() {
        StringBuilder sb = new StringBuilder(40);
        getGenericSignature(sb);
        return sb.toString();
    }

    public abstract StringBuilder getGenericSignature(StringBuilder sb);

    public abstract List<JavaType> getInterfaces();

    @Override // com.fasterxml.jackson.core.type.a
    public JavaType getKeyType() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.type.a
    @Deprecated
    public Class<?> getParameterSource() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final Class<?> getRawClass() {
        return this.f14354a;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public JavaType getReferencedType() {
        return null;
    }

    public abstract JavaType getSuperClass();

    public <T> T getTypeHandler() {
        return (T) this.f14357d;
    }

    public <T> T getValueHandler() {
        return (T) this.f14356c;
    }

    public boolean hasContentType() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean hasGenericTypes() {
        return containedTypeCount() > 0;
    }

    public boolean hasHandlers() {
        return (this.f14357d == null && this.f14356c == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final boolean hasRawClass(Class<?> cls) {
        return this.f14354a == cls;
    }

    public boolean hasValueHandler() {
        return this.f14356c != null;
    }

    public final int hashCode() {
        return this.f14355b;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isAbstract() {
        return Modifier.isAbstract(this.f14354a.getModifiers());
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isArrayType() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isCollectionLikeType() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isConcrete() {
        if ((this.f14354a.getModifiers() & 1536) == 0) {
            return true;
        }
        return this.f14354a.isPrimitive();
    }

    @Override // com.fasterxml.jackson.core.type.a
    public abstract boolean isContainerType();

    public final boolean isEnumImplType() {
        return com.fasterxml.jackson.databind.util.g.X(this.f14354a) && this.f14354a != Enum.class;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final boolean isEnumType() {
        return com.fasterxml.jackson.databind.util.g.X(this.f14354a);
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final boolean isFinal() {
        return Modifier.isFinal(this.f14354a.getModifiers());
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final boolean isInterface() {
        return this.f14354a.isInterface();
    }

    public final boolean isJavaLangObject() {
        return this.f14354a == Object.class;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isMapLikeType() {
        return false;
    }

    @Override // com.fasterxml.jackson.core.type.a
    public final boolean isPrimitive() {
        return this.f14354a.isPrimitive();
    }

    public final boolean isRecordType() {
        return com.fasterxml.jackson.databind.util.g.f0(this.f14354a);
    }

    @Override // com.fasterxml.jackson.core.type.a
    public boolean isThrowable() {
        return Throwable.class.isAssignableFrom(this.f14354a);
    }

    public final boolean isTypeOrSubTypeOf(Class<?> cls) {
        Class<?> cls2 = this.f14354a;
        return cls2 == cls || cls.isAssignableFrom(cls2);
    }

    public final boolean isTypeOrSuperTypeOf(Class<?> cls) {
        Class<?> cls2 = this.f14354a;
        return cls2 == cls || cls2.isAssignableFrom(cls);
    }

    public abstract JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr);

    public abstract String toString();

    public final boolean useStaticType() {
        return this.f14358e;
    }

    public abstract JavaType withContentType(JavaType javaType);

    public abstract JavaType withContentTypeHandler(Object obj);

    public abstract JavaType withContentValueHandler(Object obj);

    public JavaType withHandlersFrom(JavaType javaType) {
        Object typeHandler = javaType.getTypeHandler();
        JavaType withTypeHandler = typeHandler != this.f14357d ? withTypeHandler(typeHandler) : this;
        Object valueHandler = javaType.getValueHandler();
        return valueHandler != this.f14356c ? withTypeHandler.withValueHandler(valueHandler) : withTypeHandler;
    }

    public abstract JavaType withStaticTyping();

    public abstract JavaType withTypeHandler(Object obj);

    public abstract JavaType withValueHandler(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType(JavaType javaType) {
        this.f14354a = javaType.f14354a;
        this.f14355b = javaType.f14355b;
        this.f14356c = javaType.f14356c;
        this.f14357d = javaType.f14357d;
        this.f14358e = javaType.f14358e;
    }
}
