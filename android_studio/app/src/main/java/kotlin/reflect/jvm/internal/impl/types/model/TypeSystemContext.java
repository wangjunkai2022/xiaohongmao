package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import m8.g;
import m8.h;

/* compiled from: TypeSystemContext.kt */
/* loaded from: classes4.dex */
public interface TypeSystemContext extends TypeSystemOptimizationContext {

    /* compiled from: TypeSystemContext.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static List<SimpleTypeMarker> fastCorrespondingSupertypes(@g TypeSystemContext typeSystemContext, @g SimpleTypeMarker receiver, @g TypeConstructorMarker constructor) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(constructor, "constructor");
            return null;
        }

        @g
        public static TypeArgumentMarker get(@g TypeSystemContext typeSystemContext, @g TypeArgumentListMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return typeSystemContext.getArgument((KotlinTypeMarker) receiver, i4);
            }
            if (receiver instanceof ArgumentList) {
                TypeArgumentMarker typeArgumentMarker = ((ArgumentList) receiver).get(i4);
                Intrinsics.checkNotNullExpressionValue(typeArgumentMarker, "get(index)");
                return typeArgumentMarker;
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @h
        public static TypeArgumentMarker getArgumentOrNull(@g TypeSystemContext typeSystemContext, @g SimpleTypeMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            boolean z9 = false;
            if (i4 >= 0 && i4 < typeSystemContext.argumentsCount(receiver)) {
                z9 = true;
            }
            if (z9) {
                return typeSystemContext.getArgument(receiver, i4);
            }
            return null;
        }

        public static boolean hasFlexibleNullability(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return typeSystemContext.isMarkedNullable(typeSystemContext.lowerBoundIfFlexible(receiver)) != typeSystemContext.isMarkedNullable(typeSystemContext.upperBoundIfFlexible(receiver));
        }

        public static boolean isCapturedType(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            return (asSimpleType != null ? typeSystemContext.asCapturedType(asSimpleType) : null) != null;
        }

        public static boolean isClassType(@g TypeSystemContext typeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return typeSystemContext.isClassTypeConstructor(typeSystemContext.typeConstructor(receiver));
        }

        public static boolean isDefinitelyNotNullType(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            return (asSimpleType != null ? typeSystemContext.asDefinitelyNotNullType(asSimpleType) : null) != null;
        }

        public static boolean isDynamic(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            return (asFlexibleType != null ? typeSystemContext.asDynamicType(asFlexibleType) : null) != null;
        }

        public static boolean isIntegerLiteralType(@g TypeSystemContext typeSystemContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return typeSystemContext.isIntegerLiteralTypeConstructor(typeSystemContext.typeConstructor(receiver));
        }

        public static boolean isMarkedNullable(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return (receiver instanceof SimpleTypeMarker) && typeSystemContext.isMarkedNullable((SimpleTypeMarker) receiver);
        }

        public static boolean isNothing(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return typeSystemContext.isNothingConstructor(typeSystemContext.typeConstructor(receiver)) && !typeSystemContext.isNullableType(receiver);
        }

        @g
        public static SimpleTypeMarker lowerBoundIfFlexible(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            SimpleTypeMarker lowerBound;
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            if (asFlexibleType == null || (lowerBound = typeSystemContext.lowerBound(asFlexibleType)) == null) {
                SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
                Intrinsics.checkNotNull(asSimpleType);
                return asSimpleType;
            }
            return lowerBound;
        }

        public static int size(@g TypeSystemContext typeSystemContext, @g TypeArgumentListMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return typeSystemContext.argumentsCount((KotlinTypeMarker) receiver);
            }
            if (receiver instanceof ArgumentList) {
                return ((ArgumentList) receiver).size();
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + Reflection.getOrCreateKotlinClass(receiver.getClass())).toString());
        }

        @g
        public static TypeConstructorMarker typeConstructor(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            if (asSimpleType == null) {
                asSimpleType = typeSystemContext.lowerBoundIfFlexible(receiver);
            }
            return typeSystemContext.typeConstructor(asSimpleType);
        }

        @g
        public static SimpleTypeMarker upperBoundIfFlexible(@g TypeSystemContext typeSystemContext, @g KotlinTypeMarker receiver) {
            SimpleTypeMarker upperBound;
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            if (asFlexibleType == null || (upperBound = typeSystemContext.upperBound(asFlexibleType)) == null) {
                SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
                Intrinsics.checkNotNull(asSimpleType);
                return asSimpleType;
            }
            return upperBound;
        }
    }

    boolean areEqualTypeConstructors(@g TypeConstructorMarker typeConstructorMarker, @g TypeConstructorMarker typeConstructorMarker2);

    int argumentsCount(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    TypeArgumentListMarker asArgumentList(@g SimpleTypeMarker simpleTypeMarker);

    @h
    CapturedTypeMarker asCapturedType(@g SimpleTypeMarker simpleTypeMarker);

    @h
    DefinitelyNotNullTypeMarker asDefinitelyNotNullType(@g SimpleTypeMarker simpleTypeMarker);

    @h
    DynamicTypeMarker asDynamicType(@g FlexibleTypeMarker flexibleTypeMarker);

    @h
    FlexibleTypeMarker asFlexibleType(@g KotlinTypeMarker kotlinTypeMarker);

    @h
    RawTypeMarker asRawType(@g FlexibleTypeMarker flexibleTypeMarker);

    @h
    SimpleTypeMarker asSimpleType(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    TypeArgumentMarker asTypeArgument(@g KotlinTypeMarker kotlinTypeMarker);

    @h
    SimpleTypeMarker captureFromArguments(@g SimpleTypeMarker simpleTypeMarker, @g CaptureStatus captureStatus);

    @g
    CaptureStatus captureStatus(@g CapturedTypeMarker capturedTypeMarker);

    @h
    List<SimpleTypeMarker> fastCorrespondingSupertypes(@g SimpleTypeMarker simpleTypeMarker, @g TypeConstructorMarker typeConstructorMarker);

    @g
    TypeArgumentMarker get(@g TypeArgumentListMarker typeArgumentListMarker, int i4);

    @g
    TypeArgumentMarker getArgument(@g KotlinTypeMarker kotlinTypeMarker, int i4);

    @h
    TypeArgumentMarker getArgumentOrNull(@g SimpleTypeMarker simpleTypeMarker, int i4);

    @g
    List<TypeArgumentMarker> getArguments(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    TypeParameterMarker getParameter(@g TypeConstructorMarker typeConstructorMarker, int i4);

    @g
    List<TypeParameterMarker> getParameters(@g TypeConstructorMarker typeConstructorMarker);

    @g
    KotlinTypeMarker getType(@g TypeArgumentMarker typeArgumentMarker);

    @h
    TypeParameterMarker getTypeParameter(@g TypeVariableTypeConstructorMarker typeVariableTypeConstructorMarker);

    @h
    TypeParameterMarker getTypeParameterClassifier(@g TypeConstructorMarker typeConstructorMarker);

    @g
    List<KotlinTypeMarker> getUpperBounds(@g TypeParameterMarker typeParameterMarker);

    @g
    TypeVariance getVariance(@g TypeArgumentMarker typeArgumentMarker);

    @g
    TypeVariance getVariance(@g TypeParameterMarker typeParameterMarker);

    boolean hasFlexibleNullability(@g KotlinTypeMarker kotlinTypeMarker);

    boolean hasRecursiveBounds(@g TypeParameterMarker typeParameterMarker, @h TypeConstructorMarker typeConstructorMarker);

    @g
    KotlinTypeMarker intersectTypes(@g List<? extends KotlinTypeMarker> list);

    boolean isAnyConstructor(@g TypeConstructorMarker typeConstructorMarker);

    boolean isCapturedType(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isClassType(@g SimpleTypeMarker simpleTypeMarker);

    boolean isClassTypeConstructor(@g TypeConstructorMarker typeConstructorMarker);

    boolean isCommonFinalClassConstructor(@g TypeConstructorMarker typeConstructorMarker);

    boolean isDefinitelyNotNullType(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isDenotable(@g TypeConstructorMarker typeConstructorMarker);

    boolean isDynamic(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isError(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isIntegerLiteralType(@g SimpleTypeMarker simpleTypeMarker);

    boolean isIntegerLiteralTypeConstructor(@g TypeConstructorMarker typeConstructorMarker);

    boolean isIntersection(@g TypeConstructorMarker typeConstructorMarker);

    boolean isMarkedNullable(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isMarkedNullable(@g SimpleTypeMarker simpleTypeMarker);

    boolean isNotNullTypeParameter(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isNothing(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isNothingConstructor(@g TypeConstructorMarker typeConstructorMarker);

    boolean isNullableType(@g KotlinTypeMarker kotlinTypeMarker);

    boolean isOldCapturedType(@g CapturedTypeMarker capturedTypeMarker);

    boolean isPrimitiveType(@g SimpleTypeMarker simpleTypeMarker);

    boolean isProjectionNotNull(@g CapturedTypeMarker capturedTypeMarker);

    boolean isSingleClassifierType(@g SimpleTypeMarker simpleTypeMarker);

    boolean isStarProjection(@g TypeArgumentMarker typeArgumentMarker);

    boolean isStubType(@g SimpleTypeMarker simpleTypeMarker);

    boolean isStubTypeForBuilderInference(@g SimpleTypeMarker simpleTypeMarker);

    boolean isTypeVariableType(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    SimpleTypeMarker lowerBound(@g FlexibleTypeMarker flexibleTypeMarker);

    @g
    SimpleTypeMarker lowerBoundIfFlexible(@g KotlinTypeMarker kotlinTypeMarker);

    @h
    KotlinTypeMarker lowerType(@g CapturedTypeMarker capturedTypeMarker);

    @g
    KotlinTypeMarker makeDefinitelyNotNullOrNotNull(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    SimpleTypeMarker original(@g DefinitelyNotNullTypeMarker definitelyNotNullTypeMarker);

    int parametersCount(@g TypeConstructorMarker typeConstructorMarker);

    @g
    Collection<KotlinTypeMarker> possibleIntegerTypes(@g SimpleTypeMarker simpleTypeMarker);

    @g
    TypeArgumentMarker projection(@g CapturedTypeConstructorMarker capturedTypeConstructorMarker);

    int size(@g TypeArgumentListMarker typeArgumentListMarker);

    @g
    TypeCheckerState.SupertypesPolicy substitutionSupertypePolicy(@g SimpleTypeMarker simpleTypeMarker);

    @g
    Collection<KotlinTypeMarker> supertypes(@g TypeConstructorMarker typeConstructorMarker);

    @g
    CapturedTypeConstructorMarker typeConstructor(@g CapturedTypeMarker capturedTypeMarker);

    @g
    TypeConstructorMarker typeConstructor(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    TypeConstructorMarker typeConstructor(@g SimpleTypeMarker simpleTypeMarker);

    @g
    SimpleTypeMarker upperBound(@g FlexibleTypeMarker flexibleTypeMarker);

    @g
    SimpleTypeMarker upperBoundIfFlexible(@g KotlinTypeMarker kotlinTypeMarker);

    @g
    KotlinTypeMarker withNullability(@g KotlinTypeMarker kotlinTypeMarker, boolean z9);

    @g
    SimpleTypeMarker withNullability(@g SimpleTypeMarker simpleTypeMarker, boolean z9);
}
