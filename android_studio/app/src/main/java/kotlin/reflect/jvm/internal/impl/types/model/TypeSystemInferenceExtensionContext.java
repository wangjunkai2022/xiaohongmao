package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import m8.g;
import m8.h;

/* compiled from: TypeSystemContext.kt */
/* loaded from: classes4.dex */
public interface TypeSystemInferenceExtensionContext extends TypeSystemCommonSuperTypesContext, TypeSystemContext {

    /* compiled from: TypeSystemContext.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @h
        public static List<SimpleTypeMarker> fastCorrespondingSupertypes(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g SimpleTypeMarker receiver, @g TypeConstructorMarker constructor) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(constructor, "constructor");
            return TypeSystemContext.DefaultImpls.fastCorrespondingSupertypes(typeSystemInferenceExtensionContext, receiver, constructor);
        }

        @g
        public static TypeArgumentMarker get(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g TypeArgumentListMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.get(typeSystemInferenceExtensionContext, receiver, i4);
        }

        @h
        public static TypeArgumentMarker getArgumentOrNull(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g SimpleTypeMarker receiver, int i4) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.getArgumentOrNull(typeSystemInferenceExtensionContext, receiver, i4);
        }

        public static boolean hasFlexibleNullability(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.hasFlexibleNullability(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isCapturedType(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isCapturedType(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isClassType(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isClassType(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isDefinitelyNotNullType(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isDefinitelyNotNullType(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isDynamic(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isDynamic(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isIntegerLiteralType(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g SimpleTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isIntegerLiteralType(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isMarkedNullable(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isMarkedNullable(typeSystemInferenceExtensionContext, receiver);
        }

        public static boolean isNothing(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.isNothing(typeSystemInferenceExtensionContext, receiver);
        }

        @g
        public static SimpleTypeMarker lowerBoundIfFlexible(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.lowerBoundIfFlexible(typeSystemInferenceExtensionContext, receiver);
        }

        public static int size(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g TypeArgumentListMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.size(typeSystemInferenceExtensionContext, receiver);
        }

        @g
        public static TypeConstructorMarker typeConstructor(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.typeConstructor(typeSystemInferenceExtensionContext, receiver);
        }

        @g
        public static SimpleTypeMarker upperBoundIfFlexible(@g TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, @g KotlinTypeMarker receiver) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            return TypeSystemContext.DefaultImpls.upperBoundIfFlexible(typeSystemInferenceExtensionContext, receiver);
        }
    }
}
