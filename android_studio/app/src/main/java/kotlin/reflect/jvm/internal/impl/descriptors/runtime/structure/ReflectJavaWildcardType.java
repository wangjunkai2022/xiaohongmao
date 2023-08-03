package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaWildcardType.kt */
/* loaded from: classes4.dex */
public final class ReflectJavaWildcardType extends ReflectJavaType implements JavaWildcardType {
    @g
    private final Collection<JavaAnnotation> annotations;
    private final boolean isDeprecatedInJavaDoc;
    @g
    private final WildcardType reflectType;

    public ReflectJavaWildcardType(@g WildcardType reflectType) {
        List emptyList;
        Intrinsics.checkNotNullParameter(reflectType, "reflectType");
        this.reflectType = reflectType;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.annotations = emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    @g
    public Collection<JavaAnnotation> getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public boolean isDeprecatedInJavaDoc() {
        return this.isDeprecatedInJavaDoc;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType
    public boolean isExtends() {
        Object firstOrNull;
        Type[] upperBounds = getReflectType().getUpperBounds();
        Intrinsics.checkNotNullExpressionValue(upperBounds, "reflectType.upperBounds");
        firstOrNull = ArraysKt___ArraysKt.firstOrNull(upperBounds);
        return !Intrinsics.areEqual(firstOrNull, Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaWildcardType
    @h
    public ReflectJavaType getBound() {
        Object single;
        Object single2;
        Type[] upperBounds = getReflectType().getUpperBounds();
        Type[] lowerBounds = getReflectType().getLowerBounds();
        if (upperBounds.length <= 1 && lowerBounds.length <= 1) {
            if (lowerBounds.length == 1) {
                ReflectJavaType.Factory factory = ReflectJavaType.Factory;
                Intrinsics.checkNotNullExpressionValue(lowerBounds, "lowerBounds");
                single2 = ArraysKt___ArraysKt.single(lowerBounds);
                Intrinsics.checkNotNullExpressionValue(single2, "lowerBounds.single()");
                return factory.create((Type) single2);
            } else if (upperBounds.length == 1) {
                Intrinsics.checkNotNullExpressionValue(upperBounds, "upperBounds");
                single = ArraysKt___ArraysKt.single(upperBounds);
                Type ub = (Type) single;
                if (Intrinsics.areEqual(ub, Object.class)) {
                    return null;
                }
                ReflectJavaType.Factory factory2 = ReflectJavaType.Factory;
                Intrinsics.checkNotNullExpressionValue(ub, "ub");
                return factory2.create(ub);
            } else {
                return null;
            }
        }
        throw new UnsupportedOperationException("Wildcard types with many bounds are not yet supported: " + getReflectType());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    @g
    public WildcardType getReflectType() {
        return this.reflectType;
    }
}
