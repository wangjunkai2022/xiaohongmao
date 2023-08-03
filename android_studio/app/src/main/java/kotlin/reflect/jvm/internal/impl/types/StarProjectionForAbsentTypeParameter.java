package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import m8.g;

/* compiled from: StarProjectionImpl.kt */
/* loaded from: classes4.dex */
public final class StarProjectionForAbsentTypeParameter extends TypeProjectionBase {
    @g
    private final KotlinType nullableAnyType;

    public StarProjectionForAbsentTypeParameter(@g KotlinBuiltIns kotlinBuiltIns) {
        Intrinsics.checkNotNullParameter(kotlinBuiltIns, "kotlinBuiltIns");
        SimpleType nullableAnyType = kotlinBuiltIns.getNullableAnyType();
        Intrinsics.checkNotNullExpressionValue(nullableAnyType, "kotlinBuiltIns.nullableAnyType");
        this.nullableAnyType = nullableAnyType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public Variance getProjectionKind() {
        return Variance.OUT_VARIANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public KotlinType getType() {
        return this.nullableAnyType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    public boolean isStarProjection() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjection
    @g
    public TypeProjection refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}
