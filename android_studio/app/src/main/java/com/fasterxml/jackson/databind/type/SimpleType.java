package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class SimpleType extends TypeBase {

    /* renamed from: n  reason: collision with root package name */
    private static final long f15876n = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleType(Class<?> cls) {
        this(cls, TypeBindings.emptyBindings(), null, null);
    }

    @Deprecated
    public static SimpleType construct(Class<?> cls) {
        if (!Map.class.isAssignableFrom(cls)) {
            if (!Collection.class.isAssignableFrom(cls)) {
                if (!cls.isArray()) {
                    TypeBindings emptyBindings = TypeBindings.emptyBindings();
                    return new SimpleType(cls, emptyBindings, h0(cls.getSuperclass(), emptyBindings), null, null, null, false);
                }
                throw new IllegalArgumentException("Cannot construct SimpleType for an array (class: " + cls.getName() + ")");
            }
            throw new IllegalArgumentException("Cannot construct SimpleType for a Collection (class: " + cls.getName() + ")");
        }
        throw new IllegalArgumentException("Cannot construct SimpleType for a Map (class: " + cls.getName() + ")");
    }

    public static SimpleType constructUnsafe(Class<?> cls) {
        return new SimpleType(cls, null, null, null, null, null, false);
    }

    private static JavaType h0(Class<?> cls, TypeBindings typeBindings) {
        if (cls == null) {
            return null;
        }
        if (cls == Object.class) {
            return TypeFactory.unknownType();
        }
        return new SimpleType(cls, typeBindings, h0(cls.getSuperclass(), typeBindings), null, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType c0(Class<?> cls) {
        Class<?>[] interfaces;
        Class<?> cls2 = this.f14354a;
        if (cls2 == cls) {
            return this;
        }
        if (!cls2.isAssignableFrom(cls)) {
            return new SimpleType(cls, this.f15882i, this, this.f15881h, this.f14356c, this.f14357d, this.f14358e);
        }
        Class<? super Object> superclass = cls.getSuperclass();
        Class<?> cls3 = this.f14354a;
        if (superclass == cls3) {
            return new SimpleType(cls, this.f15882i, this, this.f15881h, this.f14356c, this.f14357d, this.f14358e);
        }
        if (superclass != null && cls3.isAssignableFrom(superclass)) {
            return new SimpleType(cls, this.f15882i, c0(superclass), null, this.f14356c, this.f14357d, this.f14358e);
        }
        for (Class<?> cls4 : cls.getInterfaces()) {
            Class<?> cls5 = this.f14354a;
            if (cls4 == cls5) {
                return new SimpleType(cls, this.f15882i, null, new JavaType[]{this}, this.f14356c, this.f14357d, this.f14358e);
            }
            if (cls5.isAssignableFrom(cls4)) {
                return new SimpleType(cls, this.f15882i, null, new JavaType[]{c0(cls4)}, this.f14356c, this.f14357d, this.f14358e);
            }
        }
        throw new IllegalArgumentException("Internal error: Cannot resolve sub-type for Class " + cls.getName() + " to " + this.f14354a.getName());
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            SimpleType simpleType = (SimpleType) obj;
            if (simpleType.f14354a != this.f14354a) {
                return false;
            }
            return this.f15882i.equals(simpleType.f15882i);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String g0() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14354a.getName());
        int size = this.f15882i.size();
        if (size > 0 && f0(size)) {
            sb.append(Typography.less);
            for (int i4 = 0; i4 < size; i4++) {
                JavaType containedType = containedType(i4);
                if (i4 > 0) {
                    sb.append(',');
                }
                sb.append(containedType.toCanonical());
            }
            sb.append(Typography.greater);
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return TypeBase.e0(this.f14354a, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase.e0(this.f14354a, sb, false);
        int size = this.f15882i.size();
        if (size > 0) {
            sb.append(Typography.less);
            for (int i4 = 0; i4 < size; i4++) {
                sb = containedType(i4).getGenericSignature(sb);
            }
            sb.append(Typography.greater);
        }
        sb.append(';');
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasContentType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.a
    public boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ");
        sb.append(g0());
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContentType()");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentTypeHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenTypeHandler()");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        this(cls, typeBindings, javaType, javaTypeArr, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withContentValueHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; cannot call withContenValueHandler()");
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withStaticTyping() {
        return this.f14358e ? this : new SimpleType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f14356c, this.f14357d, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withTypeHandler(Object obj) {
        return this.f14357d == obj ? this : new SimpleType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, this.f14356c, obj, this.f14358e);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public SimpleType withValueHandler(Object obj) {
        return obj == this.f14356c ? this : new SimpleType(this.f14354a, this.f15882i, this.f15880g, this.f15881h, obj, this.f14357d, this.f14358e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleType(TypeBase typeBase) {
        super(typeBase);
    }

    protected SimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, 0, obj, obj2, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, int i4, Object obj, Object obj2, boolean z9) {
        super(cls, typeBindings, javaType, javaTypeArr, i4, obj, obj2, z9);
    }
}
