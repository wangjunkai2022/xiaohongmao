package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMapper;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
import m8.g;

/* compiled from: typeEnhancement.kt */
/* loaded from: classes4.dex */
public final class TypeEnhancementKt {
    @g
    private static final EnhancedTypeAnnotations ENHANCED_MUTABILITY_ANNOTATIONS;
    @g
    private static final EnhancedTypeAnnotations ENHANCED_NULLABILITY_ANNOTATIONS;

    /* compiled from: typeEnhancement.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NullabilityQualifier.values().length];
            iArr[NullabilityQualifier.NULLABLE.ordinal()] = 1;
            iArr[NullabilityQualifier.NOT_NULL.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        FqName ENHANCED_NULLABILITY_ANNOTATION = JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION;
        Intrinsics.checkNotNullExpressionValue(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        ENHANCED_NULLABILITY_ANNOTATIONS = new EnhancedTypeAnnotations(ENHANCED_NULLABILITY_ANNOTATION);
        FqName ENHANCED_MUTABILITY_ANNOTATION = JvmAnnotationNames.ENHANCED_MUTABILITY_ANNOTATION;
        Intrinsics.checkNotNullExpressionValue(ENHANCED_MUTABILITY_ANNOTATION, "ENHANCED_MUTABILITY_ANNOTATION");
        ENHANCED_MUTABILITY_ANNOTATIONS = new EnhancedTypeAnnotations(ENHANCED_MUTABILITY_ANNOTATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Annotations compositeAnnotationsOrSingle(List<? extends Annotations> list) {
        Object single;
        List list2;
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                list2 = CollectionsKt___CollectionsKt.toList(list);
                return new CompositeAnnotations(list2);
            }
            single = CollectionsKt___CollectionsKt.single((List<? extends Object>) list);
            return (Annotations) single;
        }
        throw new IllegalStateException("At least one Annotations object expected".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassifierDescriptor enhanceMutability(ClassifierDescriptor classifierDescriptor, JavaTypeQualifiers javaTypeQualifiers, TypeComponentPosition typeComponentPosition) {
        JavaToKotlinClassMapper javaToKotlinClassMapper = JavaToKotlinClassMapper.INSTANCE;
        if (TypeComponentPositionKt.shouldEnhance(typeComponentPosition) && (classifierDescriptor instanceof ClassDescriptor)) {
            if (javaTypeQualifiers.getMutability() == MutabilityQualifier.READ_ONLY && typeComponentPosition == TypeComponentPosition.FLEXIBLE_LOWER) {
                ClassDescriptor classDescriptor = (ClassDescriptor) classifierDescriptor;
                if (javaToKotlinClassMapper.isMutable(classDescriptor)) {
                    return javaToKotlinClassMapper.convertMutableToReadOnly(classDescriptor);
                }
            }
            if (javaTypeQualifiers.getMutability() == MutabilityQualifier.MUTABLE && typeComponentPosition == TypeComponentPosition.FLEXIBLE_UPPER) {
                ClassDescriptor classDescriptor2 = (ClassDescriptor) classifierDescriptor;
                if (javaToKotlinClassMapper.isReadOnly(classDescriptor2)) {
                    return javaToKotlinClassMapper.convertReadOnlyToMutable(classDescriptor2);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean getEnhancedNullability(JavaTypeQualifiers javaTypeQualifiers, TypeComponentPosition typeComponentPosition) {
        if (TypeComponentPositionKt.shouldEnhance(typeComponentPosition)) {
            NullabilityQualifier nullability = javaTypeQualifiers.getNullability();
            int i4 = nullability == null ? -1 : WhenMappings.$EnumSwitchMapping$0[nullability.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    return null;
                }
                return Boolean.FALSE;
            }
            return Boolean.TRUE;
        }
        return null;
    }

    public static final boolean hasEnhancedNullability(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return TypeEnhancementUtilsKt.hasEnhancedNullability(SimpleClassicTypeSystemContext.INSTANCE, kotlinType);
    }
}
