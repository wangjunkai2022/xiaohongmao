package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import m8.g;
import m8.h;

/* compiled from: AbstractTypeChecker.kt */
/* loaded from: classes4.dex */
public final class AbstractTypeChecker {
    @g
    public static final AbstractTypeChecker INSTANCE = new AbstractTypeChecker();
    @JvmField
    public static boolean RUN_SLOW_ASSERTIONS;

    /* compiled from: AbstractTypeChecker.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            iArr[TypeVariance.INV.ordinal()] = 1;
            iArr[TypeVariance.OUT.ordinal()] = 2;
            iArr[TypeVariance.IN.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TypeCheckerState.LowerCapturedTypePolicy.values().length];
            iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_ONLY_LOWER.ordinal()] = 1;
            iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()] = 2;
            iArr2[TypeCheckerState.LowerCapturedTypePolicy.SKIP_LOWER.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private AbstractTypeChecker() {
    }

    private final Boolean checkSubtypeForIntegerLiteralType(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (typeSystemContext.isIntegerLiteralType(simpleTypeMarker) || typeSystemContext.isIntegerLiteralType(simpleTypeMarker2)) {
            if (m1367xf548d55f(typeSystemContext, simpleTypeMarker) && m1367xf548d55f(typeSystemContext, simpleTypeMarker2)) {
                return Boolean.TRUE;
            }
            if (typeSystemContext.isIntegerLiteralType(simpleTypeMarker)) {
                if (m1368xd35c7e25(typeSystemContext, typeCheckerState, simpleTypeMarker, simpleTypeMarker2, false)) {
                    return Boolean.TRUE;
                }
            } else if (typeSystemContext.isIntegerLiteralType(simpleTypeMarker2) && (m1366xabd2962a(typeSystemContext, simpleTypeMarker) || m1368xd35c7e25(typeSystemContext, typeCheckerState, simpleTypeMarker2, simpleTypeMarker, true))) {
                return Boolean.TRUE;
            }
            return null;
        }
        return null;
    }

    /* renamed from: checkSubtypeForIntegerLiteralType$lambda-7$isCapturedIntegerLiteralType */
    private static final boolean m1365xab3e6984(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        if (simpleTypeMarker instanceof CapturedTypeMarker) {
            TypeArgumentMarker projection = typeSystemContext.projection(typeSystemContext.typeConstructor((CapturedTypeMarker) simpleTypeMarker));
            return !typeSystemContext.isStarProjection(projection) && typeSystemContext.isIntegerLiteralType(typeSystemContext.upperBoundIfFlexible(typeSystemContext.getType(projection)));
        }
        return false;
    }

