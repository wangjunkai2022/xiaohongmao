package kotlin.reflect.jvm.internal.impl.types.model;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import m8.g;

/* compiled from: TypeSystemContext.kt */
/* loaded from: classes4.dex */
public final class TypeSystemContextKt {

    /* compiled from: TypeSystemContext.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.INVARIANT.ordinal()] = 1;
            iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @g
    public static final TypeVariance convertVariance(@g Variance variance) {
        Intrinsics.checkNotNullParameter(variance, "<this>");
        int i4 = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return TypeVariance.OUT;
                }
                throw new NoWhenBranchMatchedException();
            }
            return TypeVariance.IN;
        }
        return TypeVariance.INV;
    }
}
