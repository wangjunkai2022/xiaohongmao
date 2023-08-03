package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CapturedTypeApproximation.kt */
/* loaded from: classes4.dex */
public final class TypeArgument {
    @g
    private final KotlinType inProjection;
    @g
    private final KotlinType outProjection;
    @g
    private final TypeParameterDescriptor typeParameter;

    public TypeArgument(@g TypeParameterDescriptor typeParameter, @g KotlinType inProjection, @g KotlinType outProjection) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        Intrinsics.checkNotNullParameter(inProjection, "inProjection");
        Intrinsics.checkNotNullParameter(outProjection, "outProjection");
        this.typeParameter = typeParameter;
        this.inProjection = inProjection;
        this.outProjection = outProjection;
    }

    @g
    public final KotlinType getInProjection() {
        return this.inProjection;
    }

    @g
    public final KotlinType getOutProjection() {
        return this.outProjection;
    }

    @g
    public final TypeParameterDescriptor getTypeParameter() {
        return this.typeParameter;
    }

    public final boolean isConsistent() {
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(this.inProjection, this.outProjection);
    }
}
