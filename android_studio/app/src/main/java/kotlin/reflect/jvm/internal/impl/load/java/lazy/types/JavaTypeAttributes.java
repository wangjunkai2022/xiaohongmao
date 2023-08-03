package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;
import m8.h;

/* compiled from: JavaTypeResolver.kt */
/* loaded from: classes4.dex */
public final class JavaTypeAttributes {
    @h
    private final SimpleType defaultType;
    @g
    private final JavaTypeFlexibility flexibility;
    @g
    private final TypeUsage howThisTypeIsUsed;
    private final boolean isForAnnotationParameter;
    @h
    private final Set<TypeParameterDescriptor> visitedTypeParameters;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeAttributes(@g TypeUsage howThisTypeIsUsed, @g JavaTypeFlexibility flexibility, boolean z9, @h Set<? extends TypeParameterDescriptor> set, @h SimpleType simpleType) {
        Intrinsics.checkNotNullParameter(howThisTypeIsUsed, "howThisTypeIsUsed");
        Intrinsics.checkNotNullParameter(flexibility, "flexibility");
        this.howThisTypeIsUsed = howThisTypeIsUsed;
        this.flexibility = flexibility;
        this.isForAnnotationParameter = z9;
        this.visitedTypeParameters = set;
        this.defaultType = simpleType;
    }

    public static /* synthetic */ JavaTypeAttributes copy$default(JavaTypeAttributes javaTypeAttributes, TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z9, Set set, SimpleType simpleType, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            typeUsage = javaTypeAttributes.howThisTypeIsUsed;
        }
        if ((i4 & 2) != 0) {
            javaTypeFlexibility = javaTypeAttributes.flexibility;
        }
        JavaTypeFlexibility javaTypeFlexibility2 = javaTypeFlexibility;
        if ((i4 & 4) != 0) {
            z9 = javaTypeAttributes.isForAnnotationParameter;
        }
        boolean z10 = z9;
        Set<TypeParameterDescriptor> set2 = set;
        if ((i4 & 8) != 0) {
            set2 = javaTypeAttributes.visitedTypeParameters;
        }
        Set set3 = set2;
        if ((i4 & 16) != 0) {
            simpleType = javaTypeAttributes.defaultType;
        }
        return javaTypeAttributes.copy(typeUsage, javaTypeFlexibility2, z10, set3, simpleType);
    }

    @g
    public final JavaTypeAttributes copy(@g TypeUsage howThisTypeIsUsed, @g JavaTypeFlexibility flexibility, boolean z9, @h Set<? extends TypeParameterDescriptor> set, @h SimpleType simpleType) {
        Intrinsics.checkNotNullParameter(howThisTypeIsUsed, "howThisTypeIsUsed");
        Intrinsics.checkNotNullParameter(flexibility, "flexibility");
        return new JavaTypeAttributes(howThisTypeIsUsed, flexibility, z9, set, simpleType);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JavaTypeAttributes) {
            JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj;
            return this.howThisTypeIsUsed == javaTypeAttributes.howThisTypeIsUsed && this.flexibility == javaTypeAttributes.flexibility && this.isForAnnotationParameter == javaTypeAttributes.isForAnnotationParameter && Intrinsics.areEqual(this.visitedTypeParameters, javaTypeAttributes.visitedTypeParameters) && Intrinsics.areEqual(this.defaultType, javaTypeAttributes.defaultType);
        }
        return false;
    }

    @h
    public final SimpleType getDefaultType() {
        return this.defaultType;
    }

    @g
    public final JavaTypeFlexibility getFlexibility() {
        return this.flexibility;
    }

    @g
    public final TypeUsage getHowThisTypeIsUsed() {
        return this.howThisTypeIsUsed;
    }

    @h
    public final Set<TypeParameterDescriptor> getVisitedTypeParameters() {
        return this.visitedTypeParameters;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.howThisTypeIsUsed.hashCode() * 31) + this.flexibility.hashCode()) * 31;
        boolean z9 = this.isForAnnotationParameter;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode + i4) * 31;
        Set<TypeParameterDescriptor> set = this.visitedTypeParameters;
        int hashCode2 = (i10 + (set == null ? 0 : set.hashCode())) * 31;
        SimpleType simpleType = this.defaultType;
        return hashCode2 + (simpleType != null ? simpleType.hashCode() : 0);
    }

    public final boolean isForAnnotationParameter() {
        return this.isForAnnotationParameter;
    }

    @g
    public String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.howThisTypeIsUsed + ", flexibility=" + this.flexibility + ", isForAnnotationParameter=" + this.isForAnnotationParameter + ", visitedTypeParameters=" + this.visitedTypeParameters + ", defaultType=" + this.defaultType + ')';
    }

    @g
    public final JavaTypeAttributes withDefaultType(@h SimpleType simpleType) {
        return copy$default(this, null, null, false, null, simpleType, 15, null);
    }

    @g
    public final JavaTypeAttributes withFlexibility(@g JavaTypeFlexibility flexibility) {
        Intrinsics.checkNotNullParameter(flexibility, "flexibility");
        return copy$default(this, null, flexibility, false, null, null, 29, null);
    }

    @g
    public final JavaTypeAttributes withNewVisitedTypeParameter(@g TypeParameterDescriptor typeParameter) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Set<TypeParameterDescriptor> set = this.visitedTypeParameters;
        return copy$default(this, null, null, false, set != null ? SetsKt___SetsKt.plus(set, typeParameter) : SetsKt__SetsJVMKt.setOf(typeParameter), null, 23, null);
    }

    public /* synthetic */ JavaTypeAttributes(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z9, Set set, SimpleType simpleType, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeUsage, (i4 & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i4 & 4) != 0 ? false : z9, (i4 & 8) != 0 ? null : set, (i4 & 16) != 0 ? null : simpleType);
    }
}
