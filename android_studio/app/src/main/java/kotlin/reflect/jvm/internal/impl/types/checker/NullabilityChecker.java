package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.AbstractNullabilityChecker;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.g;

/* compiled from: NewKotlinTypeChecker.kt */
/* loaded from: classes4.dex */
public final class NullabilityChecker {
    @g
    public static final NullabilityChecker INSTANCE = new NullabilityChecker();

    private NullabilityChecker() {
    }

    public final boolean isSubtypeOfAny(@g UnwrappedType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return AbstractNullabilityChecker.INSTANCE.hasNotNullSupertype(SimpleClassicTypeSystemContext.INSTANCE.newTypeCheckerState(false, true), FlexibleTypesKt.lowerIfFlexible(type), TypeCheckerState.SupertypesPolicy.LowerIfFlexible.INSTANCE);
    }
}
