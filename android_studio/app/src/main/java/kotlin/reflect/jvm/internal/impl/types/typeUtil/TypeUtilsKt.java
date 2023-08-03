package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.AbstractStubType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import m8.g;
import m8.h;

/* compiled from: TypeUtils.kt */
/* loaded from: classes4.dex */
public final class TypeUtilsKt {
    @g
    public static final TypeProjection asTypeProjection(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return new TypeProjectionImpl(kotlinType);
    }

    public static final boolean contains(@g KotlinType kotlinType, @g Function1<? super UnwrappedType, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return TypeUtils.contains(kotlinType, predicate);
    }

    private static final boolean containsSelfTypeParameter(KotlinType kotlinType, TypeConstructor typeConstructor, Set<? extends TypeParameterDescriptor> set) {
        Iterable<IndexedValue> withIndex;
        TypeParameterDescriptor typeParameterDescriptor;
        boolean z9;
        Object orNull;
        if (Intrinsics.areEqual(kotlinType.getConstructor(), typeConstructor)) {
            return true;
        }
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = declarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor : null;
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        withIndex = CollectionsKt___CollectionsKt.withIndex(kotlinType.getArguments());
        if (!(withIndex instanceof Collection) || !((Collection) withIndex).isEmpty()) {
            for (IndexedValue indexedValue : withIndex) {
                int component1 = indexedValue.component1();
                TypeProjection typeProjection = (TypeProjection) indexedValue.component2();
                if (declaredTypeParameters != null) {
                    orNull = CollectionsKt___CollectionsKt.getOrNull(declaredTypeParameters, component1);
                    typeParameterDescriptor = (TypeParameterDescriptor) orNull;
                } else {
                    typeParameterDescriptor = null;
                }
                if (((typeParameterDescriptor == null || set == null || !set.contains(typeParameterDescriptor)) ? false : true) || typeProjection.isStarProjection()) {
                    z9 = false;
                    continue;
                } else {
                    KotlinType type = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "argument.type");
                    z9 = containsSelfTypeParameter(type, typeConstructor, set);
                    continue;
                }
                if (z9) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean containsTypeAliasParameters(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$containsTypeAliasParameters$1.INSTANCE);
    }

    @g
    public static final TypeProjection createProjection(@g KotlinType type, @g Variance projectionKind, @h TypeParameterDescriptor typeParameterDescriptor) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(projectionKind, "projectionKind");
        if ((typeParameterDescriptor != null ? typeParameterDescriptor.getVariance() : null) == projectionKind) {
            projectionKind = Variance.INVARIANT;
        }
        return new TypeProjectionImpl(projectionKind, type);
    }

