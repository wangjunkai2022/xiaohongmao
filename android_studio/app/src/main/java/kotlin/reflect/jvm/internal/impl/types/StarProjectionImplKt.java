package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import m8.g;
import m8.h;

/* compiled from: StarProjectionImpl.kt */
/* loaded from: classes4.dex */
public final class StarProjectionImplKt {
    private static final KotlinType buildStarProjectionTypeByTypeParameters(final List<? extends TypeConstructor> list, List<? extends KotlinType> list2, KotlinBuiltIns kotlinBuiltIns) {
        Object first;
        TypeSubstitutor create = TypeSubstitutor.create(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            @h
            public TypeProjection get(@g TypeConstructor key) {
                Intrinsics.checkNotNullParameter(key, "key");
                if (list.contains(key)) {
                    ClassifierDescriptor declarationDescriptor = key.getDeclarationDescriptor();
                    Intrinsics.checkNotNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
                    return TypeUtils.makeStarProjection((TypeParameterDescriptor) declarationDescriptor);
                }
                return null;
            }
        });
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list2);
        KotlinType substitute = create.substitute((KotlinType) first, Variance.OUT_VARIANCE);
        if (substitute == null) {
            substitute = kotlinBuiltIns.getDefaultBound();
        }
        Intrinsics.checkNotNullExpressionValue(substitute, "typeParameters: List<Typ… ?: builtIns.defaultBound");
        return substitute;
    }

    @g
    public static final KotlinType starProjectionType(@g TypeParameterDescriptor typeParameterDescriptor) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(typeParameterDescriptor, "<this>");
        DeclarationDescriptor containingDeclaration = typeParameterDescriptor.getContainingDeclaration();
        Intrinsics.checkNotNullExpressionValue(containingDeclaration, "this.containingDeclaration");
        if (containingDeclaration instanceof ClassifierDescriptorWithTypeParameters) {
            List<TypeParameterDescriptor> parameters = ((ClassifierDescriptorWithTypeParameters) containingDeclaration).getTypeConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "descriptor.typeConstructor.parameters");
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (TypeParameterDescriptor typeParameterDescriptor2 : parameters) {
                TypeConstructor typeConstructor = typeParameterDescriptor2.getTypeConstructor();
                Intrinsics.checkNotNullExpressionValue(typeConstructor, "it.typeConstructor");
                arrayList.add(typeConstructor);
            }
            List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
            Intrinsics.checkNotNullExpressionValue(upperBounds, "upperBounds");
            return buildStarProjectionTypeByTypeParameters(arrayList, upperBounds, DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor));
        } else if (containingDeclaration instanceof FunctionDescriptor) {
            List<TypeParameterDescriptor> typeParameters = ((FunctionDescriptor) containingDeclaration).getTypeParameters();
            Intrinsics.checkNotNullExpressionValue(typeParameters, "descriptor.typeParameters");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeParameters, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (TypeParameterDescriptor typeParameterDescriptor3 : typeParameters) {
                TypeConstructor typeConstructor2 = typeParameterDescriptor3.getTypeConstructor();
                Intrinsics.checkNotNullExpressionValue(typeConstructor2, "it.typeConstructor");
                arrayList2.add(typeConstructor2);
            }
            List<KotlinType> upperBounds2 = typeParameterDescriptor.getUpperBounds();
            Intrinsics.checkNotNullExpressionValue(upperBounds2, "upperBounds");
            return buildStarProjectionTypeByTypeParameters(arrayList2, upperBounds2, DescriptorUtilsKt.getBuiltIns(typeParameterDescriptor));
        } else {
            throw new IllegalArgumentException("Unsupported descriptor type to build star projection type based on type parameters of it");
        }
    }
}
