package com.fasterxml.jackson.core.type;

/* compiled from: ResolvedType.java */
/* loaded from: classes.dex */
public abstract class a {
    public abstract a containedType(int i4);

    public abstract int containedTypeCount();

    public abstract String containedTypeName(int i4);

    public abstract a getContentType();

    public abstract a getKeyType();

    @Deprecated
    public Class<?> getParameterSource() {
        return null;
    }

    public abstract Class<?> getRawClass();

    public abstract a getReferencedType();

    public abstract boolean hasGenericTypes();

    public abstract boolean hasRawClass(Class<?> cls);

    public abstract boolean isAbstract();

    public abstract boolean isArrayType();

    public abstract boolean isCollectionLikeType();

    public abstract boolean isConcrete();

    public abstract boolean isContainerType();

    public abstract boolean isEnumType();

    public abstract boolean isFinal();

    public abstract boolean isInterface();

    public abstract boolean isMapLikeType();

    public abstract boolean isPrimitive();

    public boolean isReferenceType() {
        return getReferencedType() != null;
    }

    public abstract boolean isThrowable();

    public abstract String toCanonical();
}