    /* renamed from: checkSubtypeForIntegerLiteralType$lambda-7$isIntegerLiteralTypeInIntersectionComponents */
    private static final boolean m1366xabd2962a(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        boolean z9;
        boolean z10;
        TypeConstructorMarker typeConstructor = typeSystemContext.typeConstructor(simpleTypeMarker);
        if (typeConstructor instanceof IntersectionTypeConstructorMarker) {
            Collection<KotlinTypeMarker> supertypes = typeSystemContext.supertypes(typeConstructor);
            if (!(supertypes instanceof Collection) || !supertypes.isEmpty()) {
                for (KotlinTypeMarker kotlinTypeMarker : supertypes) {
                    SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(kotlinTypeMarker);
                    if (asSimpleType == null || !typeSystemContext.isIntegerLiteralType(asSimpleType)) {
                        z9 = false;
                        continue;
                    } else {
                        z9 = true;
                        continue;
                    }
                    if (z9) {
                        z10 = true;
                        break;
                    }
                }
            }
            z10 = false;
            if (z10) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: checkSubtypeForIntegerLiteralType$lambda-7$isIntegerLiteralTypeOrCapturedOne */
    private static final boolean m1367xf548d55f(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        return typeSystemContext.isIntegerLiteralType(simpleTypeMarker) || m1365xab3e6984(typeSystemContext, simpleTypeMarker);
    }

    /* renamed from: checkSubtypeForIntegerLiteralType$lambda-7$isTypeInIntegerLiteralType */
    private static final boolean m1368xd35c7e25(TypeSystemContext typeSystemContext, TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2, boolean z9) {
        boolean z10;
        Collection<KotlinTypeMarker> possibleIntegerTypes = typeSystemContext.possibleIntegerTypes(simpleTypeMarker);
        if (!(possibleIntegerTypes instanceof Collection) || !possibleIntegerTypes.isEmpty()) {
            for (KotlinTypeMarker kotlinTypeMarker : possibleIntegerTypes) {
                if (Intrinsics.areEqual(typeSystemContext.typeConstructor(kotlinTypeMarker), typeSystemContext.typeConstructor(simpleTypeMarker2)) || (z9 && isSubtypeOf$default(INSTANCE, typeCheckerState, simpleTypeMarker2, kotlinTypeMarker, false, 8, null))) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:188:0x0127, code lost:
        if (r10 != false) goto L76;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.Boolean checkSubtypeForSpecialCases(kotlin.reflect.jvm.internal.impl.types.TypeCheckerState r15, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r16, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r17) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker.checkSubtypeForSpecialCases(kotlin.reflect.jvm.internal.impl.types.TypeCheckerState, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker):java.lang.Boolean");
    }

    private final List<SimpleTypeMarker> collectAllSupertypesWithGivenTypeConstructor(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        String joinToString$default;
        TypeCheckerState.SupertypesPolicy substitutionSupertypePolicy;
        List<SimpleTypeMarker> emptyList;
        List<SimpleTypeMarker> listOf;
        List<SimpleTypeMarker> emptyList2;
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        List<SimpleTypeMarker> fastCorrespondingSupertypes = typeSystemContext.fastCorrespondingSupertypes(simpleTypeMarker, typeConstructorMarker);
        if (fastCorrespondingSupertypes != null) {
            return fastCorrespondingSupertypes;
        }
        if (!typeSystemContext.isClassTypeConstructor(typeConstructorMarker) && typeSystemContext.isClassType(simpleTypeMarker)) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        } else if (typeSystemContext.isCommonFinalClassConstructor(typeConstructorMarker)) {
            if (typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(simpleTypeMarker), typeConstructorMarker)) {
                SimpleTypeMarker captureFromArguments = typeSystemContext.captureFromArguments(simpleTypeMarker, CaptureStatus.FOR_SUBTYPING);
                if (captureFromArguments != null) {
                    simpleTypeMarker = captureFromArguments;
                }
                listOf = CollectionsKt__CollectionsJVMKt.listOf(simpleTypeMarker);
                return listOf;
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else {
            SmartList smartList = new SmartList();
            typeCheckerState.initialize();
            ArrayDeque<SimpleTypeMarker> supertypesDeque = typeCheckerState.getSupertypesDeque();
            Intrinsics.checkNotNull(supertypesDeque);
            Set<SimpleTypeMarker> supertypesSet = typeCheckerState.getSupertypesSet();
            Intrinsics.checkNotNull(supertypesSet);
            supertypesDeque.push(simpleTypeMarker);
            while (!supertypesDeque.isEmpty()) {
                if (supertypesSet.size() <= 1000) {
                    SimpleTypeMarker current = supertypesDeque.pop();
                    Intrinsics.checkNotNullExpressionValue(current, "current");
                    if (supertypesSet.add(current)) {
                        SimpleTypeMarker captureFromArguments2 = typeSystemContext.captureFromArguments(current, CaptureStatus.FOR_SUBTYPING);
                        if (captureFromArguments2 == null) {
                            captureFromArguments2 = current;
                        }
                        if (typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(captureFromArguments2), typeConstructorMarker)) {
                            smartList.add(captureFromArguments2);
                            substitutionSupertypePolicy = TypeCheckerState.SupertypesPolicy.None.INSTANCE;
                        } else if (typeSystemContext.argumentsCount(captureFromArguments2) == 0) {
                            substitutionSupertypePolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                        } else {
                            substitutionSupertypePolicy = typeCheckerState.getTypeSystemContext().substitutionSupertypePolicy(captureFromArguments2);
                        }
                        if (!(!Intrinsics.areEqual(substitutionSupertypePolicy, TypeCheckerState.SupertypesPolicy.None.INSTANCE))) {
                            substitutionSupertypePolicy = null;
                        }
                        if (substitutionSupertypePolicy != null) {
                            TypeSystemContext typeSystemContext2 = typeCheckerState.getTypeSystemContext();
                            for (KotlinTypeMarker kotlinTypeMarker : typeSystemContext2.supertypes(typeSystemContext2.typeConstructor(current))) {
                                supertypesDeque.add(substitutionSupertypePolicy.transformType(typeCheckerState, kotlinTypeMarker));
                            }
                        }
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Too many supertypes for type: ");
                    sb.append(simpleTypeMarker);
                    sb.append(". Supertypes = ");
                    joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(supertypesSet, null, null, null, 0, null, null, 63, null);
                    sb.append(joinToString$default);
                    throw new IllegalStateException(sb.toString().toString());
                }
            }
            typeCheckerState.clear();
            return smartList;
        }
    }

    private final List<SimpleTypeMarker> collectAndFilter(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        return selectOnlyPureKotlinSupertypes(typeCheckerState, collectAllSupertypesWithGivenTypeConstructor(typeCheckerState, simpleTypeMarker, typeConstructorMarker));
    }

    private final boolean completeIsSubTypeOf(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z9) {
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        KotlinTypeMarker prepareType = typeCheckerState.prepareType(typeCheckerState.refineType(kotlinTypeMarker));
        KotlinTypeMarker prepareType2 = typeCheckerState.prepareType(typeCheckerState.refineType(kotlinTypeMarker2));
        AbstractTypeChecker abstractTypeChecker = INSTANCE;
        Boolean checkSubtypeForSpecialCases = abstractTypeChecker.checkSubtypeForSpecialCases(typeCheckerState, typeSystemContext.lowerBoundIfFlexible(prepareType), typeSystemContext.upperBoundIfFlexible(prepareType2));
        if (checkSubtypeForSpecialCases != null) {
            boolean booleanValue = checkSubtypeForSpecialCases.booleanValue();
            typeCheckerState.addSubtypeConstraint(prepareType, prepareType2, z9);
            return booleanValue;
        }
        Boolean addSubtypeConstraint = typeCheckerState.addSubtypeConstraint(prepareType, prepareType2, z9);
        return addSubtypeConstraint != null ? addSubtypeConstraint.booleanValue() : abstractTypeChecker.isSubtypeOfForSingleClassifierType(typeCheckerState, typeSystemContext.lowerBoundIfFlexible(prepareType), typeSystemContext.upperBoundIfFlexible(prepareType2));
    }

    private final TypeParameterMarker getTypeParameterForArgumentInBaseIfItEqualToTarget(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        KotlinTypeMarker type;
        int argumentsCount = typeSystemContext.argumentsCount(kotlinTypeMarker);
        int i4 = 0;
        while (true) {
            if (i4 >= argumentsCount) {
                return null;
            }
            TypeArgumentMarker argument = typeSystemContext.getArgument(kotlinTypeMarker, i4);
            boolean z9 = true;
            TypeArgumentMarker typeArgumentMarker = typeSystemContext.isStarProjection(argument) ^ true ? argument : null;
            if (typeArgumentMarker != null && (type = typeSystemContext.getType(typeArgumentMarker)) != null) {
                z9 = (typeSystemContext.isCapturedType(typeSystemContext.lowerBoundIfFlexible(type)) && typeSystemContext.isCapturedType(typeSystemContext.lowerBoundIfFlexible(kotlinTypeMarker2))) ? false : false;
                if (Intrinsics.areEqual(type, kotlinTypeMarker2) || (z9 && Intrinsics.areEqual(typeSystemContext.typeConstructor(type), typeSystemContext.typeConstructor(kotlinTypeMarker2)))) {
                    break;
                }
                TypeParameterMarker typeParameterForArgumentInBaseIfItEqualToTarget = getTypeParameterForArgumentInBaseIfItEqualToTarget(typeSystemContext, type, kotlinTypeMarker2);
                if (typeParameterForArgumentInBaseIfItEqualToTarget != null) {
                    return typeParameterForArgumentInBaseIfItEqualToTarget;
                }
            }
            i4++;
        }
        return typeSystemContext.getParameter(typeSystemContext.typeConstructor(kotlinTypeMarker), i4);
    }

    private final boolean hasNothingSupertype(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker) {
        String joinToString$default;
        TypeCheckerState.SupertypesPolicy supertypesPolicy;
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        TypeConstructorMarker typeConstructor = typeSystemContext.typeConstructor(simpleTypeMarker);
        if (typeSystemContext.isClassTypeConstructor(typeConstructor)) {
            return typeSystemContext.isNothingConstructor(typeConstructor);
        }
        if (typeSystemContext.isNothingConstructor(typeSystemContext.typeConstructor(simpleTypeMarker))) {
            return true;
        }
        typeCheckerState.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = typeCheckerState.getSupertypesDeque();
        Intrinsics.checkNotNull(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = typeCheckerState.getSupertypesSet();
        Intrinsics.checkNotNull(supertypesSet);
        supertypesDeque.push(simpleTypeMarker);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                Intrinsics.checkNotNullExpressionValue(current, "current");
                if (supertypesSet.add(current)) {
                    if (typeSystemContext.isClassType(current)) {
                        supertypesPolicy = TypeCheckerState.SupertypesPolicy.None.INSTANCE;
                    } else {
                        supertypesPolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                    }
                    if (!(!Intrinsics.areEqual(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.INSTANCE))) {
                        supertypesPolicy = null;
                    }
                    if (supertypesPolicy == null) {
                        continue;
                    } else {
                        TypeSystemContext typeSystemContext2 = typeCheckerState.getTypeSystemContext();
                        for (KotlinTypeMarker kotlinTypeMarker : typeSystemContext2.supertypes(typeSystemContext2.typeConstructor(current))) {
                            SimpleTypeMarker transformType = supertypesPolicy.transformType(typeCheckerState, kotlinTypeMarker);
                            if (typeSystemContext.isNothingConstructor(typeSystemContext.typeConstructor(transformType))) {
                                typeCheckerState.clear();
                                return true;
                            }
                            supertypesDeque.add(transformType);
                        }
                        continue;
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Too many supertypes for type: ");
                sb.append(simpleTypeMarker);
                sb.append(". Supertypes = ");
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(supertypesSet, null, null, null, 0, null, null, 63, null);
                sb.append(joinToString$default);
                throw new IllegalStateException(sb.toString().toString());
            }
        }
        typeCheckerState.clear();
        return false;
    }

    private final boolean isCommonDenotableType(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
        return (!typeSystemContext.isDenotable(typeSystemContext.typeConstructor(kotlinTypeMarker)) || typeSystemContext.isDynamic(kotlinTypeMarker) || typeSystemContext.isDefinitelyNotNullType(kotlinTypeMarker) || typeSystemContext.isNotNullTypeParameter(kotlinTypeMarker) || !Intrinsics.areEqual(typeSystemContext.typeConstructor(typeSystemContext.lowerBoundIfFlexible(kotlinTypeMarker)), typeSystemContext.typeConstructor(typeSystemContext.upperBoundIfFlexible(kotlinTypeMarker)))) ? false : true;
    }

    private final boolean isStubTypeSubtypeOfAnother(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        SimpleTypeMarker simpleTypeMarker3;
        SimpleTypeMarker simpleTypeMarker4;
        DefinitelyNotNullTypeMarker asDefinitelyNotNullType = typeSystemContext.asDefinitelyNotNullType(simpleTypeMarker);
        if (asDefinitelyNotNullType == null || (simpleTypeMarker3 = typeSystemContext.original(asDefinitelyNotNullType)) == null) {
            simpleTypeMarker3 = simpleTypeMarker;
        }
        DefinitelyNotNullTypeMarker asDefinitelyNotNullType2 = typeSystemContext.asDefinitelyNotNullType(simpleTypeMarker2);
        if (asDefinitelyNotNullType2 == null || (simpleTypeMarker4 = typeSystemContext.original(asDefinitelyNotNullType2)) == null) {
            simpleTypeMarker4 = simpleTypeMarker2;
        }
        if (typeSystemContext.typeConstructor(simpleTypeMarker3) != typeSystemContext.typeConstructor(simpleTypeMarker4)) {
            return false;
        }
        if (typeSystemContext.isDefinitelyNotNullType(simpleTypeMarker) || !typeSystemContext.isDefinitelyNotNullType(simpleTypeMarker2)) {
            return !typeSystemContext.isMarkedNullable(simpleTypeMarker) || typeSystemContext.isMarkedNullable(simpleTypeMarker2);
        }
        return false;
    }

    public static /* synthetic */ boolean isSubtypeOf$default(AbstractTypeChecker abstractTypeChecker, TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z9, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            z9 = false;
        }
        return abstractTypeChecker.isSubtypeOf(typeCheckerState, kotlinTypeMarker, kotlinTypeMarker2, z9);
    }

    private final boolean isSubtypeOfForSingleClassifierType(TypeCheckerState typeCheckerState, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        int collectionSizeOrDefault;
        Object first;
        int collectionSizeOrDefault2;
        KotlinTypeMarker type;
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (RUN_SLOW_ASSERTIONS) {
            if (!typeSystemContext.isSingleClassifierType(simpleTypeMarker) && !typeSystemContext.isIntersection(typeSystemContext.typeConstructor(simpleTypeMarker))) {
                typeCheckerState.isAllowedTypeVariable(simpleTypeMarker);
            }
            if (!typeSystemContext.isSingleClassifierType(simpleTypeMarker2)) {
                typeCheckerState.isAllowedTypeVariable(simpleTypeMarker2);
            }
        }
        if (AbstractNullabilityChecker.INSTANCE.isPossibleSubtype(typeCheckerState, simpleTypeMarker, simpleTypeMarker2)) {
            AbstractTypeChecker abstractTypeChecker = INSTANCE;
            Boolean checkSubtypeForIntegerLiteralType = abstractTypeChecker.checkSubtypeForIntegerLiteralType(typeCheckerState, typeSystemContext.lowerBoundIfFlexible(simpleTypeMarker), typeSystemContext.upperBoundIfFlexible(simpleTypeMarker2));
            if (checkSubtypeForIntegerLiteralType != null) {
                boolean booleanValue = checkSubtypeForIntegerLiteralType.booleanValue();
                TypeCheckerState.addSubtypeConstraint$default(typeCheckerState, simpleTypeMarker, simpleTypeMarker2, false, 4, null);
                return booleanValue;
            }
            TypeConstructorMarker typeConstructor = typeSystemContext.typeConstructor(simpleTypeMarker2);
            if ((typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(simpleTypeMarker), typeConstructor) && typeSystemContext.parametersCount(typeConstructor) == 0) || typeSystemContext.isAnyConstructor(typeSystemContext.typeConstructor(simpleTypeMarker2))) {
                return true;
            }
            List<SimpleTypeMarker> findCorrespondingSupertypes = abstractTypeChecker.findCorrespondingSupertypes(typeCheckerState, simpleTypeMarker, typeConstructor);
            int i4 = 10;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(findCorrespondingSupertypes, 10);
            ArrayList<SimpleTypeMarker> arrayList = new ArrayList(collectionSizeOrDefault);
            for (SimpleTypeMarker simpleTypeMarker3 : findCorrespondingSupertypes) {
                SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(typeCheckerState.prepareType(simpleTypeMarker3));
                if (asSimpleType != null) {
                    simpleTypeMarker3 = asSimpleType;
                }
                arrayList.add(simpleTypeMarker3);
            }
            int size = arrayList.size();
            if (size != 0) {
                if (size != 1) {
                    ArgumentList argumentList = new ArgumentList(typeSystemContext.parametersCount(typeConstructor));
                    int parametersCount = typeSystemContext.parametersCount(typeConstructor);
                    int i10 = 0;
                    boolean z9 = false;
                    while (i10 < parametersCount) {
                        z9 = z9 || typeSystemContext.getVariance(typeSystemContext.getParameter(typeConstructor, i10)) != TypeVariance.OUT;
                        if (!z9) {
                            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, i4);
                            List<? extends KotlinTypeMarker> arrayList2 = new ArrayList<>(collectionSizeOrDefault2);
                            for (SimpleTypeMarker simpleTypeMarker4 : arrayList) {
                                TypeArgumentMarker argumentOrNull = typeSystemContext.getArgumentOrNull(simpleTypeMarker4, i10);
                                if (argumentOrNull != null) {
                                    if (!(typeSystemContext.getVariance(argumentOrNull) == TypeVariance.INV)) {
                                        argumentOrNull = null;
                                    }
                                    if (argumentOrNull != null && (type = typeSystemContext.getType(argumentOrNull)) != null) {
                                        arrayList2.add(type);
                                    }
                                }
                                throw new IllegalStateException(("Incorrect type: " + simpleTypeMarker4 + ", subType: " + simpleTypeMarker + ", superType: " + simpleTypeMarker2).toString());
                            }
                            argumentList.add(typeSystemContext.asTypeArgument(typeSystemContext.intersectTypes(arrayList2)));
                        }
                        i10++;
                        i4 = 10;
                    }
                    if (z9 || !INSTANCE.isSubtypeForSameConstructor(typeCheckerState, argumentList, simpleTypeMarker2)) {
                        return typeCheckerState.runForkingPoint(new AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4(arrayList, typeCheckerState, typeSystemContext, simpleTypeMarker2));
                    }
                    return true;
                }
                AbstractTypeChecker abstractTypeChecker2 = INSTANCE;
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
                return abstractTypeChecker2.isSubtypeForSameConstructor(typeCheckerState, typeSystemContext.asArgumentList((SimpleTypeMarker) first), simpleTypeMarker2);
            }
            return INSTANCE.hasNothingSupertype(typeCheckerState, simpleTypeMarker);
        }
        return false;
    }

    private final boolean isTypeVariableAgainstStarProjectionForSelfType(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, TypeConstructorMarker typeConstructorMarker) {
        TypeParameterMarker typeParameter;
        SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(kotlinTypeMarker);
        if (asSimpleType instanceof CapturedTypeMarker) {
            CapturedTypeMarker capturedTypeMarker = (CapturedTypeMarker) asSimpleType;
            if (!typeSystemContext.isOldCapturedType(capturedTypeMarker) && typeSystemContext.isStarProjection(typeSystemContext.projection(typeSystemContext.typeConstructor(capturedTypeMarker))) && typeSystemContext.captureStatus(capturedTypeMarker) == CaptureStatus.FOR_SUBTYPING) {
                TypeConstructorMarker typeConstructor = typeSystemContext.typeConstructor(kotlinTypeMarker2);
                TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker = typeConstructor instanceof TypeVariableTypeConstructorMarker ? (TypeVariableTypeConstructorMarker) typeConstructor : null;
                return (typeVariableTypeConstructorMarker == null || (typeParameter = typeSystemContext.getTypeParameter(typeVariableTypeConstructorMarker)) == null || !typeSystemContext.hasRecursiveBounds(typeParameter, typeConstructorMarker)) ? false : true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<SimpleTypeMarker> selectOnlyPureKotlinSupertypes(TypeCheckerState typeCheckerState, List<? extends SimpleTypeMarker> list) {
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            boolean z9 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            TypeArgumentListMarker asArgumentList = typeSystemContext.asArgumentList((SimpleTypeMarker) next);
            int size = typeSystemContext.size(asArgumentList);
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    break;
                }
                if (!(typeSystemContext.asFlexibleType(typeSystemContext.getType(typeSystemContext.get(asArgumentList, i4))) == null)) {
                    z9 = false;
                    break;
                }
                i4++;
            }
            if (z9) {
                arrayList.add(next);
            }
        }
        return arrayList.isEmpty() ^ true ? arrayList : list;
    }

    @h
    public final TypeVariance effectiveVariance(@g TypeVariance declared, @g TypeVariance useSite) {
        Intrinsics.checkNotNullParameter(declared, "declared");
        Intrinsics.checkNotNullParameter(useSite, "useSite");
        TypeVariance typeVariance = TypeVariance.INV;
        if (declared == typeVariance) {
            return useSite;
        }
        if (useSite == typeVariance || declared == useSite) {
            return declared;
        }
        return null;
    }

    public final boolean equalTypes(@g TypeCheckerState state, @g KotlinTypeMarker a10, @g KotlinTypeMarker b10) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        TypeSystemContext typeSystemContext = state.getTypeSystemContext();
        if (a10 == b10) {
            return true;
        }
        AbstractTypeChecker abstractTypeChecker = INSTANCE;
        if (abstractTypeChecker.isCommonDenotableType(typeSystemContext, a10) && abstractTypeChecker.isCommonDenotableType(typeSystemContext, b10)) {
            KotlinTypeMarker prepareType = state.prepareType(state.refineType(a10));
            KotlinTypeMarker prepareType2 = state.prepareType(state.refineType(b10));
            SimpleTypeMarker lowerBoundIfFlexible = typeSystemContext.lowerBoundIfFlexible(prepareType);
            if (!typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(prepareType), typeSystemContext.typeConstructor(prepareType2))) {
                return false;
            }
            if (typeSystemContext.argumentsCount(lowerBoundIfFlexible) == 0) {
                return typeSystemContext.hasFlexibleNullability(prepareType) || typeSystemContext.hasFlexibleNullability(prepareType2) || typeSystemContext.isMarkedNullable(lowerBoundIfFlexible) == typeSystemContext.isMarkedNullable(typeSystemContext.lowerBoundIfFlexible(prepareType2));
            }
        }
        return isSubtypeOf$default(abstractTypeChecker, state, a10, b10, false, 8, null) && isSubtypeOf$default(abstractTypeChecker, state, b10, a10, false, 8, null);
    }

