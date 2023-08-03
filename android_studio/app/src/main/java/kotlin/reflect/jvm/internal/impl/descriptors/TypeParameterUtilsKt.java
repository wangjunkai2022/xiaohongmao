package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
public final class TypeParameterUtilsKt {
    @h
    public static final PossiblyInnerType buildPossiblyInnerType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return buildPossiblyInnerType(kotlinType, declarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor : null, 0);
    }

    private static final CapturedTypeParameterDescriptor capturedCopyForInnerDeclaration(TypeParameterDescriptor typeParameterDescriptor, DeclarationDescriptor declarationDescriptor, int i4) {
        return new CapturedTypeParameterDescriptor(typeParameterDescriptor, declarationDescriptor, i4);
    }

    @g
    public static final List<TypeParameterDescriptor> computeConstructorTypeParameters(@g ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters) {
        Sequence takeWhile;
        Sequence filter;
        Sequence flatMap;
        List list;
        List<TypeParameterDescriptor> list2;
        DeclarationDescriptor declarationDescriptor;
        List<TypeParameterDescriptor> plus;
        int collectionSizeOrDefault;
        List<TypeParameterDescriptor> plus2;
        TypeConstructor typeConstructor;
        Intrinsics.checkNotNullParameter(classifierDescriptorWithTypeParameters, "<this>");
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
        Intrinsics.checkNotNullExpressionValue(declaredTypeParameters, "declaredTypeParameters");
        if (classifierDescriptorWithTypeParameters.isInner() || (classifierDescriptorWithTypeParameters.getContainingDeclaration() instanceof CallableDescriptor)) {
            takeWhile = SequencesKt___SequencesKt.takeWhile(DescriptorUtilsKt.getParents(classifierDescriptorWithTypeParameters), TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1.INSTANCE);
            filter = SequencesKt___SequencesKt.filter(takeWhile, TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$2.INSTANCE);
            flatMap = SequencesKt___SequencesKt.flatMap(filter, TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3.INSTANCE);
            list = SequencesKt___SequencesKt.toList(flatMap);
            Iterator<DeclarationDescriptor> it = DescriptorUtilsKt.getParents(classifierDescriptorWithTypeParameters).iterator();
            while (true) {
                list2 = null;
                if (!it.hasNext()) {
                    declarationDescriptor = null;
                    break;
                }
                declarationDescriptor = it.next();
                if (declarationDescriptor instanceof ClassDescriptor) {
                    break;
                }
            }
            ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptor;
            if (classDescriptor != null && (typeConstructor = classDescriptor.getTypeConstructor()) != null) {
                list2 = typeConstructor.getParameters();
            }
            if (list2 == null) {
                list2 = CollectionsKt__CollectionsKt.emptyList();
            }
            if (list.isEmpty() && list2.isEmpty()) {
                List<TypeParameterDescriptor> declaredTypeParameters2 = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
                Intrinsics.checkNotNullExpressionValue(declaredTypeParameters2, "declaredTypeParameters");
                return declaredTypeParameters2;
            }
            plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) list2);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(plus, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TypeParameterDescriptor it2 : plus) {
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                arrayList.add(capturedCopyForInnerDeclaration(it2, classifierDescriptorWithTypeParameters, declaredTypeParameters.size()));
            }
            plus2 = CollectionsKt___CollectionsKt.plus((Collection) declaredTypeParameters, (Iterable) arrayList);
            return plus2;
        }
        return declaredTypeParameters;
    }

    private static final PossiblyInnerType buildPossiblyInnerType(KotlinType kotlinType, ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, int i4) {
        if (classifierDescriptorWithTypeParameters == null || ErrorUtils.isError(classifierDescriptorWithTypeParameters)) {
            return null;
        }
        int size = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters().size() + i4;
        if (!classifierDescriptorWithTypeParameters.isInner()) {
            if (size != kotlinType.getArguments().size()) {
                DescriptorUtils.isLocal(classifierDescriptorWithTypeParameters);
            }
            return new PossiblyInnerType(classifierDescriptorWithTypeParameters, kotlinType.getArguments().subList(i4, kotlinType.getArguments().size()), null);
        }
        List<TypeProjection> subList = kotlinType.getArguments().subList(i4, size);
        DeclarationDescriptor containingDeclaration = classifierDescriptorWithTypeParameters.getContainingDeclaration();
        return new PossiblyInnerType(classifierDescriptorWithTypeParameters, subList, buildPossiblyInnerType(kotlinType, containingDeclaration instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) containingDeclaration : null, size));
    }
}
