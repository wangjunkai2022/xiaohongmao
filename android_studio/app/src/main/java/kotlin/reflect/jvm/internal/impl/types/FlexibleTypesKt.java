package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: flexibleTypes.kt */
/* loaded from: classes4.dex */
public final class FlexibleTypesKt {
    @g
    public static final FlexibleType asFlexibleType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        Intrinsics.checkNotNull(unwrap, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
        return (FlexibleType) unwrap;
    }

    public static final boolean isFlexible(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof FlexibleType;
    }

    @g
    public static final SimpleType lowerIfFlexible(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getLowerBound();
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        throw new NoWhenBranchMatchedException();
    }

    @g
    public static final SimpleType upperIfFlexible(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            return ((FlexibleType) unwrap).getUpperBound();
        }
        if (unwrap instanceof SimpleType) {
            return (SimpleType) unwrap;
        }
        throw new NoWhenBranchMatchedException();
    }
}
