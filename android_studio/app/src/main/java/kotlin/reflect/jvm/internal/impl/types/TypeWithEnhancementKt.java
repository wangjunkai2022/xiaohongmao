package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: TypeWithEnhancement.kt */
/* loaded from: classes4.dex */
public final class TypeWithEnhancementKt {
    @h
    public static final KotlinType getEnhancement(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        if (kotlinType instanceof TypeWithEnhancement) {
            return ((TypeWithEnhancement) kotlinType).getEnhancement();
        }
        return null;
    }

    @g
    public static final UnwrappedType inheritEnhancement(@g UnwrappedType unwrappedType, @g KotlinType origin, @g Function1<? super KotlinType, ? extends KotlinType> transform) {
        Intrinsics.checkNotNullParameter(unwrappedType, "<this>");
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(transform, "transform");
        KotlinType enhancement = getEnhancement(origin);
        return wrapEnhancement(unwrappedType, enhancement != null ? transform.invoke(enhancement) : null);
    }

    @g
    public static final UnwrappedType wrapEnhancement(@g UnwrappedType unwrappedType, @h KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(unwrappedType, "<this>");
        if (unwrappedType instanceof TypeWithEnhancement) {
            return wrapEnhancement(((TypeWithEnhancement) unwrappedType).getOrigin(), kotlinType);
        }
        if (kotlinType == null || Intrinsics.areEqual(kotlinType, unwrappedType)) {
            return unwrappedType;
        }
        if (unwrappedType instanceof SimpleType) {
            return new SimpleTypeWithEnhancement((SimpleType) unwrappedType, kotlinType);
        }
        if (unwrappedType instanceof FlexibleType) {
            return new FlexibleTypeWithEnhancement((FlexibleType) unwrappedType, kotlinType);
        }
        throw new NoWhenBranchMatchedException();
    }

    @g
    public static final UnwrappedType inheritEnhancement(@g UnwrappedType unwrappedType, @g KotlinType origin) {
        Intrinsics.checkNotNullParameter(unwrappedType, "<this>");
        Intrinsics.checkNotNullParameter(origin, "origin");
        return wrapEnhancement(unwrappedType, getEnhancement(origin));
    }
}
