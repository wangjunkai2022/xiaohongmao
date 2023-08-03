package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaType.kt */
/* loaded from: classes4.dex */
public abstract class ReflectJavaType implements JavaType {
    @g
    public static final Factory Factory = new Factory(null);

    /* compiled from: ReflectJavaType.kt */
    /* loaded from: classes4.dex */
    public static final class Factory {
        private Factory() {
        }

        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final ReflectJavaType create(@g Type type) {
            ReflectJavaType reflectJavaArrayType;
            Intrinsics.checkNotNullParameter(type, "type");
            boolean z9 = type instanceof Class;
            if (z9) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new ReflectJavaPrimitiveType(cls);
                }
            }
            if (!(type instanceof GenericArrayType) && (!z9 || !((Class) type).isArray())) {
                reflectJavaArrayType = type instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) type) : new ReflectJavaClassifierType(type);
            } else {
                reflectJavaArrayType = new ReflectJavaArrayType(type);
            }
            return reflectJavaArrayType;
        }
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof ReflectJavaType) && Intrinsics.areEqual(getReflectType(), ((ReflectJavaType) obj).getReflectType());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @h
    public JavaAnnotation findAnnotation(@g FqName fqName) {
        return JavaType.DefaultImpls.findAnnotation(this, fqName);
    }

    @g
    protected abstract Type getReflectType();

    public int hashCode() {
        return getReflectType().hashCode();
    }

    @g
    public String toString() {
        return getClass().getName() + ": " + getReflectType();
    }
}