    @g
    public final List<SimpleTypeMarker> findCorrespondingSupertypes(@g TypeCheckerState state, @g SimpleTypeMarker subType, @g TypeConstructorMarker superConstructor) {
        String joinToString$default;
        TypeCheckerState.SupertypesPolicy supertypesPolicy;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superConstructor, "superConstructor");
        TypeSystemContext typeSystemContext = state.getTypeSystemContext();
        if (typeSystemContext.isClassType(subType)) {
            return INSTANCE.collectAndFilter(state, subType, superConstructor);
        }
        if (!typeSystemContext.isClassTypeConstructor(superConstructor) && !typeSystemContext.isIntegerLiteralTypeConstructor(superConstructor)) {
            return INSTANCE.collectAllSupertypesWithGivenTypeConstructor(state, subType, superConstructor);
        }
        SmartList<SimpleTypeMarker> smartList = new SmartList();
        state.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = state.getSupertypesDeque();
        Intrinsics.checkNotNull(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = state.getSupertypesSet();
        Intrinsics.checkNotNull(supertypesSet);
        supertypesDeque.push(subType);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                Intrinsics.checkNotNullExpressionValue(current, "current");
                if (supertypesSet.add(current)) {
                    if (typeSystemContext.isClassType(current)) {
                        smartList.add(current);
                        supertypesPolicy = TypeCheckerState.SupertypesPolicy.None.INSTANCE;
                    } else {
                        supertypesPolicy = TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                    }
                    if (!(!Intrinsics.areEqual(supertypesPolicy, TypeCheckerState.SupertypesPolicy.None.INSTANCE))) {
                        supertypesPolicy = null;
                    }
                    if (supertypesPolicy != null) {
                        TypeSystemContext typeSystemContext2 = state.getTypeSystemContext();
                        for (KotlinTypeMarker kotlinTypeMarker : typeSystemContext2.supertypes(typeSystemContext2.typeConstructor(current))) {
                            supertypesDeque.add(supertypesPolicy.transformType(state, kotlinTypeMarker));
                        }
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Too many supertypes for type: ");
                sb.append(subType);
                sb.append(". Supertypes = ");
                joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(supertypesSet, null, null, null, 0, null, null, 63, null);
                sb.append(joinToString$default);
                throw new IllegalStateException(sb.toString().toString());
            }
        }
        state.clear();
        ArrayList arrayList = new ArrayList();
        for (SimpleTypeMarker it : smartList) {
            AbstractTypeChecker abstractTypeChecker = INSTANCE;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, abstractTypeChecker.collectAndFilter(state, it, superConstructor));
        }
        return arrayList;
    }

    public final boolean isSubtypeForSameConstructor(@g TypeCheckerState typeCheckerState, @g TypeArgumentListMarker capturedSubArguments, @g SimpleTypeMarker superType) {
        int i4;
        int i10;
        boolean equalTypes;
        int i11;
        Intrinsics.checkNotNullParameter(typeCheckerState, "<this>");
        Intrinsics.checkNotNullParameter(capturedSubArguments, "capturedSubArguments");
        Intrinsics.checkNotNullParameter(superType, "superType");
        TypeSystemContext typeSystemContext = typeCheckerState.getTypeSystemContext();
        TypeConstructorMarker typeConstructor = typeSystemContext.typeConstructor(superType);
        int size = typeSystemContext.size(capturedSubArguments);
        int parametersCount = typeSystemContext.parametersCount(typeConstructor);
        if (size == parametersCount && size == typeSystemContext.argumentsCount(superType)) {
            for (int i12 = 0; i12 < parametersCount; i12++) {
                TypeArgumentMarker argument = typeSystemContext.getArgument(superType, i12);
                if (!typeSystemContext.isStarProjection(argument)) {
                    KotlinTypeMarker type = typeSystemContext.getType(argument);
                    TypeArgumentMarker typeArgumentMarker = typeSystemContext.get(capturedSubArguments, i12);
                    typeSystemContext.getVariance(typeArgumentMarker);
                    TypeVariance typeVariance = TypeVariance.INV;
                    KotlinTypeMarker type2 = typeSystemContext.getType(typeArgumentMarker);
                    AbstractTypeChecker abstractTypeChecker = INSTANCE;
                    TypeVariance effectiveVariance = abstractTypeChecker.effectiveVariance(typeSystemContext.getVariance(typeSystemContext.getParameter(typeConstructor, i12)), typeSystemContext.getVariance(argument));
                    if (effectiveVariance == null) {
                        return typeCheckerState.isErrorTypeEqualsToAnything();
                    }
                    if (effectiveVariance == typeVariance && (abstractTypeChecker.isTypeVariableAgainstStarProjectionForSelfType(typeSystemContext, type2, type, typeConstructor) || abstractTypeChecker.isTypeVariableAgainstStarProjectionForSelfType(typeSystemContext, type, type2, typeConstructor))) {
                        continue;
                    } else {
                        i4 = typeCheckerState.argumentsDepth;
                        if (i4 <= 100) {
                            i10 = typeCheckerState.argumentsDepth;
                            typeCheckerState.argumentsDepth = i10 + 1;
                            int i13 = WhenMappings.$EnumSwitchMapping$0[effectiveVariance.ordinal()];
                            if (i13 == 1) {
                                equalTypes = abstractTypeChecker.equalTypes(typeCheckerState, type2, type);
                            } else if (i13 == 2) {
                                equalTypes = isSubtypeOf$default(abstractTypeChecker, typeCheckerState, type2, type, false, 8, null);
                            } else if (i13 != 3) {
                                throw new NoWhenBranchMatchedException();
                            } else {
                                equalTypes = isSubtypeOf$default(abstractTypeChecker, typeCheckerState, type, type2, false, 8, null);
                            }
                            i11 = typeCheckerState.argumentsDepth;
                            typeCheckerState.argumentsDepth = i11 - 1;
                            if (!equalTypes) {
                                return false;
                            }
                        } else {
                            throw new IllegalStateException(("Arguments depth is too high. Some related argument: " + type2).toString());
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    @JvmOverloads
    public final boolean isSubtypeOf(@g TypeCheckerState state, @g KotlinTypeMarker subType, @g KotlinTypeMarker superType) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        return isSubtypeOf$default(this, state, subType, superType, false, 8, null);
    }

    @JvmOverloads
    public final boolean isSubtypeOf(@g TypeCheckerState state, @g KotlinTypeMarker subType, @g KotlinTypeMarker superType, boolean z9) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(subType, "subType");
        Intrinsics.checkNotNullParameter(superType, "superType");
        if (subType == superType) {
            return true;
        }
        if (state.customIsSubtypeOf(subType, superType)) {
            return completeIsSubTypeOf(state, subType, superType, z9);
        }
        return false;
    }
}