    @g
    public static final Set<TypeParameterDescriptor> extractTypeParametersFromUpperBounds(@g KotlinType kotlinType, @h Set<? extends TypeParameterDescriptor> set) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        extractTypeParametersFromUpperBounds(kotlinType, kotlinType, linkedHashSet, set);
        return linkedHashSet;
    }

    @g
    public static final KotlinBuiltIns getBuiltIns(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinBuiltIns builtIns = kotlinType.getConstructor().getBuiltIns();
        Intrinsics.checkNotNullExpressionValue(builtIns, "constructor.builtIns");
        return builtIns;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        r3 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051 A[EDGE_INSN: B:22:0x0051->B:18:0x0051 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0023  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final kotlin.reflect.jvm.internal.impl.types.KotlinType getRepresentativeUpperBound(@m8.g kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.List r0 = r7.getUpperBounds()
            java.lang.String r1 = "upperBounds"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r0.isEmpty()
            java.util.List r0 = r7.getUpperBounds()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.Iterator r0 = r0.iterator()
        L1c:
            boolean r2 = r0.hasNext()
            r3 = 0
            if (r2 == 0) goto L51
            java.lang.Object r2 = r0.next()
            r4 = r2
            kotlin.reflect.jvm.internal.impl.types.KotlinType r4 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r4
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r4 = r4.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r4 = r4.getDeclarationDescriptor()
            boolean r5 = r4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
            if (r5 == 0) goto L39
            r3 = r4
            kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor) r3
        L39:
            r4 = 0
            if (r3 != 0) goto L3d
            goto L4e
        L3d:
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = r3.getKind()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r6 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.INTERFACE
            if (r5 == r6) goto L4e
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r3 = r3.getKind()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.ANNOTATION_CLASS
            if (r3 == r5) goto L4e
            r4 = 1
        L4e:
            if (r4 == 0) goto L1c
            r3 = r2
        L51:
            kotlin.reflect.jvm.internal.impl.types.KotlinType r3 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r3
            if (r3 != 0) goto L68
            java.util.List r7 = r7.getUpperBounds()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            java.lang.Object r7 = kotlin.collections.CollectionsKt.first(r7)
            java.lang.String r0 = "upperBounds.first()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            r3 = r7
            kotlin.reflect.jvm.internal.impl.types.KotlinType r3 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r3
        L68:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt.getRepresentativeUpperBound(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor):kotlin.reflect.jvm.internal.impl.types.KotlinType");
    }

    @JvmOverloads
    public static final boolean hasTypeParameterRecursiveBounds(@g TypeParameterDescriptor typeParameter) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        return hasTypeParameterRecursiveBounds$default(typeParameter, null, null, 6, null);
    }

    @JvmOverloads
    public static final boolean hasTypeParameterRecursiveBounds(@g TypeParameterDescriptor typeParameter, @h TypeConstructor typeConstructor, @h Set<? extends TypeParameterDescriptor> set) {
        boolean z9;
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        List<KotlinType> upperBounds = typeParameter.getUpperBounds();
        Intrinsics.checkNotNullExpressionValue(upperBounds, "typeParameter.upperBounds");
        if (!(upperBounds instanceof Collection) || !upperBounds.isEmpty()) {
            for (KotlinType upperBound : upperBounds) {
                Intrinsics.checkNotNullExpressionValue(upperBound, "upperBound");
                if (containsSelfTypeParameter(upperBound, typeParameter.getDefaultType().getConstructor(), set) && (typeConstructor == null || Intrinsics.areEqual(upperBound.getConstructor(), typeConstructor))) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    return true;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ boolean hasTypeParameterRecursiveBounds$default(TypeParameterDescriptor typeParameterDescriptor, TypeConstructor typeConstructor, Set set, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            typeConstructor = null;
        }
        if ((i4 & 4) != 0) {
            set = null;
        }
        return hasTypeParameterRecursiveBounds(typeParameterDescriptor, typeConstructor, set);
    }

    public static final boolean isStubType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        if (!(kotlinType instanceof AbstractStubType)) {
            if (!((kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).getOriginal() instanceof AbstractStubType))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isStubTypeForBuilderInference(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        if (!(kotlinType instanceof StubTypeForBuilderInference)) {
            if (!((kotlinType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) kotlinType).getOriginal() instanceof StubTypeForBuilderInference))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isSubtypeOf(@g KotlinType kotlinType, @g KotlinType superType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(kotlinType, superType);
    }

    public static final boolean isTypeAliasParameter(@g ClassifierDescriptor classifierDescriptor) {
        Intrinsics.checkNotNullParameter(classifierDescriptor, "<this>");
        return (classifierDescriptor instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) classifierDescriptor).getContainingDeclaration() instanceof TypeAliasDescriptor);
    }

    public static final boolean isTypeParameter(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return TypeUtils.isTypeParameter(kotlinType);
    }

    public static final boolean isUnresolvedType(@g KotlinType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (type instanceof ErrorType) && ((ErrorType) type).getKind().isUnresolved();
    }

    @g
    public static final KotlinType makeNotNullable(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        Intrinsics.checkNotNullExpressionValue(makeNotNullable, "makeNotNullable(this)");
        return makeNotNullable;
    }

    @g
    public static final KotlinType makeNullable(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        KotlinType makeNullable = TypeUtils.makeNullable(kotlinType);
        Intrinsics.checkNotNullExpressionValue(makeNullable, "makeNullable(this)");
        return makeNullable;
    }

    @g
    public static final KotlinType replaceAnnotations(@g KotlinType kotlinType, @g Annotations newAnnotations) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(newAnnotations, "newAnnotations");
        return (kotlinType.getAnnotations().isEmpty() && newAnnotations.isEmpty()) ? kotlinType : kotlinType.unwrap().replaceAttributes(TypeAttributesKt.replaceAnnotations(kotlinType.getAttributes(), newAnnotations));
    }

    @g
    public static final KotlinType replaceArgumentsWithStarProjectionOrMapped(@g KotlinType kotlinType, @g TypeSubstitutor substitutor, @g Map<TypeConstructor, ? extends TypeProjection> substitutionMap, @g Variance variance, @h Set<? extends TypeParameterDescriptor> set) {
        UnwrappedType unwrappedType;
        int collectionSizeOrDefault;
        Object orNull;
        int collectionSizeOrDefault2;
        Object orNull2;
        int collectionSizeOrDefault3;
        Object orNull3;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        Intrinsics.checkNotNullParameter(substitutor, "substitutor");
        Intrinsics.checkNotNullParameter(substitutionMap, "substitutionMap");
        Intrinsics.checkNotNullParameter(variance, "variance");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            SimpleType lowerBound = flexibleType.getLowerBound();
            if (!lowerBound.getConstructor().getParameters().isEmpty() && lowerBound.getConstructor().getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters = lowerBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters, "constructor.parameters");
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
                for (TypeParameterDescriptor typeParameterDescriptor : parameters) {
                    orNull3 = CollectionsKt___CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor.getIndex());
                    TypeProjection typeProjection = (TypeProjection) orNull3;
                    if ((set != null && set.contains(typeParameterDescriptor)) || typeProjection == null || !substitutionMap.containsKey(typeProjection.getType().getConstructor())) {
                        typeProjection = new StarProjectionImpl(typeParameterDescriptor);
                    }
                    arrayList.add(typeProjection);
                }
                lowerBound = TypeSubstitutionKt.replace$default(lowerBound, arrayList, null, 2, null);
            }
            SimpleType upperBound = flexibleType.getUpperBound();
            if (!upperBound.getConstructor().getParameters().isEmpty() && upperBound.getConstructor().getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters2 = upperBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters2, "constructor.parameters");
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (TypeParameterDescriptor typeParameterDescriptor2 : parameters2) {
                    orNull2 = CollectionsKt___CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor2.getIndex());
                    TypeProjection typeProjection2 = (TypeProjection) orNull2;
                    if ((set != null && set.contains(typeParameterDescriptor2)) || typeProjection2 == null || !substitutionMap.containsKey(typeProjection2.getType().getConstructor())) {
                        typeProjection2 = new StarProjectionImpl(typeParameterDescriptor2);
                    }
                    arrayList2.add(typeProjection2);
                }
                upperBound = TypeSubstitutionKt.replace$default(upperBound, arrayList2, null, 2, null);
            }
            unwrappedType = KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        } else if (unwrap instanceof SimpleType) {
            SimpleType simpleType = (SimpleType) unwrap;
            if (simpleType.getConstructor().getParameters().isEmpty() || simpleType.getConstructor().getDeclarationDescriptor() == null) {
                unwrappedType = simpleType;
            } else {
                List<TypeParameterDescriptor> parameters3 = simpleType.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters3, "constructor.parameters");
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters3, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (TypeParameterDescriptor typeParameterDescriptor3 : parameters3) {
                    orNull = CollectionsKt___CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor3.getIndex());
                    TypeProjection typeProjection3 = (TypeProjection) orNull;
                    if ((set != null && set.contains(typeParameterDescriptor3)) || typeProjection3 == null || !substitutionMap.containsKey(typeProjection3.getType().getConstructor())) {
                        typeProjection3 = new StarProjectionImpl(typeParameterDescriptor3);
                    }
                    arrayList3.add(typeProjection3);
                }
                unwrappedType = TypeSubstitutionKt.replace$default(simpleType, arrayList3, null, 2, null);
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        KotlinType safeSubstitute = substitutor.safeSubstitute(TypeWithEnhancementKt.inheritEnhancement(unwrappedType, unwrap), variance);
        Intrinsics.checkNotNullExpressionValue(safeSubstitute, "replaceArgumentsByParame…ubstitute(it, variance) }");
        return safeSubstitute;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [kotlin.reflect.jvm.internal.impl.types.UnwrappedType] */
    @g
    public static final KotlinType replaceArgumentsWithStarProjections(@g KotlinType kotlinType) {
        int collectionSizeOrDefault;
        SimpleType simpleType;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) unwrap;
            SimpleType lowerBound = flexibleType.getLowerBound();
            if (!lowerBound.getConstructor().getParameters().isEmpty() && lowerBound.getConstructor().getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters = lowerBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters, "constructor.parameters");
                collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault3);
                for (TypeParameterDescriptor typeParameterDescriptor : parameters) {
                    arrayList.add(new StarProjectionImpl(typeParameterDescriptor));
                }
                lowerBound = TypeSubstitutionKt.replace$default(lowerBound, arrayList, null, 2, null);
            }
            SimpleType upperBound = flexibleType.getUpperBound();
            if (!upperBound.getConstructor().getParameters().isEmpty() && upperBound.getConstructor().getDeclarationDescriptor() != null) {
                List<TypeParameterDescriptor> parameters2 = upperBound.getConstructor().getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters2, "constructor.parameters");
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (TypeParameterDescriptor typeParameterDescriptor2 : parameters2) {
                    arrayList2.add(new StarProjectionImpl(typeParameterDescriptor2));
                }
                upperBound = TypeSubstitutionKt.replace$default(upperBound, arrayList2, null, 2, null);
            }
            simpleType = KotlinTypeFactory.flexibleType(lowerBound, upperBound);
        } else if (unwrap instanceof SimpleType) {
            SimpleType simpleType2 = (SimpleType) unwrap;
            boolean isEmpty = simpleType2.getConstructor().getParameters().isEmpty();
            simpleType = simpleType2;
            if (!isEmpty) {
                ClassifierDescriptor declarationDescriptor = simpleType2.getConstructor().getDeclarationDescriptor();
                simpleType = simpleType2;
                if (declarationDescriptor != null) {
                    List<TypeParameterDescriptor> parameters3 = simpleType2.getConstructor().getParameters();
                    Intrinsics.checkNotNullExpressionValue(parameters3, "constructor.parameters");
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters3, 10);
                    ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                    for (TypeParameterDescriptor typeParameterDescriptor3 : parameters3) {
                        arrayList3.add(new StarProjectionImpl(typeParameterDescriptor3));
                    }
                    simpleType = TypeSubstitutionKt.replace$default(simpleType2, arrayList3, null, 2, null);
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, unwrap);
    }

    public static final boolean requiresTypeAliasExpansion(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$requiresTypeAliasExpansion$1.INSTANCE);
    }

    public static final boolean shouldBeUpdated(@h KotlinType kotlinType) {
        return kotlinType == null || contains(kotlinType, TypeUtilsKt$shouldBeUpdated$1.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void extractTypeParametersFromUpperBounds(KotlinType kotlinType, KotlinType kotlinType2, Set<TypeParameterDescriptor> set, Set<? extends TypeParameterDescriptor> set2) {
        TypeParameterDescriptor typeParameterDescriptor;
        boolean contains;
        Object orNull;
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            if (!Intrinsics.areEqual(kotlinType.getConstructor(), kotlinType2.getConstructor())) {
                set.add(declarationDescriptor);
                return;
            }
            for (KotlinType upperBound : ((TypeParameterDescriptor) declarationDescriptor).getUpperBounds()) {
                Intrinsics.checkNotNullExpressionValue(upperBound, "upperBound");
                extractTypeParametersFromUpperBounds(upperBound, kotlinType2, set, set2);
            }
            return;
        }
        ClassifierDescriptor declarationDescriptor2 = kotlinType.getConstructor().getDeclarationDescriptor();
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = declarationDescriptor2 instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor2 : null;
        List<TypeParameterDescriptor> declaredTypeParameters = classifierDescriptorWithTypeParameters != null ? classifierDescriptorWithTypeParameters.getDeclaredTypeParameters() : null;
        int i4 = 0;
        for (TypeProjection typeProjection : kotlinType.getArguments()) {
            int i10 = i4 + 1;
            if (declaredTypeParameters != null) {
                orNull = CollectionsKt___CollectionsKt.getOrNull(declaredTypeParameters, i4);
                typeParameterDescriptor = (TypeParameterDescriptor) orNull;
            } else {
                typeParameterDescriptor = null;
            }
            if (!((typeParameterDescriptor == null || set2 == null || !set2.contains(typeParameterDescriptor)) ? false : true) && !typeProjection.isStarProjection()) {
                contains = CollectionsKt___CollectionsKt.contains(set, typeProjection.getType().getConstructor().getDeclarationDescriptor());
                if (!contains && !Intrinsics.areEqual(typeProjection.getType().getConstructor(), kotlinType2.getConstructor())) {
                    KotlinType type = typeProjection.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "argument.type");
                    extractTypeParametersFromUpperBounds(type, kotlinType2, set, set2);
                }
            }
            i4 = i10;
        }
    }
}
